contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f2d6d9a(?)
#  - sub_5d585a90(?)
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

function withdrawEth_cfq() payable {
    if not stor0[msg.sender]:
        revert with 0, 'NOT_ALLOWED'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function withdrawErc20(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'NOT_ALLOWED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            _811 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _818 = mem[(32 * idx + 1) + 128]
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_818)
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
                if address(_811) == address(_811):
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_818)
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
                if address(_818) == address(_811):
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
        _816 = mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 100).length
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        if ('cd', 100).length < 2:
            revert with 0, 'UniswapV2Library: INVALID_PATH'
        require ('cd', 100).length <= test266151307()
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = ('cd', 100).length
        if not ('cd', 100).length:
            require 0 < ('cd', 100).length
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _816
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < ('cd', 100).length
                _1598 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
                require idx + 1 < ('cd', 100).length
                _1614 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1614)
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
                    if address(_1598) == address(_1598):
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1614)
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
                    if address(_1614) == address(_1598):
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
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _816
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < ('cd', 100).length
                _1602 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
                require idx + 1 < ('cd', 100).length
                _1617 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1617)
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
                    if address(_1602) == address(_1602):
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1617)
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
                    if address(_1617) == address(_1602):
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
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = cd[132]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _814 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _821 = mem[(32 * idx + 1) + 128]
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_821)
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
                if address(_814) == address(_814):
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_821)
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
                if address(_821) == address(_814):
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
        _819 = mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 100).length
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        if ('cd', 100).length < 2:
            revert with 0, 'UniswapV2Library: INVALID_PATH'
        require ('cd', 100).length <= test266151307()
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = ('cd', 100).length
        if not ('cd', 100).length:
            require 0 < ('cd', 100).length
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _819
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < ('cd', 100).length
                _1606 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
                require idx + 1 < ('cd', 100).length
                _1620 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1620)
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
                    if address(_1606) == address(_1606):
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1620)
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
                    if address(_1620) == address(_1606):
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
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = _819
            idx = 0
            while idx < ('cd', 100).length - 1:
                require idx < ('cd', 100).length
                _1610 = mem[(32 * idx) + (64 * ('cd', 36).length) + 192]
                require idx + 1 < ('cd', 100).length
                _1623 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 192]
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1623)
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
                    if address(_1610) == address(_1610):
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
                           args mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 228], address(_1623)
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
                    if address(_1623) == address(_1610):
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
    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 224] = 3
    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 256 len 96] = call.data[calldata.size len 96]
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 256] = mem[(32 * ('cd', 36).length) + 160]
    require 1 < mem[(32 * ('cd', 36).length) + 128]
    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 288] = mem[(32 * ('cd', 36).length) + 192]
    require 1 < mem[(64 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192]
    mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 416 len 0] = None
    return Array(len=3, data=mem[(64 * ('cd', 36).length) + (64 * ('cd', 100).length) + 416 len 96])
}

