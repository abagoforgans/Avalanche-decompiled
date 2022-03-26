contract main {




// =====================  Runtime code  =====================


#
#  - sub_46a519be(?)
#
mapping of uint8 stor0;

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function addAddressToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'NOT_ALLOWED'
    if not stor0[address(arg1)]:
        stor0[address(arg1)] = 1
}

function sub_bb940ed4(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'NOT_ALLOWED'
    require 0 < ('cd', 36).length
    require ('cd', 100).length - 1 < ('cd', 100).length
    if address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]) != address(('cd', 36)[0]):
        revert with 0, 'not circular'
    require 0 < ('cd', 100).length
    require ('cd', 36).length - 1 < ('cd', 36).length
    if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != address(('cd', 100)[0]):
        revert with 0, 'out not in'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = cd[132]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _767 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _774 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + 265 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * ('cd', 36).length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(64 * ('cd', 36).length) + 164], address(_774)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 271 len 21]
                if address(_767) == address(_767):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * ('cd', 36).length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(64 * ('cd', 36).length) + 164], address(_774)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + 271 len 21]
                if address(_774) == address(_767):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + 268 len 24]
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            idx = idx + 1
            continue 
        if ('cd', 36).length - 1 < mem[(32 * ('cd', 36).length) + 128]:
            _772 = mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + 160]
            mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            if ('cd', 100).length < 2:
                revert with 0, 'UniswapV2Library: INVALID_PATH'
            require ('cd', 100).length <= test266151307()
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = ('cd', 100).length
            if not ('cd', 100).length:
                if 0 < ('cd', 100).length:
                    mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _772
                    idx = 0
                    while idx < ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        _1509 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
                        require idx + 1 < ('cd', 100).length
                        _1521 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                            revert with 0, 
                                        32,
                                        37,
                                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                        mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 329 len 27]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                            if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1521)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                            if address(_1509) == address(_1509):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        else:
                            if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1521)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                            if address(_1521) == address(_1509):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length - 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]:
                        return memory
                          from (32 * ('cd', 100).length - 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224
                           len 32
            else:
                mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
                if 0 < ('cd', 100).length:
                    mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _772
                    idx = 0
                    while idx < ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        _1512 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
                        require idx + 1 < ('cd', 100).length
                        _1523 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                            revert with 0, 
                                        32,
                                        37,
                                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                        mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 329 len 27]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                            if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1523)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                            if address(_1512) == address(_1512):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        else:
                            if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1523)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                            if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                            if address(_1523) == address(_1512):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                                if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                                    require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                                    mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length - 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]:
                        return memory
                          from (32 * ('cd', 100).length - 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224
                           len 32
        revert
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 160] = cd[132]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require idx < ('cd', 36).length
        _770 = mem[(32 * idx) + 128]
        require idx + 1 < ('cd', 36).length
        _777 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 
                        32,
                        37,
                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(64 * ('cd', 36).length) + 265 len 27]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            mem[(64 * ('cd', 36).length) + 164] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[(64 * ('cd', 36).length) + 164], address(_777)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                revert with 0, 
                            32,
                            43,
                            0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 271 len 21]
            if address(_770) == address(_770):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            mem[(64 * ('cd', 36).length) + 164] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[(64 * ('cd', 36).length) + 164], address(_777)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= 0:
                revert with 0, 
                            32,
                            43,
                            0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(64 * ('cd', 36).length) + 271 len 21]
            if address(_777) == address(_770):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(64 * ('cd', 36).length) + 268 len 24]
                if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
        idx = idx + 1
        continue 
    require ('cd', 36).length - 1 < mem[(32 * ('cd', 36).length) + 128]
    _775 = mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + 160]
    mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 100).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require ('cd', 100).length <= test266151307()
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = ('cd', 100).length
    if not ('cd', 100).length:
        require 0 < ('cd', 100).length
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _775
        idx = 0
        while idx < ('cd', 100).length - 1:
            require idx < ('cd', 100).length
            _1515 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
            require idx + 1 < ('cd', 100).length
            _1525 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                revert with 0, 
                            32,
                            37,
                            0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 329 len 27]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1525)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                if address(_1515) == address(_1515):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1525)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                if address(_1525) == address(_1515):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
            idx = idx + 1
            continue 
    else:
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
        require 0 < ('cd', 100).length
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _775
        idx = 0
        while idx < ('cd', 100).length - 1:
            require idx < ('cd', 100).length
            _1518 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
            require idx + 1 < ('cd', 100).length
            _1527 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                revert with 0, 
                            32,
                            37,
                            0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 329 len 27]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1527)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                if address(_1518) == address(_1518):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228] = mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1527)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x64556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 335 len 21]
                if address(_1527) == address(_1518):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 332 len 24]
                    if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] / 997 != mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
                        require idx + 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx + 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224])
            idx = idx + 1
            continue 
    require ('cd', 100).length - 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224] = mem[(32 * ('cd', 100).length - 1) + (64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224]
    return memory
      from (64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224
       len 32
}



}