function sub_2cf892c7(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'NOT_ALLOWED'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ('cd', 36).length
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1477 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _1483 = mem[(32 * idx + 1) + 128]
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_1483)
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
                if address(_1477) == address(_1477):
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_1483)
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
                if address(_1483) == address(_1477):
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
        if mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + 160] <= cd[100]:
            revert with 0, 'limit out'
        require 0 < ('cd', 36).length
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 164] = address(('cd', 36)[0])
        mem[(64 * ('cd', 36).length) + 196] = address(('cd', 36)[1])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(('cd', 36)[0]), address(('cd', 36)[1])
        mem[(64 * ('cd', 36).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * ('cd', 36).length) + 128]
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 196] = msg.sender
        mem[(64 * ('cd', 36).length) + 228] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 260] = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = 100
        mem[(64 * ('cd', 36).length) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * ('cd', 36).length) + 292] = 32
        mem[(64 * ('cd', 36).length) + 324] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(('cd', 36)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(64 * ('cd', 36).length) + 356 len 96] = 0, msg.sender, address(ext_call.return_data[0]), mem[(64 * ('cd', 36).length) + 260 len 28]
        mem[(64 * ('cd', 36).length) + 480 len 4] = 0
        call address(('cd', 36)[0]) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 260], 32, Mask(224, 32, 'SafeERC20: low-level call failed') >> 32, mem[(64 * ('cd', 36).length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 36).length:
                mem[64] = (98 * ('cd', 36).length) + 388
                mem[(64 * ('cd', 36).length) + 356] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + 388 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + 388] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + 356]
                    _4136 = mem[(32 * idx) + (64 * ('cd', 36).length) + 388]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + 356]
                    _4159 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 388]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4234 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4159)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4159)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4540 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4540 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4540 + 36] = 0
                                mem[_4540 + 68] = _4234
                                mem[_4540 + 100] = this.address
                                mem[_4540 + 132] = 128
                                mem[_4540 + 164] = mem[_4540]
                                s = 0
                                while s < mem[_4540]:
                                    mem[s + _4540 + 196] = mem[s + _4540 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4540] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4234, address(this.address), 128, mem[_4540 + 164 len mem[_4540] + 32]
                                else:
                                    mem[floor32(mem[_4540]) + _4540 + 196] = mem[floor32(mem[_4540]) + _4540 + -(mem[_4540] % 32) + 228 len mem[_4540] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4234, address(this.address), 128, mem[_4540], mem[_4540 + 196 len floor32(mem[_4540]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4314 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4314)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4136)
                                mem[mem[64] + 36] = address(_4159)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4136), address(_4159)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4859 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4859 + 36] = 0
                                mem[_4859 + 68] = _4234
                                mem[_4859 + 100] = address(ext_call.return_data[0])
                                mem[_4859 + 132] = 128
                                mem[_4859 + 164] = mem[_4859]
                                s = 0
                                while s < mem[_4859]:
                                    mem[s + _4859 + 196] = mem[s + _4859 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4859] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4234, address(ext_call.return_data[0]), 128, mem[_4859 + 164 len mem[_4859] + 32]
                                else:
                                    mem[floor32(mem[_4859]) + _4859 + 196] = mem[floor32(mem[_4859]) + _4859 + -(mem[_4859] % 32) + 228 len mem[_4859] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4234, address(ext_call.return_data[0]), 128, mem[_4859], mem[_4859 + 196 len floor32(mem[_4859]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4159)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4159)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4543 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4543 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4543 + 36] = _4234
                                mem[_4543 + 68] = 0
                                mem[_4543 + 100] = this.address
                                mem[_4543 + 132] = 128
                                mem[_4543 + 164] = mem[_4543]
                                s = 0
                                while s < mem[_4543]:
                                    mem[s + _4543 + 196] = mem[s + _4543 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4543] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4234, 0, address(this.address), 128, mem[_4543 + 164 len mem[_4543] + 32]
                                else:
                                    mem[floor32(mem[_4543]) + _4543 + 196] = mem[floor32(mem[_4543]) + _4543 + -(mem[_4543] % 32) + 228 len mem[_4543] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4234, 0, address(this.address), 128, mem[_4543], mem[_4543 + 196 len floor32(mem[_4543]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4319 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4319)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4136)
                                mem[mem[64] + 36] = address(_4159)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4136), address(_4159)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4863 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4863 + 36] = _4234
                                mem[_4863 + 68] = 0
                                mem[_4863 + 100] = address(ext_call.return_data[0])
                                mem[_4863 + 132] = 128
                                mem[_4863 + 164] = mem[_4863]
                                s = 0
                                while s < mem[_4863]:
                                    mem[s + _4863 + 196] = mem[s + _4863 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4863] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4234, 0, address(ext_call.return_data[0]), 128, mem[_4863 + 164 len mem[_4863] + 32]
                                else:
                                    mem[floor32(mem[_4863]) + _4863 + 196] = mem[floor32(mem[_4863]) + _4863 + -(mem[_4863] % 32) + 228 len mem[_4863] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4234, 0, address(ext_call.return_data[0]), 128, mem[_4863], mem[_4863 + 196 len floor32(mem[_4863]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4235 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4136)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4136)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4546 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4546 + 36] = 0
                                mem[_4546 + 68] = _4235
                                mem[_4546 + 100] = this.address
                                mem[_4546 + 132] = 128
                                mem[_4546 + 164] = mem[_4546]
                                s = 0
                                while s < mem[_4546]:
                                    mem[s + _4546 + 196] = mem[s + _4546 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4546] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4235, address(this.address), 128, mem[_4546 + 164 len mem[_4546] + 32]
                                else:
                                    mem[floor32(mem[_4546]) + _4546 + 196] = mem[floor32(mem[_4546]) + _4546 + -(mem[_4546] % 32) + 228 len mem[_4546] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4235, address(this.address), 128, mem[_4546], mem[_4546 + 196 len floor32(mem[_4546]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4324 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4324)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4159)
                                mem[mem[64] + 36] = address(_4136)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4159), address(_4136)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4867 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4867 + 36] = 0
                                mem[_4867 + 68] = _4235
                                mem[_4867 + 100] = address(ext_call.return_data[0])
                                mem[_4867 + 132] = 128
                                mem[_4867 + 164] = mem[_4867]
                                s = 0
                                while s < mem[_4867]:
                                    mem[s + _4867 + 196] = mem[s + _4867 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4867] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4235, address(ext_call.return_data[0]), 128, mem[_4867 + 164 len mem[_4867] + 32]
                                else:
                                    mem[floor32(mem[_4867]) + _4867 + 196] = mem[floor32(mem[_4867]) + _4867 + -(mem[_4867] % 32) + 228 len mem[_4867] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4235, address(ext_call.return_data[0]), 128, mem[_4867], mem[_4867 + 196 len floor32(mem[_4867]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4136)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4136)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4549 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4549 + 36] = _4235
                                mem[_4549 + 68] = 0
                                mem[_4549 + 100] = this.address
                                mem[_4549 + 132] = 128
                                mem[_4549 + 164] = mem[_4549]
                                s = 0
                                while s < mem[_4549]:
                                    mem[s + _4549 + 196] = mem[s + _4549 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4549] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4235, 0, address(this.address), 128, mem[_4549 + 164 len mem[_4549] + 32]
                                else:
                                    mem[floor32(mem[_4549]) + _4549 + 196] = mem[floor32(mem[_4549]) + _4549 + -(mem[_4549] % 32) + 228 len mem[_4549] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4235, 0, address(this.address), 128, mem[_4549], mem[_4549 + 196 len floor32(mem[_4549]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4329 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4329)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4159)
                                mem[mem[64] + 36] = address(_4136)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4159), address(_4136)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4871 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4871 + 36] = _4235
                                mem[_4871 + 68] = 0
                                mem[_4871 + 100] = address(ext_call.return_data[0])
                                mem[_4871 + 132] = 128
                                mem[_4871 + 164] = mem[_4871]
                                s = 0
                                while s < mem[_4871]:
                                    mem[s + _4871 + 196] = mem[s + _4871 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4871] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4235, 0, address(ext_call.return_data[0]), 128, mem[_4871 + 164 len mem[_4871] + 32]
                                else:
                                    mem[floor32(mem[_4871]) + _4871 + 196] = mem[floor32(mem[_4871]) + _4871 + -(mem[_4871] % 32) + 228 len mem[_4871] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4235, 0, address(ext_call.return_data[0]), 128, mem[_4871], mem[_4871 + 196 len floor32(mem[_4871]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require ('cd', 36).length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x595361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(64 * ('cd', 36).length) + 466 len 14],
                                0,
                                mem[(64 * ('cd', 36).length) + 484 len 4]
                mem[64] = (98 * ('cd', 36).length) + 388
                mem[(64 * ('cd', 36).length) + 356] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + 388 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + 388] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + 356]
                    _4138 = mem[(32 * idx) + (64 * ('cd', 36).length) + 388]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + 356]
                    _4160 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 388]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4236 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4160)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4160)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4552 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4552 + 36] = 0
                                mem[_4552 + 68] = _4236
                                mem[_4552 + 100] = this.address
                                mem[_4552 + 132] = 128
                                mem[_4552 + 164] = mem[_4552]
                                s = 0
                                while s < mem[_4552]:
                                    mem[s + _4552 + 196] = mem[s + _4552 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4552] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4236, address(this.address), 128, mem[_4552 + 164 len mem[_4552] + 32]
                                else:
                                    mem[floor32(mem[_4552]) + _4552 + 196] = mem[floor32(mem[_4552]) + _4552 + -(mem[_4552] % 32) + 228 len mem[_4552] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4236, address(this.address), 128, mem[_4552], mem[_4552 + 196 len floor32(mem[_4552]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4334 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4334)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4138)
                                mem[mem[64] + 36] = address(_4160)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4138), address(_4160)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4875 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4875 + 36] = 0
                                mem[_4875 + 68] = _4236
                                mem[_4875 + 100] = address(ext_call.return_data[0])
                                mem[_4875 + 132] = 128
                                mem[_4875 + 164] = mem[_4875]
                                s = 0
                                while s < mem[_4875]:
                                    mem[s + _4875 + 196] = mem[s + _4875 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4875] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4236, address(ext_call.return_data[0]), 128, mem[_4875 + 164 len mem[_4875] + 32]
                                else:
                                    mem[floor32(mem[_4875]) + _4875 + 196] = mem[floor32(mem[_4875]) + _4875 + -(mem[_4875] % 32) + 228 len mem[_4875] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4236, address(ext_call.return_data[0]), 128, mem[_4875], mem[_4875 + 196 len floor32(mem[_4875]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4160)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4160)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4555 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4555 + 36] = _4236
                                mem[_4555 + 68] = 0
                                mem[_4555 + 100] = this.address
                                mem[_4555 + 132] = 128
                                mem[_4555 + 164] = mem[_4555]
                                s = 0
                                while s < mem[_4555]:
                                    mem[s + _4555 + 196] = mem[s + _4555 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4555] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4236, 0, address(this.address), 128, mem[_4555 + 164 len mem[_4555] + 32]
                                else:
                                    mem[floor32(mem[_4555]) + _4555 + 196] = mem[floor32(mem[_4555]) + _4555 + -(mem[_4555] % 32) + 228 len mem[_4555] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4236, 0, address(this.address), 128, mem[_4555], mem[_4555 + 196 len floor32(mem[_4555]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4339 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4339)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4138)
                                mem[mem[64] + 36] = address(_4160)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4138), address(_4160)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4879 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4879 + 36] = _4236
                                mem[_4879 + 68] = 0
                                mem[_4879 + 100] = address(ext_call.return_data[0])
                                mem[_4879 + 132] = 128
                                mem[_4879 + 164] = mem[_4879]
                                s = 0
                                while s < mem[_4879]:
                                    mem[s + _4879 + 196] = mem[s + _4879 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4879] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4236, 0, address(ext_call.return_data[0]), 128, mem[_4879 + 164 len mem[_4879] + 32]
                                else:
                                    mem[floor32(mem[_4879]) + _4879 + 196] = mem[floor32(mem[_4879]) + _4879 + -(mem[_4879] % 32) + 228 len mem[_4879] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4236, 0, address(ext_call.return_data[0]), 128, mem[_4879], mem[_4879 + 196 len floor32(mem[_4879]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4237 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4138)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4138)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4558 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4558 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4558 + 36] = 0
                                mem[_4558 + 68] = _4237
                                mem[_4558 + 100] = this.address
                                mem[_4558 + 132] = 128
                                mem[_4558 + 164] = mem[_4558]
                                s = 0
                                while s < mem[_4558]:
                                    mem[s + _4558 + 196] = mem[s + _4558 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4558] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4237, address(this.address), 128, mem[_4558 + 164 len mem[_4558] + 32]
                                else:
                                    mem[floor32(mem[_4558]) + _4558 + 196] = mem[floor32(mem[_4558]) + _4558 + -(mem[_4558] % 32) + 228 len mem[_4558] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4237, address(this.address), 128, mem[_4558], mem[_4558 + 196 len floor32(mem[_4558]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4344 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4344)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4160)
                                mem[mem[64] + 36] = address(_4138)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4160), address(_4138)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4883 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4883 + 36] = 0
                                mem[_4883 + 68] = _4237
                                mem[_4883 + 100] = address(ext_call.return_data[0])
                                mem[_4883 + 132] = 128
                                mem[_4883 + 164] = mem[_4883]
                                s = 0
                                while s < mem[_4883]:
                                    mem[s + _4883 + 196] = mem[s + _4883 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4883] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4237, address(ext_call.return_data[0]), 128, mem[_4883 + 164 len mem[_4883] + 32]
                                else:
                                    mem[floor32(mem[_4883]) + _4883 + 196] = mem[floor32(mem[_4883]) + _4883 + -(mem[_4883] % 32) + 228 len mem[_4883] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4237, address(ext_call.return_data[0]), 128, mem[_4883], mem[_4883 + 196 len floor32(mem[_4883]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4138)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4138)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4561 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4561 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4561 + 36] = _4237
                                mem[_4561 + 68] = 0
                                mem[_4561 + 100] = this.address
                                mem[_4561 + 132] = 128
                                mem[_4561 + 164] = mem[_4561]
                                s = 0
                                while s < mem[_4561]:
                                    mem[s + _4561 + 196] = mem[s + _4561 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4561] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4237, 0, address(this.address), 128, mem[_4561 + 164 len mem[_4561] + 32]
                                else:
                                    mem[floor32(mem[_4561]) + _4561 + 196] = mem[floor32(mem[_4561]) + _4561 + -(mem[_4561] % 32) + 228 len mem[_4561] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4237, 0, address(this.address), 128, mem[_4561], mem[_4561 + 196 len floor32(mem[_4561]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4349 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4349)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4160)
                                mem[mem[64] + 36] = address(_4138)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4160), address(_4138)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4887 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4887 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4887 + 36] = _4237
                                mem[_4887 + 68] = 0
                                mem[_4887 + 100] = address(ext_call.return_data[0])
                                mem[_4887 + 132] = 128
                                mem[_4887 + 164] = mem[_4887]
                                s = 0
                                while s < mem[_4887]:
                                    mem[s + _4887 + 196] = mem[s + _4887 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4887] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4237, 0, address(ext_call.return_data[0]), 128, mem[_4887 + 164 len mem[_4887] + 32]
                                else:
                                    mem[floor32(mem[_4887]) + _4887 + 196] = mem[floor32(mem[_4887]) + _4887 + -(mem[_4887] % 32) + 228 len mem[_4887] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4237, 0, address(ext_call.return_data[0]), 128, mem[_4887], mem[_4887 + 196 len floor32(mem[_4887]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(64 * ('cd', 36).length) + 356] = return_data.size
            mem[(64 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[64] = (98 * ('cd', 36).length) + ceil32(return_data.size) + 389
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4142 = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4162 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4238 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4162)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4162)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4564 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4564 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4564 + 36] = 0
                                mem[_4564 + 68] = _4238
                                mem[_4564 + 100] = this.address
                                mem[_4564 + 132] = 128
                                mem[_4564 + 164] = mem[_4564]
                                s = 0
                                while s < mem[_4564]:
                                    mem[s + _4564 + 196] = mem[s + _4564 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4564] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4238, address(this.address), 128, mem[_4564 + 164 len mem[_4564] + 32]
                                else:
                                    mem[floor32(mem[_4564]) + _4564 + 196] = mem[floor32(mem[_4564]) + _4564 + -(mem[_4564] % 32) + 228 len mem[_4564] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4238, address(this.address), 128, mem[_4564], mem[_4564 + 196 len floor32(mem[_4564]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4354 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4354)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4142)
                                mem[mem[64] + 36] = address(_4162)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4142), address(_4162)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4891 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4891 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4891 + 36] = 0
                                mem[_4891 + 68] = _4238
                                mem[_4891 + 100] = address(ext_call.return_data[0])
                                mem[_4891 + 132] = 128
                                mem[_4891 + 164] = mem[_4891]
                                s = 0
                                while s < mem[_4891]:
                                    mem[s + _4891 + 196] = mem[s + _4891 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4891] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4238, address(ext_call.return_data[0]), 128, mem[_4891 + 164 len mem[_4891] + 32]
                                else:
                                    mem[floor32(mem[_4891]) + _4891 + 196] = mem[floor32(mem[_4891]) + _4891 + -(mem[_4891] % 32) + 228 len mem[_4891] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4238, address(ext_call.return_data[0]), 128, mem[_4891], mem[_4891 + 196 len floor32(mem[_4891]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4162)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4162)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4567 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4567 + 36] = _4238
                                mem[_4567 + 68] = 0
                                mem[_4567 + 100] = this.address
                                mem[_4567 + 132] = 128
                                mem[_4567 + 164] = mem[_4567]
                                s = 0
                                while s < mem[_4567]:
                                    mem[s + _4567 + 196] = mem[s + _4567 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4567] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4238, 0, address(this.address), 128, mem[_4567 + 164 len mem[_4567] + 32]
                                else:
                                    mem[floor32(mem[_4567]) + _4567 + 196] = mem[floor32(mem[_4567]) + _4567 + -(mem[_4567] % 32) + 228 len mem[_4567] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4238, 0, address(this.address), 128, mem[_4567], mem[_4567 + 196 len floor32(mem[_4567]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4359 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4359)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4142)
                                mem[mem[64] + 36] = address(_4162)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4142), address(_4162)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4895 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4895 + 36] = _4238
                                mem[_4895 + 68] = 0
                                mem[_4895 + 100] = address(ext_call.return_data[0])
                                mem[_4895 + 132] = 128
                                mem[_4895 + 164] = mem[_4895]
                                s = 0
                                while s < mem[_4895]:
                                    mem[s + _4895 + 196] = mem[s + _4895 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4895] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4238, 0, address(ext_call.return_data[0]), 128, mem[_4895 + 164 len mem[_4895] + 32]
                                else:
                                    mem[floor32(mem[_4895]) + _4895 + 196] = mem[floor32(mem[_4895]) + _4895 + -(mem[_4895] % 32) + 228 len mem[_4895] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4238, 0, address(ext_call.return_data[0]), 128, mem[_4895], mem[_4895 + 196 len floor32(mem[_4895]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4239 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4142)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4142)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4570 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4570 + 36] = 0
                                mem[_4570 + 68] = _4239
                                mem[_4570 + 100] = this.address
                                mem[_4570 + 132] = 128
                                mem[_4570 + 164] = mem[_4570]
                                s = 0
                                while s < mem[_4570]:
                                    mem[s + _4570 + 196] = mem[s + _4570 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4570] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4239, address(this.address), 128, mem[_4570 + 164 len mem[_4570] + 32]
                                else:
                                    mem[floor32(mem[_4570]) + _4570 + 196] = mem[floor32(mem[_4570]) + _4570 + -(mem[_4570] % 32) + 228 len mem[_4570] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4239, address(this.address), 128, mem[_4570], mem[_4570 + 196 len floor32(mem[_4570]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4364 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4364)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4162)
                                mem[mem[64] + 36] = address(_4142)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4162), address(_4142)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4899 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4899 + 36] = 0
                                mem[_4899 + 68] = _4239
                                mem[_4899 + 100] = address(ext_call.return_data[0])
                                mem[_4899 + 132] = 128
                                mem[_4899 + 164] = mem[_4899]
                                s = 0
                                while s < mem[_4899]:
                                    mem[s + _4899 + 196] = mem[s + _4899 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4899] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4239, address(ext_call.return_data[0]), 128, mem[_4899 + 164 len mem[_4899] + 32]
                                else:
                                    mem[floor32(mem[_4899]) + _4899 + 196] = mem[floor32(mem[_4899]) + _4899 + -(mem[_4899] % 32) + 228 len mem[_4899] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4239, address(ext_call.return_data[0]), 128, mem[_4899], mem[_4899 + 196 len floor32(mem[_4899]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4142)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4142)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4573 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4573 + 36] = _4239
                                mem[_4573 + 68] = 0
                                mem[_4573 + 100] = this.address
                                mem[_4573 + 132] = 128
                                mem[_4573 + 164] = mem[_4573]
                                s = 0
                                while s < mem[_4573]:
                                    mem[s + _4573 + 196] = mem[s + _4573 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4573] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4239, 0, address(this.address), 128, mem[_4573 + 164 len mem[_4573] + 32]
                                else:
                                    mem[floor32(mem[_4573]) + _4573 + 196] = mem[floor32(mem[_4573]) + _4573 + -(mem[_4573] % 32) + 228 len mem[_4573] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4239, 0, address(this.address), 128, mem[_4573], mem[_4573 + 196 len floor32(mem[_4573]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4369 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4369)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4162)
                                mem[mem[64] + 36] = address(_4142)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4162), address(_4142)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4903 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4903 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4903 + 36] = _4239
                                mem[_4903 + 68] = 0
                                mem[_4903 + 100] = address(ext_call.return_data[0])
                                mem[_4903 + 132] = 128
                                mem[_4903 + 164] = mem[_4903]
                                s = 0
                                while s < mem[_4903]:
                                    mem[s + _4903 + 196] = mem[s + _4903 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4903] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4239, 0, address(ext_call.return_data[0]), 128, mem[_4903 + 164 len mem[_4903] + 32]
                                else:
                                    mem[floor32(mem[_4903]) + _4903 + 196] = mem[floor32(mem[_4903]) + _4903 + -(mem[_4903] % 32) + 228 len mem[_4903] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4239, 0, address(ext_call.return_data[0]), 128, mem[_4903], mem[_4903 + 196 len floor32(mem[_4903]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * ('cd', 36).length) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x595361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 467 len 22]
                mem[64] = (98 * ('cd', 36).length) + ceil32(return_data.size) + 389
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4144 = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4163 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4240 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4163)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4163)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4576 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4576 + 36] = 0
                                mem[_4576 + 68] = _4240
                                mem[_4576 + 100] = this.address
                                mem[_4576 + 132] = 128
                                mem[_4576 + 164] = mem[_4576]
                                s = 0
                                while s < mem[_4576]:
                                    mem[s + _4576 + 196] = mem[s + _4576 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4576] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4240, address(this.address), 128, mem[_4576 + 164 len mem[_4576] + 32]
                                else:
                                    mem[floor32(mem[_4576]) + _4576 + 196] = mem[floor32(mem[_4576]) + _4576 + -(mem[_4576] % 32) + 228 len mem[_4576] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4240, address(this.address), 128, mem[_4576], mem[_4576 + 196 len floor32(mem[_4576]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4374 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4374)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4144)
                                mem[mem[64] + 36] = address(_4163)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4144), address(_4163)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4907 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4907 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4907 + 36] = 0
                                mem[_4907 + 68] = _4240
                                mem[_4907 + 100] = address(ext_call.return_data[0])
                                mem[_4907 + 132] = 128
                                mem[_4907 + 164] = mem[_4907]
                                s = 0
                                while s < mem[_4907]:
                                    mem[s + _4907 + 196] = mem[s + _4907 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4907] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4240, address(ext_call.return_data[0]), 128, mem[_4907 + 164 len mem[_4907] + 32]
                                else:
                                    mem[floor32(mem[_4907]) + _4907 + 196] = mem[floor32(mem[_4907]) + _4907 + -(mem[_4907] % 32) + 228 len mem[_4907] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4240, address(ext_call.return_data[0]), 128, mem[_4907], mem[_4907 + 196 len floor32(mem[_4907]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4163)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4163)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4579 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4579 + 36] = _4240
                                mem[_4579 + 68] = 0
                                mem[_4579 + 100] = this.address
                                mem[_4579 + 132] = 128
                                mem[_4579 + 164] = mem[_4579]
                                s = 0
                                while s < mem[_4579]:
                                    mem[s + _4579 + 196] = mem[s + _4579 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4579] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4240, 0, address(this.address), 128, mem[_4579 + 164 len mem[_4579] + 32]
                                else:
                                    mem[floor32(mem[_4579]) + _4579 + 196] = mem[floor32(mem[_4579]) + _4579 + -(mem[_4579] % 32) + 228 len mem[_4579] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4240, 0, address(this.address), 128, mem[_4579], mem[_4579 + 196 len floor32(mem[_4579]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4379 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4379)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4144)
                                mem[mem[64] + 36] = address(_4163)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4144), address(_4163)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4911 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4911 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4911 + 36] = _4240
                                mem[_4911 + 68] = 0
                                mem[_4911 + 100] = address(ext_call.return_data[0])
                                mem[_4911 + 132] = 128
                                mem[_4911 + 164] = mem[_4911]
                                s = 0
                                while s < mem[_4911]:
                                    mem[s + _4911 + 196] = mem[s + _4911 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4911] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4240, 0, address(ext_call.return_data[0]), 128, mem[_4911 + 164 len mem[_4911] + 32]
                                else:
                                    mem[floor32(mem[_4911]) + _4911 + 196] = mem[floor32(mem[_4911]) + _4911 + -(mem[_4911] % 32) + 228 len mem[_4911] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4240, 0, address(ext_call.return_data[0]), 128, mem[_4911], mem[_4911 + 196 len floor32(mem[_4911]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4241 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4144)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4144)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4582 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4582 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4582 + 36] = 0
                                mem[_4582 + 68] = _4241
                                mem[_4582 + 100] = this.address
                                mem[_4582 + 132] = 128
                                mem[_4582 + 164] = mem[_4582]
                                s = 0
                                while s < mem[_4582]:
                                    mem[s + _4582 + 196] = mem[s + _4582 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4582] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4241, address(this.address), 128, mem[_4582 + 164 len mem[_4582] + 32]
                                else:
                                    mem[floor32(mem[_4582]) + _4582 + 196] = mem[floor32(mem[_4582]) + _4582 + -(mem[_4582] % 32) + 228 len mem[_4582] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4241, address(this.address), 128, mem[_4582], mem[_4582 + 196 len floor32(mem[_4582]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4384 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4384)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4163)
                                mem[mem[64] + 36] = address(_4144)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4163), address(_4144)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4915 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4915 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4915 + 36] = 0
                                mem[_4915 + 68] = _4241
                                mem[_4915 + 100] = address(ext_call.return_data[0])
                                mem[_4915 + 132] = 128
                                mem[_4915 + 164] = mem[_4915]
                                s = 0
                                while s < mem[_4915]:
                                    mem[s + _4915 + 196] = mem[s + _4915 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4915] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4241, address(ext_call.return_data[0]), 128, mem[_4915 + 164 len mem[_4915] + 32]
                                else:
                                    mem[floor32(mem[_4915]) + _4915 + 196] = mem[floor32(mem[_4915]) + _4915 + -(mem[_4915] % 32) + 228 len mem[_4915] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4241, address(ext_call.return_data[0]), 128, mem[_4915], mem[_4915 + 196 len floor32(mem[_4915]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4144)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4144)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4585 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4585 + 36] = _4241
                                mem[_4585 + 68] = 0
                                mem[_4585 + 100] = this.address
                                mem[_4585 + 132] = 128
                                mem[_4585 + 164] = mem[_4585]
                                s = 0
                                while s < mem[_4585]:
                                    mem[s + _4585 + 196] = mem[s + _4585 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4585] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4241, 0, address(this.address), 128, mem[_4585 + 164 len mem[_4585] + 32]
                                else:
                                    mem[floor32(mem[_4585]) + _4585 + 196] = mem[floor32(mem[_4585]) + _4585 + -(mem[_4585] % 32) + 228 len mem[_4585] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4241, 0, address(this.address), 128, mem[_4585], mem[_4585 + 196 len floor32(mem[_4585]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4389 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4389)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4163)
                                mem[mem[64] + 36] = address(_4144)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4163), address(_4144)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4919 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4919 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4919 + 36] = _4241
                                mem[_4919 + 68] = 0
                                mem[_4919 + 100] = address(ext_call.return_data[0])
                                mem[_4919 + 132] = 128
                                mem[_4919 + 164] = mem[_4919]
                                s = 0
                                while s < mem[_4919]:
                                    mem[s + _4919 + 196] = mem[s + _4919 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4919] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4241, 0, address(ext_call.return_data[0]), 128, mem[_4919 + 164 len mem[_4919] + 32]
                                else:
                                    mem[floor32(mem[_4919]) + _4919 + 196] = mem[floor32(mem[_4919]) + _4919 + -(mem[_4919] % 32) + 228 len mem[_4919] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4241, 0, address(ext_call.return_data[0]), 128, mem[_4919], mem[_4919 + 196 len floor32(mem[_4919]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1480 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _1485 = mem[(32 * idx + 1) + 128]
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_1485)
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
                if address(_1480) == address(_1480):
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
                       args mem[(64 * ('cd', 36).length) + 164], address(_1485)
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
                if address(_1485) == address(_1480):
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
        if mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + 160] <= cd[100]:
            revert with 0, 'limit out'
        require 0 < ('cd', 36).length
        require 1 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 164] = address(('cd', 36)[0])
        mem[(64 * ('cd', 36).length) + 196] = address(('cd', 36)[1])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(('cd', 36)[0]), address(('cd', 36)[1])
        mem[(64 * ('cd', 36).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * ('cd', 36).length) + 128]
        require 0 < ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 196] = msg.sender
        mem[(64 * ('cd', 36).length) + 228] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 260] = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = 100
        mem[(64 * ('cd', 36).length) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * ('cd', 36).length) + 292] = 32
        mem[(64 * ('cd', 36).length) + 324] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(('cd', 36)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(64 * ('cd', 36).length) + 356 len 96] = 0, msg.sender, address(ext_call.return_data[0]), mem[(64 * ('cd', 36).length) + 260 len 28]
        mem[(64 * ('cd', 36).length) + 480 len 4] = 0
        call address(('cd', 36)[0]) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 260], 32, Mask(224, 32, 'SafeERC20: low-level call failed') >> 32, mem[(64 * ('cd', 36).length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 36).length:
                mem[64] = (98 * ('cd', 36).length) + 388
                mem[(64 * ('cd', 36).length) + 356] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + 388 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + 388] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + 356]
                    _4148 = mem[(32 * idx) + (64 * ('cd', 36).length) + 388]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + 356]
                    _4165 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 388]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4242 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4165)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4165)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4588 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4588 + 36] = 0
                                mem[_4588 + 68] = _4242
                                mem[_4588 + 100] = this.address
                                mem[_4588 + 132] = 128
                                mem[_4588 + 164] = mem[_4588]
                                s = 0
                                while s < mem[_4588]:
                                    mem[s + _4588 + 196] = mem[s + _4588 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4588] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4242, address(this.address), 128, mem[_4588 + 164 len mem[_4588] + 32]
                                else:
                                    mem[floor32(mem[_4588]) + _4588 + 196] = mem[floor32(mem[_4588]) + _4588 + -(mem[_4588] % 32) + 228 len mem[_4588] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4242, address(this.address), 128, mem[_4588], mem[_4588 + 196 len floor32(mem[_4588]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4394 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4394)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4148)
                                mem[mem[64] + 36] = address(_4165)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4148), address(_4165)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4923 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4923 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4923 + 36] = 0
                                mem[_4923 + 68] = _4242
                                mem[_4923 + 100] = address(ext_call.return_data[0])
                                mem[_4923 + 132] = 128
                                mem[_4923 + 164] = mem[_4923]
                                s = 0
                                while s < mem[_4923]:
                                    mem[s + _4923 + 196] = mem[s + _4923 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4923] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4242, address(ext_call.return_data[0]), 128, mem[_4923 + 164 len mem[_4923] + 32]
                                else:
                                    mem[floor32(mem[_4923]) + _4923 + 196] = mem[floor32(mem[_4923]) + _4923 + -(mem[_4923] % 32) + 228 len mem[_4923] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4242, address(ext_call.return_data[0]), 128, mem[_4923], mem[_4923 + 196 len floor32(mem[_4923]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4165)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4165)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4591 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4591 + 36] = _4242
                                mem[_4591 + 68] = 0
                                mem[_4591 + 100] = this.address
                                mem[_4591 + 132] = 128
                                mem[_4591 + 164] = mem[_4591]
                                s = 0
                                while s < mem[_4591]:
                                    mem[s + _4591 + 196] = mem[s + _4591 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4591] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4242, 0, address(this.address), 128, mem[_4591 + 164 len mem[_4591] + 32]
                                else:
                                    mem[floor32(mem[_4591]) + _4591 + 196] = mem[floor32(mem[_4591]) + _4591 + -(mem[_4591] % 32) + 228 len mem[_4591] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4242, 0, address(this.address), 128, mem[_4591], mem[_4591 + 196 len floor32(mem[_4591]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4399 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4399)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4148)
                                mem[mem[64] + 36] = address(_4165)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4148), address(_4165)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4927 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4927 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4927 + 36] = _4242
                                mem[_4927 + 68] = 0
                                mem[_4927 + 100] = address(ext_call.return_data[0])
                                mem[_4927 + 132] = 128
                                mem[_4927 + 164] = mem[_4927]
                                s = 0
                                while s < mem[_4927]:
                                    mem[s + _4927 + 196] = mem[s + _4927 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4927] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4242, 0, address(ext_call.return_data[0]), 128, mem[_4927 + 164 len mem[_4927] + 32]
                                else:
                                    mem[floor32(mem[_4927]) + _4927 + 196] = mem[floor32(mem[_4927]) + _4927 + -(mem[_4927] % 32) + 228 len mem[_4927] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4242, 0, address(ext_call.return_data[0]), 128, mem[_4927], mem[_4927 + 196 len floor32(mem[_4927]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4243 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4148)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4148)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4594 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4594 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4594 + 36] = 0
                                mem[_4594 + 68] = _4243
                                mem[_4594 + 100] = this.address
                                mem[_4594 + 132] = 128
                                mem[_4594 + 164] = mem[_4594]
                                s = 0
                                while s < mem[_4594]:
                                    mem[s + _4594 + 196] = mem[s + _4594 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4594] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4243, address(this.address), 128, mem[_4594 + 164 len mem[_4594] + 32]
                                else:
                                    mem[floor32(mem[_4594]) + _4594 + 196] = mem[floor32(mem[_4594]) + _4594 + -(mem[_4594] % 32) + 228 len mem[_4594] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4243, address(this.address), 128, mem[_4594], mem[_4594 + 196 len floor32(mem[_4594]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4404 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4404)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4165)
                                mem[mem[64] + 36] = address(_4148)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4165), address(_4148)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4931 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4931 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4931 + 36] = 0
                                mem[_4931 + 68] = _4243
                                mem[_4931 + 100] = address(ext_call.return_data[0])
                                mem[_4931 + 132] = 128
                                mem[_4931 + 164] = mem[_4931]
                                s = 0
                                while s < mem[_4931]:
                                    mem[s + _4931 + 196] = mem[s + _4931 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4931] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4243, address(ext_call.return_data[0]), 128, mem[_4931 + 164 len mem[_4931] + 32]
                                else:
                                    mem[floor32(mem[_4931]) + _4931 + 196] = mem[floor32(mem[_4931]) + _4931 + -(mem[_4931] % 32) + 228 len mem[_4931] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4243, address(ext_call.return_data[0]), 128, mem[_4931], mem[_4931 + 196 len floor32(mem[_4931]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4148)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4148)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4597 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4597 + 36] = _4243
                                mem[_4597 + 68] = 0
                                mem[_4597 + 100] = this.address
                                mem[_4597 + 132] = 128
                                mem[_4597 + 164] = mem[_4597]
                                s = 0
                                while s < mem[_4597]:
                                    mem[s + _4597 + 196] = mem[s + _4597 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4597] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4243, 0, address(this.address), 128, mem[_4597 + 164 len mem[_4597] + 32]
                                else:
                                    mem[floor32(mem[_4597]) + _4597 + 196] = mem[floor32(mem[_4597]) + _4597 + -(mem[_4597] % 32) + 228 len mem[_4597] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4243, 0, address(this.address), 128, mem[_4597], mem[_4597 + 196 len floor32(mem[_4597]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4409 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4409)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4165)
                                mem[mem[64] + 36] = address(_4148)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4165), address(_4148)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4935 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4935 + 36] = _4243
                                mem[_4935 + 68] = 0
                                mem[_4935 + 100] = address(ext_call.return_data[0])
                                mem[_4935 + 132] = 128
                                mem[_4935 + 164] = mem[_4935]
                                s = 0
                                while s < mem[_4935]:
                                    mem[s + _4935 + 196] = mem[s + _4935 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4935] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4243, 0, address(ext_call.return_data[0]), 128, mem[_4935 + 164 len mem[_4935] + 32]
                                else:
                                    mem[floor32(mem[_4935]) + _4935 + 196] = mem[floor32(mem[_4935]) + _4935 + -(mem[_4935] % 32) + 228 len mem[_4935] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4243, 0, address(ext_call.return_data[0]), 128, mem[_4935], mem[_4935 + 196 len floor32(mem[_4935]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require ('cd', 36).length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x595361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(64 * ('cd', 36).length) + 466 len 14],
                                0,
                                mem[(64 * ('cd', 36).length) + 484 len 4]
                mem[64] = (98 * ('cd', 36).length) + 388
                mem[(64 * ('cd', 36).length) + 356] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + 388 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + 388] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + 356]
                    _4150 = mem[(32 * idx) + (64 * ('cd', 36).length) + 388]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + 356]
                    _4166 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 388]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4244 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4166)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4166)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4600 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4600 + 36] = 0
                                mem[_4600 + 68] = _4244
                                mem[_4600 + 100] = this.address
                                mem[_4600 + 132] = 128
                                mem[_4600 + 164] = mem[_4600]
                                s = 0
                                while s < mem[_4600]:
                                    mem[s + _4600 + 196] = mem[s + _4600 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4600] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4244, address(this.address), 128, mem[_4600 + 164 len mem[_4600] + 32]
                                else:
                                    mem[floor32(mem[_4600]) + _4600 + 196] = mem[floor32(mem[_4600]) + _4600 + -(mem[_4600] % 32) + 228 len mem[_4600] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4244, address(this.address), 128, mem[_4600], mem[_4600 + 196 len floor32(mem[_4600]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4414 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4414)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4150)
                                mem[mem[64] + 36] = address(_4166)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4150), address(_4166)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4939 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4939 + 36] = 0
                                mem[_4939 + 68] = _4244
                                mem[_4939 + 100] = address(ext_call.return_data[0])
                                mem[_4939 + 132] = 128
                                mem[_4939 + 164] = mem[_4939]
                                s = 0
                                while s < mem[_4939]:
                                    mem[s + _4939 + 196] = mem[s + _4939 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4939] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4244, address(ext_call.return_data[0]), 128, mem[_4939 + 164 len mem[_4939] + 32]
                                else:
                                    mem[floor32(mem[_4939]) + _4939 + 196] = mem[floor32(mem[_4939]) + _4939 + -(mem[_4939] % 32) + 228 len mem[_4939] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4244, address(ext_call.return_data[0]), 128, mem[_4939], mem[_4939 + 196 len floor32(mem[_4939]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4166)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4166)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4603 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4603 + 36] = _4244
                                mem[_4603 + 68] = 0
                                mem[_4603 + 100] = this.address
                                mem[_4603 + 132] = 128
                                mem[_4603 + 164] = mem[_4603]
                                s = 0
                                while s < mem[_4603]:
                                    mem[s + _4603 + 196] = mem[s + _4603 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4603] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4244, 0, address(this.address), 128, mem[_4603 + 164 len mem[_4603] + 32]
                                else:
                                    mem[floor32(mem[_4603]) + _4603 + 196] = mem[floor32(mem[_4603]) + _4603 + -(mem[_4603] % 32) + 228 len mem[_4603] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4244, 0, address(this.address), 128, mem[_4603], mem[_4603 + 196 len floor32(mem[_4603]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4419 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4419)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4150)
                                mem[mem[64] + 36] = address(_4166)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4150), address(_4166)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4943 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4943 + 36] = _4244
                                mem[_4943 + 68] = 0
                                mem[_4943 + 100] = address(ext_call.return_data[0])
                                mem[_4943 + 132] = 128
                                mem[_4943 + 164] = mem[_4943]
                                s = 0
                                while s < mem[_4943]:
                                    mem[s + _4943 + 196] = mem[s + _4943 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4943] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4244, 0, address(ext_call.return_data[0]), 128, mem[_4943 + 164 len mem[_4943] + 32]
                                else:
                                    mem[floor32(mem[_4943]) + _4943 + 196] = mem[floor32(mem[_4943]) + _4943 + -(mem[_4943] % 32) + 228 len mem[_4943] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4244, 0, address(ext_call.return_data[0]), 128, mem[_4943], mem[_4943 + 196 len floor32(mem[_4943]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4245 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4150)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4150)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4606 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4606 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4606 + 36] = 0
                                mem[_4606 + 68] = _4245
                                mem[_4606 + 100] = this.address
                                mem[_4606 + 132] = 128
                                mem[_4606 + 164] = mem[_4606]
                                s = 0
                                while s < mem[_4606]:
                                    mem[s + _4606 + 196] = mem[s + _4606 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4606] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4245, address(this.address), 128, mem[_4606 + 164 len mem[_4606] + 32]
                                else:
                                    mem[floor32(mem[_4606]) + _4606 + 196] = mem[floor32(mem[_4606]) + _4606 + -(mem[_4606] % 32) + 228 len mem[_4606] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4245, address(this.address), 128, mem[_4606], mem[_4606 + 196 len floor32(mem[_4606]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4424 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4424)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4166)
                                mem[mem[64] + 36] = address(_4150)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4166), address(_4150)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4947 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4947 + 36] = 0
                                mem[_4947 + 68] = _4245
                                mem[_4947 + 100] = address(ext_call.return_data[0])
                                mem[_4947 + 132] = 128
                                mem[_4947 + 164] = mem[_4947]
                                s = 0
                                while s < mem[_4947]:
                                    mem[s + _4947 + 196] = mem[s + _4947 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4947] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4245, address(ext_call.return_data[0]), 128, mem[_4947 + 164 len mem[_4947] + 32]
                                else:
                                    mem[floor32(mem[_4947]) + _4947 + 196] = mem[floor32(mem[_4947]) + _4947 + -(mem[_4947] % 32) + 228 len mem[_4947] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4245, address(ext_call.return_data[0]), 128, mem[_4947], mem[_4947 + 196 len floor32(mem[_4947]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + 356] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                mem[mem[64] + 36] = address(_4150)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4150)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4609 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4609 + 36] = _4245
                                mem[_4609 + 68] = 0
                                mem[_4609 + 100] = this.address
                                mem[_4609 + 132] = 128
                                mem[_4609 + 164] = mem[_4609]
                                s = 0
                                while s < mem[_4609]:
                                    mem[s + _4609 + 196] = mem[s + _4609 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4609] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4245, 0, address(this.address), 128, mem[_4609 + 164 len mem[_4609] + 32]
                                else:
                                    mem[floor32(mem[_4609]) + _4609 + 196] = mem[floor32(mem[_4609]) + _4609 + -(mem[_4609] % 32) + 228 len mem[_4609] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4245, 0, address(this.address), 128, mem[_4609], mem[_4609 + 196 len floor32(mem[_4609]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + 356]
                                _4429 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + 388]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 400 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4429)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4166)
                                mem[mem[64] + 36] = address(_4150)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4166), address(_4150)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4951 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4951 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4951 + 36] = _4245
                                mem[_4951 + 68] = 0
                                mem[_4951 + 100] = address(ext_call.return_data[0])
                                mem[_4951 + 132] = 128
                                mem[_4951 + 164] = mem[_4951]
                                s = 0
                                while s < mem[_4951]:
                                    mem[s + _4951 + 196] = mem[s + _4951 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4951] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4245, 0, address(ext_call.return_data[0]), 128, mem[_4951 + 164 len mem[_4951] + 32]
                                else:
                                    mem[floor32(mem[_4951]) + _4951 + 196] = mem[floor32(mem[_4951]) + _4951 + -(mem[_4951] % 32) + 228 len mem[_4951] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4245, 0, address(ext_call.return_data[0]), 128, mem[_4951], mem[_4951 + 196 len floor32(mem[_4951]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(64 * ('cd', 36).length) + 356] = return_data.size
            mem[(64 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[64] = (98 * ('cd', 36).length) + ceil32(return_data.size) + 389
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4154 = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4168 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4246 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4168)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4168)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4612 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4612 + 36] = 0
                                mem[_4612 + 68] = _4246
                                mem[_4612 + 100] = this.address
                                mem[_4612 + 132] = 128
                                mem[_4612 + 164] = mem[_4612]
                                s = 0
                                while s < mem[_4612]:
                                    mem[s + _4612 + 196] = mem[s + _4612 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4612] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4246, address(this.address), 128, mem[_4612 + 164 len mem[_4612] + 32]
                                else:
                                    mem[floor32(mem[_4612]) + _4612 + 196] = mem[floor32(mem[_4612]) + _4612 + -(mem[_4612] % 32) + 228 len mem[_4612] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4246, address(this.address), 128, mem[_4612], mem[_4612 + 196 len floor32(mem[_4612]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4434 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4434)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4154)
                                mem[mem[64] + 36] = address(_4168)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4154), address(_4168)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4955 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4955 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4955 + 36] = 0
                                mem[_4955 + 68] = _4246
                                mem[_4955 + 100] = address(ext_call.return_data[0])
                                mem[_4955 + 132] = 128
                                mem[_4955 + 164] = mem[_4955]
                                s = 0
                                while s < mem[_4955]:
                                    mem[s + _4955 + 196] = mem[s + _4955 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4955] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4246, address(ext_call.return_data[0]), 128, mem[_4955 + 164 len mem[_4955] + 32]
                                else:
                                    mem[floor32(mem[_4955]) + _4955 + 196] = mem[floor32(mem[_4955]) + _4955 + -(mem[_4955] % 32) + 228 len mem[_4955] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4246, address(ext_call.return_data[0]), 128, mem[_4955], mem[_4955 + 196 len floor32(mem[_4955]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4168)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4168)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4615 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4615 + 36] = _4246
                                mem[_4615 + 68] = 0
                                mem[_4615 + 100] = this.address
                                mem[_4615 + 132] = 128
                                mem[_4615 + 164] = mem[_4615]
                                s = 0
                                while s < mem[_4615]:
                                    mem[s + _4615 + 196] = mem[s + _4615 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4615] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4246, 0, address(this.address), 128, mem[_4615 + 164 len mem[_4615] + 32]
                                else:
                                    mem[floor32(mem[_4615]) + _4615 + 196] = mem[floor32(mem[_4615]) + _4615 + -(mem[_4615] % 32) + 228 len mem[_4615] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4246, 0, address(this.address), 128, mem[_4615], mem[_4615 + 196 len floor32(mem[_4615]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4439 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4439)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4154)
                                mem[mem[64] + 36] = address(_4168)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4154), address(_4168)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4959 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4959 + 36] = _4246
                                mem[_4959 + 68] = 0
                                mem[_4959 + 100] = address(ext_call.return_data[0])
                                mem[_4959 + 132] = 128
                                mem[_4959 + 164] = mem[_4959]
                                s = 0
                                while s < mem[_4959]:
                                    mem[s + _4959 + 196] = mem[s + _4959 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4959] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4246, 0, address(ext_call.return_data[0]), 128, mem[_4959 + 164 len mem[_4959] + 32]
                                else:
                                    mem[floor32(mem[_4959]) + _4959 + 196] = mem[floor32(mem[_4959]) + _4959 + -(mem[_4959] % 32) + 228 len mem[_4959] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4246, 0, address(ext_call.return_data[0]), 128, mem[_4959], mem[_4959 + 196 len floor32(mem[_4959]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4247 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4154)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4154)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4618 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4618 + 36] = 0
                                mem[_4618 + 68] = _4247
                                mem[_4618 + 100] = this.address
                                mem[_4618 + 132] = 128
                                mem[_4618 + 164] = mem[_4618]
                                s = 0
                                while s < mem[_4618]:
                                    mem[s + _4618 + 196] = mem[s + _4618 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4618] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4247, address(this.address), 128, mem[_4618 + 164 len mem[_4618] + 32]
                                else:
                                    mem[floor32(mem[_4618]) + _4618 + 196] = mem[floor32(mem[_4618]) + _4618 + -(mem[_4618] % 32) + 228 len mem[_4618] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4247, address(this.address), 128, mem[_4618], mem[_4618 + 196 len floor32(mem[_4618]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4444 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4444)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4168)
                                mem[mem[64] + 36] = address(_4154)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4168), address(_4154)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4963 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4963 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4963 + 36] = 0
                                mem[_4963 + 68] = _4247
                                mem[_4963 + 100] = address(ext_call.return_data[0])
                                mem[_4963 + 132] = 128
                                mem[_4963 + 164] = mem[_4963]
                                s = 0
                                while s < mem[_4963]:
                                    mem[s + _4963 + 196] = mem[s + _4963 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4963] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4247, address(ext_call.return_data[0]), 128, mem[_4963 + 164 len mem[_4963] + 32]
                                else:
                                    mem[floor32(mem[_4963]) + _4963 + 196] = mem[floor32(mem[_4963]) + _4963 + -(mem[_4963] % 32) + 228 len mem[_4963] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4247, address(ext_call.return_data[0]), 128, mem[_4963], mem[_4963 + 196 len floor32(mem[_4963]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4154)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4154)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4621 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4621 + 36] = _4247
                                mem[_4621 + 68] = 0
                                mem[_4621 + 100] = this.address
                                mem[_4621 + 132] = 128
                                mem[_4621 + 164] = mem[_4621]
                                s = 0
                                while s < mem[_4621]:
                                    mem[s + _4621 + 196] = mem[s + _4621 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4621] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4247, 0, address(this.address), 128, mem[_4621 + 164 len mem[_4621] + 32]
                                else:
                                    mem[floor32(mem[_4621]) + _4621 + 196] = mem[floor32(mem[_4621]) + _4621 + -(mem[_4621] % 32) + 228 len mem[_4621] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4247, 0, address(this.address), 128, mem[_4621], mem[_4621 + 196 len floor32(mem[_4621]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4449 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4449)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4168)
                                mem[mem[64] + 36] = address(_4154)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4168), address(_4154)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4967 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4967 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4967 + 36] = _4247
                                mem[_4967 + 68] = 0
                                mem[_4967 + 100] = address(ext_call.return_data[0])
                                mem[_4967 + 132] = 128
                                mem[_4967 + 164] = mem[_4967]
                                s = 0
                                while s < mem[_4967]:
                                    mem[s + _4967 + 196] = mem[s + _4967 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4967] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4247, 0, address(ext_call.return_data[0]), 128, mem[_4967 + 164 len mem[_4967] + 32]
                                else:
                                    mem[floor32(mem[_4967]) + _4967 + 196] = mem[floor32(mem[_4967]) + _4967 + -(mem[_4967] % 32) + 228 len mem[_4967] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4247, 0, address(ext_call.return_data[0]), 128, mem[_4967], mem[_4967 + 196 len floor32(mem[_4967]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * ('cd', 36).length) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x595361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 467 len 22]
                mem[64] = (98 * ('cd', 36).length) + ceil32(return_data.size) + 389
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] = ('cd', 36).length
                mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0
                idx = 0
                while idx < ('cd', 36).length - 1:
                    require idx < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4156 = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    require idx + 1 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                    _4169 = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4248 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4169)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4169)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4624 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4624 + 36] = 0
                                mem[_4624 + 68] = _4248
                                mem[_4624 + 100] = this.address
                                mem[_4624 + 132] = 128
                                mem[_4624 + 164] = mem[_4624]
                                s = 0
                                while s < mem[_4624]:
                                    mem[s + _4624 + 196] = mem[s + _4624 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4624] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4248, address(this.address), 128, mem[_4624 + 164 len mem[_4624] + 32]
                                else:
                                    mem[floor32(mem[_4624]) + _4624 + 196] = mem[floor32(mem[_4624]) + _4624 + -(mem[_4624] % 32) + 228 len mem[_4624] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4248, address(this.address), 128, mem[_4624], mem[_4624 + 196 len floor32(mem[_4624]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4454 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4454)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4156)
                                mem[mem[64] + 36] = address(_4169)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4156), address(_4169)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4971 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4971 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4971 + 36] = 0
                                mem[_4971 + 68] = _4248
                                mem[_4971 + 100] = address(ext_call.return_data[0])
                                mem[_4971 + 132] = 128
                                mem[_4971 + 164] = mem[_4971]
                                s = 0
                                while s < mem[_4971]:
                                    mem[s + _4971 + 196] = mem[s + _4971 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4971] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4248, address(ext_call.return_data[0]), 128, mem[_4971 + 164 len mem[_4971] + 32]
                                else:
                                    mem[floor32(mem[_4971]) + _4971 + 196] = mem[floor32(mem[_4971]) + _4971 + -(mem[_4971] % 32) + 228 len mem[_4971] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4248, address(ext_call.return_data[0]), 128, mem[_4971], mem[_4971 + 196 len floor32(mem[_4971]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4169)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4169)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4627 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4627 + 36] = _4248
                                mem[_4627 + 68] = 0
                                mem[_4627 + 100] = this.address
                                mem[_4627 + 132] = 128
                                mem[_4627 + 164] = mem[_4627]
                                s = 0
                                while s < mem[_4627]:
                                    mem[s + _4627 + 196] = mem[s + _4627 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4627] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4248, 0, address(this.address), 128, mem[_4627 + 164 len mem[_4627] + 32]
                                else:
                                    mem[floor32(mem[_4627]) + _4627 + 196] = mem[floor32(mem[_4627]) + _4627 + -(mem[_4627] % 32) + 228 len mem[_4627] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4248, 0, address(this.address), 128, mem[_4627], mem[_4627 + 196 len floor32(mem[_4627]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4459 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4459)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4156)
                                mem[mem[64] + 36] = address(_4169)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4156), address(_4169)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4975 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4975 + 36] = _4248
                                mem[_4975 + 68] = 0
                                mem[_4975 + 100] = address(ext_call.return_data[0])
                                mem[_4975 + 132] = 128
                                mem[_4975 + 164] = mem[_4975]
                                s = 0
                                while s < mem[_4975]:
                                    mem[s + _4975 + 196] = mem[s + _4975 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4975] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4248, 0, address(ext_call.return_data[0]), 128, mem[_4975 + 164 len mem[_4975] + 32]
                                else:
                                    mem[floor32(mem[_4975]) + _4975 + 196] = mem[floor32(mem[_4975]) + _4975 + -(mem[_4975] % 32) + 228 len mem[_4975] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4248, 0, address(ext_call.return_data[0]), 128, mem[_4975], mem[_4975 + 196 len floor32(mem[_4975]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        _4249 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                        if mem[(32 * idx) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4156)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4156)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4630 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4630 + 36] = 0
                                mem[_4630 + 68] = _4249
                                mem[_4630 + 100] = this.address
                                mem[_4630 + 132] = 128
                                mem[_4630 + 164] = mem[_4630]
                                s = 0
                                while s < mem[_4630]:
                                    mem[s + _4630 + 196] = mem[s + _4630 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4630] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4249, address(this.address), 128, mem[_4630 + 164 len mem[_4630] + 32]
                                else:
                                    mem[floor32(mem[_4630]) + _4630 + 196] = mem[floor32(mem[_4630]) + _4630 + -(mem[_4630] % 32) + 228 len mem[_4630] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4249, address(this.address), 128, mem[_4630], mem[_4630 + 196 len floor32(mem[_4630]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4464 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4464)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4169)
                                mem[mem[64] + 36] = address(_4156)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4169), address(_4156)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4979 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4979 + 36] = 0
                                mem[_4979 + 68] = _4249
                                mem[_4979 + 100] = address(ext_call.return_data[0])
                                mem[_4979 + 132] = 128
                                mem[_4979 + 164] = mem[_4979]
                                s = 0
                                while s < mem[_4979]:
                                    mem[s + _4979 + 196] = mem[s + _4979 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4979] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4249, address(ext_call.return_data[0]), 128, mem[_4979 + 164 len mem[_4979] + 32]
                                else:
                                    mem[floor32(mem[_4979]) + _4979 + 196] = mem[floor32(mem[_4979]) + _4979 + -(mem[_4979] % 32) + 228 len mem[_4979] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4249, address(ext_call.return_data[0]), 128, mem[_4979], mem[_4979 + 196 len floor32(mem[_4979]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357] - 2:
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                mem[mem[64] + 36] = address(_4156)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4156)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4633 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4633 + 36] = _4249
                                mem[_4633 + 68] = 0
                                mem[_4633 + 100] = this.address
                                mem[_4633 + 132] = 128
                                mem[_4633 + 164] = mem[_4633]
                                s = 0
                                while s < mem[_4633]:
                                    mem[s + _4633 + 196] = mem[s + _4633 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4633] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4249, 0, address(this.address), 128, mem[_4633 + 164 len mem[_4633] + 32]
                                else:
                                    mem[floor32(mem[_4633]) + _4633 + 196] = mem[floor32(mem[_4633]) + _4633 + -(mem[_4633] % 32) + 228 len mem[_4633] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4249, 0, address(this.address), 128, mem[_4633], mem[_4633 + 196 len floor32(mem[_4633]) + 32]
                            else:
                                require idx + 2 < mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 357]
                                _4469 = mem[(32 * idx + 2) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 389]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 401 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_4469)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = address(_4169)
                                mem[mem[64] + 36] = address(_4156)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(_4169), address(_4156)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4983 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4983 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4983 + 36] = _4249
                                mem[_4983 + 68] = 0
                                mem[_4983 + 100] = address(ext_call.return_data[0])
                                mem[_4983 + 132] = 128
                                mem[_4983 + 164] = mem[_4983]
                                s = 0
                                while s < mem[_4983]:
                                    mem[s + _4983 + 196] = mem[s + _4983 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4983] % 32:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4249, 0, address(ext_call.return_data[0]), 128, mem[_4983 + 164 len mem[_4983] + 32]
                                else:
                                    mem[floor32(mem[_4983]) + _4983 + 196] = mem[floor32(mem[_4983]) + _4983 + -(mem[_4983] % 32) + 228 len mem[_4983] % 32]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4249, 0, address(ext_call.return_data[0]), 128, mem[_4983], mem[_4983 + 196 len floor32(mem[_4983]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}



}
