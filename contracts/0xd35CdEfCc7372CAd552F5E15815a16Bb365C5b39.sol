contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_20153c02(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if cd[196] < block.timestamp:
        revert with 0, 'swap expired'
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    if ('cd', 4).length < 2:
        revert with 0, 'INVALID_PATH'
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 4).length
    if not ('cd', 4).length:
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = cd[132]
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < ('cd', 4).length
            _1334 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 4).length
            _1341 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                if address(_1334) == address(_1334):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                if address(_1341) == address(_1334):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] < cd[164]:
            revert with 0, 'insufficient output'
        require 0 < ('cd', 4).length
        require 0 < ('cd', 36).length
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = msg.sender
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = address(('cd', 36)[0])
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 100
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 96] = 0, msg.sender, address(('cd', 36)[0]), mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324 len 28]
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 480 len 4] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 344 len 4]
        call address(('cd', 4)[0]) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324], address(('cd', 36)[0]), mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324 len 28] >> 224, mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FROM_FAILED'
            if not ('cd', 4).length:
                mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] = ('cd', 4).length
                mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420
                mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388] = ('cd', 36).length
                mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420] = 0
                idx = 0
                while idx < ('cd', 4).length - 1:
                    require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
                    require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        _3723 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3868 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _3932 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3932 + 36] = 0
                                mem[_3932 + 68] = _3723
                                mem[_3932 + 100] = address(cd[100])
                                mem[_3932 + 132] = 128
                                mem[_3932 + 164] = mem[_3932]
                                s = 0
                                while s < mem[_3932]:
                                    mem[s + _3932 + 196] = mem[s + _3932 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3932] % 32:
                                    require ext_code.size(address(_3868))
                                    call address(_3868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3723, address(cd[100]), 128, mem[_3932 + 164 len mem[_3932] + 32]
                                else:
                                    mem[floor32(mem[_3932]) + _3932 + 196] = mem[floor32(mem[_3932]) + _3932 + -(mem[_3932] % 32) + 228 len mem[_3932] % 32]
                                    require ext_code.size(address(_3868))
                                    call address(_3868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3723, address(cd[100]), 128, mem[_3932], mem[_3932 + 196 len floor32(mem[_3932]) + 32]
                            else:
                                require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3803 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3931 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _3995 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3995 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3995 + 36] = 0
                                mem[_3995 + 68] = _3723
                                mem[_3995 + 100] = address(_3803)
                                mem[_3995 + 132] = 128
                                mem[_3995 + 164] = mem[_3995]
                                s = 0
                                while s < mem[_3995]:
                                    mem[s + _3995 + 196] = mem[s + _3995 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3995] % 32:
                                    require ext_code.size(address(_3931))
                                    call address(_3931).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3723, address(_3803), 128, mem[_3995 + 164 len mem[_3995] + 32]
                                else:
                                    mem[floor32(mem[_3995]) + _3995 + 196] = mem[floor32(mem[_3995]) + _3995 + -(mem[_3995] % 32) + 228 len mem[_3995] % 32]
                                    require ext_code.size(address(_3931))
                                    call address(_3931).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3723, address(_3803), 128, mem[_3995], mem[_3995 + 196 len floor32(mem[_3995]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3870 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _3934 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3934 + 36] = _3723
                                mem[_3934 + 68] = 0
                                mem[_3934 + 100] = address(cd[100])
                                mem[_3934 + 132] = 128
                                mem[_3934 + 164] = mem[_3934]
                                s = 0
                                while s < mem[_3934]:
                                    mem[s + _3934 + 196] = mem[s + _3934 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3934] % 32:
                                    require ext_code.size(address(_3870))
                                    call address(_3870).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3723, 0, address(cd[100]), 128, mem[_3934 + 164 len mem[_3934] + 32]
                                else:
                                    mem[floor32(mem[_3934]) + _3934 + 196] = mem[floor32(mem[_3934]) + _3934 + -(mem[_3934] % 32) + 228 len mem[_3934] % 32]
                                    require ext_code.size(address(_3870))
                                    call address(_3870).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3723, 0, address(cd[100]), 128, mem[_3934], mem[_3934 + 196 len floor32(mem[_3934]) + 32]
                            else:
                                require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3805 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3933 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _3999 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3999 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3999 + 36] = _3723
                                mem[_3999 + 68] = 0
                                mem[_3999 + 100] = address(_3805)
                                mem[_3999 + 132] = 128
                                mem[_3999 + 164] = mem[_3999]
                                s = 0
                                while s < mem[_3999]:
                                    mem[s + _3999 + 196] = mem[s + _3999 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3999] % 32:
                                    require ext_code.size(address(_3933))
                                    call address(_3933).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3723, 0, address(_3805), 128, mem[_3999 + 164 len mem[_3999] + 32]
                                else:
                                    mem[floor32(mem[_3999]) + _3999 + 196] = mem[floor32(mem[_3999]) + _3999 + -(mem[_3999] % 32) + 228 len mem[_3999] % 32]
                                    require ext_code.size(address(_3933))
                                    call address(_3933).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3723, 0, address(_3805), 128, mem[_3999], mem[_3999 + 196 len floor32(mem[_3999]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        _3724 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                            if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3872 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _3936 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3936 + 36] = 0
                                mem[_3936 + 68] = _3724
                                mem[_3936 + 100] = address(cd[100])
                                mem[_3936 + 132] = 128
                                mem[_3936 + 164] = mem[_3936]
                                s = 0
                                while s < mem[_3936]:
                                    mem[s + _3936 + 196] = mem[s + _3936 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3936] % 32:
                                    require ext_code.size(address(_3872))
                                    call address(_3872).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3724, address(cd[100]), 128, mem[_3936 + 164 len mem[_3936] + 32]
                                else:
                                    mem[floor32(mem[_3936]) + _3936 + 196] = mem[floor32(mem[_3936]) + _3936 + -(mem[_3936] % 32) + 228 len mem[_3936] % 32]
                                    require ext_code.size(address(_3872))
                                    call address(_3872).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3724, address(cd[100]), 128, mem[_3936], mem[_3936 + 196 len floor32(mem[_3936]) + 32]
                            else:
                                require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3807 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3935 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _4003 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4003 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4003 + 36] = 0
                                mem[_4003 + 68] = _3724
                                mem[_4003 + 100] = address(_3807)
                                mem[_4003 + 132] = 128
                                mem[_4003 + 164] = mem[_4003]
                                s = 0
                                while s < mem[_4003]:
                                    mem[s + _4003 + 196] = mem[s + _4003 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4003] % 32:
                                    require ext_code.size(address(_3935))
                                    call address(_3935).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3724, address(_3807), 128, mem[_4003 + 164 len mem[_4003] + 32]
                                else:
                                    mem[floor32(mem[_4003]) + _4003 + 196] = mem[floor32(mem[_4003]) + _4003 + -(mem[_4003] % 32) + 228 len mem[_4003] % 32]
                                    require ext_code.size(address(_3935))
                                    call address(_3935).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3724, address(_3807), 128, mem[_4003], mem[_4003 + 196 len floor32(mem[_4003]) + 32]
                        else:
                            if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3874 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _3938 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3938 + 36] = _3724
                                mem[_3938 + 68] = 0
                                mem[_3938 + 100] = address(cd[100])
                                mem[_3938 + 132] = 128
                                mem[_3938 + 164] = mem[_3938]
                                s = 0
                                while s < mem[_3938]:
                                    mem[s + _3938 + 196] = mem[s + _3938 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3938] % 32:
                                    require ext_code.size(address(_3874))
                                    call address(_3874).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3724, 0, address(cd[100]), 128, mem[_3938 + 164 len mem[_3938] + 32]
                                else:
                                    mem[floor32(mem[_3938]) + _3938 + 196] = mem[floor32(mem[_3938]) + _3938 + -(mem[_3938] % 32) + 228 len mem[_3938] % 32]
                                    require ext_code.size(address(_3874))
                                    call address(_3874).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3724, 0, address(cd[100]), 128, mem[_3938], mem[_3938 + 196 len floor32(mem[_3938]) + 32]
                            else:
                                require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3809 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                                _3937 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                                _4007 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4007 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4007 + 36] = _3724
                                mem[_4007 + 68] = 0
                                mem[_4007 + 100] = address(_3809)
                                mem[_4007 + 132] = 128
                                mem[_4007 + 164] = mem[_4007]
                                s = 0
                                while s < mem[_4007]:
                                    mem[s + _4007 + 196] = mem[s + _4007 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4007] % 32:
                                    require ext_code.size(address(_3937))
                                    call address(_3937).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3724, 0, address(_3809), 128, mem[_4007 + 164 len mem[_4007] + 32]
                                else:
                                    mem[floor32(mem[_4007]) + _4007 + 196] = mem[floor32(mem[_4007]) + _4007 + -(mem[_4007] % 32) + 228 len mem[_4007] % 32]
                                    require ext_code.size(address(_3937))
                                    call address(_3937).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3724, 0, address(_3809), 128, mem[_4007], mem[_4007 + 196 len floor32(mem[_4007]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3613 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
                return 32, mem[mem[64] + 32 len (32 * _3613) + 32]
            require ('cd', 4).length >= 32
            if not mem[128]:
                revert with 0, 'TRANSFER_FROM_FAILED'
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] = ('cd', 4).length
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
            mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388] = ('cd', 36).length
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420] = 0
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
                require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    _3725 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3876 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3940 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3940 + 36] = 0
                            mem[_3940 + 68] = _3725
                            mem[_3940 + 100] = address(cd[100])
                            mem[_3940 + 132] = 128
                            mem[_3940 + 164] = mem[_3940]
                            s = 0
                            while s < mem[_3940]:
                                mem[s + _3940 + 196] = mem[s + _3940 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3940] % 32:
                                require ext_code.size(address(_3876))
                                call address(_3876).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3725, address(cd[100]), 128, mem[_3940 + 164 len mem[_3940] + 32]
                            else:
                                mem[floor32(mem[_3940]) + _3940 + 196] = mem[floor32(mem[_3940]) + _3940 + -(mem[_3940] % 32) + 228 len mem[_3940] % 32]
                                require ext_code.size(address(_3876))
                                call address(_3876).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3725, address(cd[100]), 128, mem[_3940], mem[_3940 + 196 len floor32(mem[_3940]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3811 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3939 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4011 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4011 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4011 + 36] = 0
                            mem[_4011 + 68] = _3725
                            mem[_4011 + 100] = address(_3811)
                            mem[_4011 + 132] = 128
                            mem[_4011 + 164] = mem[_4011]
                            s = 0
                            while s < mem[_4011]:
                                mem[s + _4011 + 196] = mem[s + _4011 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4011] % 32:
                                require ext_code.size(address(_3939))
                                call address(_3939).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3725, address(_3811), 128, mem[_4011 + 164 len mem[_4011] + 32]
                            else:
                                mem[floor32(mem[_4011]) + _4011 + 196] = mem[floor32(mem[_4011]) + _4011 + -(mem[_4011] % 32) + 228 len mem[_4011] % 32]
                                require ext_code.size(address(_3939))
                                call address(_3939).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3725, address(_3811), 128, mem[_4011], mem[_4011 + 196 len floor32(mem[_4011]) + 32]
                    else:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3878 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3942 + 36] = _3725
                            mem[_3942 + 68] = 0
                            mem[_3942 + 100] = address(cd[100])
                            mem[_3942 + 132] = 128
                            mem[_3942 + 164] = mem[_3942]
                            s = 0
                            while s < mem[_3942]:
                                mem[s + _3942 + 196] = mem[s + _3942 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3942] % 32:
                                require ext_code.size(address(_3878))
                                call address(_3878).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3725, 0, address(cd[100]), 128, mem[_3942 + 164 len mem[_3942] + 32]
                            else:
                                mem[floor32(mem[_3942]) + _3942 + 196] = mem[floor32(mem[_3942]) + _3942 + -(mem[_3942] % 32) + 228 len mem[_3942] % 32]
                                require ext_code.size(address(_3878))
                                call address(_3878).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3725, 0, address(cd[100]), 128, mem[_3942], mem[_3942 + 196 len floor32(mem[_3942]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3813 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3941 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4015 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4015 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4015 + 36] = _3725
                            mem[_4015 + 68] = 0
                            mem[_4015 + 100] = address(_3813)
                            mem[_4015 + 132] = 128
                            mem[_4015 + 164] = mem[_4015]
                            s = 0
                            while s < mem[_4015]:
                                mem[s + _4015 + 196] = mem[s + _4015 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4015] % 32:
                                require ext_code.size(address(_3941))
                                call address(_3941).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3725, 0, address(_3813), 128, mem[_4015 + 164 len mem[_4015] + 32]
                            else:
                                mem[floor32(mem[_4015]) + _4015 + 196] = mem[floor32(mem[_4015]) + _4015 + -(mem[_4015] % 32) + 228 len mem[_4015] % 32]
                                require ext_code.size(address(_3941))
                                call address(_3941).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3725, 0, address(_3813), 128, mem[_4015], mem[_4015 + 196 len floor32(mem[_4015]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    _3726 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3880 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3944 + 36] = 0
                            mem[_3944 + 68] = _3726
                            mem[_3944 + 100] = address(cd[100])
                            mem[_3944 + 132] = 128
                            mem[_3944 + 164] = mem[_3944]
                            s = 0
                            while s < mem[_3944]:
                                mem[s + _3944 + 196] = mem[s + _3944 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3944] % 32:
                                require ext_code.size(address(_3880))
                                call address(_3880).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3726, address(cd[100]), 128, mem[_3944 + 164 len mem[_3944] + 32]
                            else:
                                mem[floor32(mem[_3944]) + _3944 + 196] = mem[floor32(mem[_3944]) + _3944 + -(mem[_3944] % 32) + 228 len mem[_3944] % 32]
                                require ext_code.size(address(_3880))
                                call address(_3880).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3726, address(cd[100]), 128, mem[_3944], mem[_3944 + 196 len floor32(mem[_3944]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3815 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3943 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4019 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4019 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4019 + 36] = 0
                            mem[_4019 + 68] = _3726
                            mem[_4019 + 100] = address(_3815)
                            mem[_4019 + 132] = 128
                            mem[_4019 + 164] = mem[_4019]
                            s = 0
                            while s < mem[_4019]:
                                mem[s + _4019 + 196] = mem[s + _4019 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4019] % 32:
                                require ext_code.size(address(_3943))
                                call address(_3943).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3726, address(_3815), 128, mem[_4019 + 164 len mem[_4019] + 32]
                            else:
                                mem[floor32(mem[_4019]) + _4019 + 196] = mem[floor32(mem[_4019]) + _4019 + -(mem[_4019] % 32) + 228 len mem[_4019] % 32]
                                require ext_code.size(address(_3943))
                                call address(_3943).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3726, address(_3815), 128, mem[_4019], mem[_4019 + 196 len floor32(mem[_4019]) + 32]
                    else:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3882 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3946 + 36] = _3726
                            mem[_3946 + 68] = 0
                            mem[_3946 + 100] = address(cd[100])
                            mem[_3946 + 132] = 128
                            mem[_3946 + 164] = mem[_3946]
                            s = 0
                            while s < mem[_3946]:
                                mem[s + _3946 + 196] = mem[s + _3946 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3946] % 32:
                                require ext_code.size(address(_3882))
                                call address(_3882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3726, 0, address(cd[100]), 128, mem[_3946 + 164 len mem[_3946] + 32]
                            else:
                                mem[floor32(mem[_3946]) + _3946 + 196] = mem[floor32(mem[_3946]) + _3946 + -(mem[_3946] % 32) + 228 len mem[_3946] % 32]
                                require ext_code.size(address(_3882))
                                call address(_3882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3726, 0, address(cd[100]), 128, mem[_3946], mem[_3946 + 196 len floor32(mem[_3946]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3817 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3945 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4023 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4023 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4023 + 36] = _3726
                            mem[_4023 + 68] = 0
                            mem[_4023 + 100] = address(_3817)
                            mem[_4023 + 132] = 128
                            mem[_4023 + 164] = mem[_4023]
                            s = 0
                            while s < mem[_4023]:
                                mem[s + _4023 + 196] = mem[s + _4023 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4023] % 32:
                                require ext_code.size(address(_3945))
                                call address(_3945).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3726, 0, address(_3817), 128, mem[_4023 + 164 len mem[_4023] + 32]
                            else:
                                mem[floor32(mem[_4023]) + _4023 + 196] = mem[floor32(mem[_4023]) + _4023 + -(mem[_4023] % 32) + 228 len mem[_4023] % 32]
                                require ext_code.size(address(_3945))
                                call address(_3945).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3726, 0, address(_3817), 128, mem[_4023], mem[_4023 + 196 len floor32(mem[_4023]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _3617 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
            return 32, mem[mem[64] + 32 len (32 * _3617) + 32]
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] = return_data.size
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FROM_FAILED'
        if not return_data.size:
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] = ('cd', 4).length
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
            mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389] = ('cd', 36).length
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421] = 0
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
                require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    _3727 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3884 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _3948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3948 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3948 + 36] = 0
                            mem[_3948 + 68] = _3727
                            mem[_3948 + 100] = address(cd[100])
                            mem[_3948 + 132] = 128
                            mem[_3948 + 164] = mem[_3948]
                            s = 0
                            while s < mem[_3948]:
                                mem[s + _3948 + 196] = mem[s + _3948 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3948] % 32:
                                require ext_code.size(address(_3884))
                                call address(_3884).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3727, address(cd[100]), 128, mem[_3948 + 164 len mem[_3948] + 32]
                            else:
                                mem[floor32(mem[_3948]) + _3948 + 196] = mem[floor32(mem[_3948]) + _3948 + -(mem[_3948] % 32) + 228 len mem[_3948] % 32]
                                require ext_code.size(address(_3884))
                                call address(_3884).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3727, address(cd[100]), 128, mem[_3948], mem[_3948 + 196 len floor32(mem[_3948]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3819 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3947 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _4027 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4027 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4027 + 36] = 0
                            mem[_4027 + 68] = _3727
                            mem[_4027 + 100] = address(_3819)
                            mem[_4027 + 132] = 128
                            mem[_4027 + 164] = mem[_4027]
                            s = 0
                            while s < mem[_4027]:
                                mem[s + _4027 + 196] = mem[s + _4027 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4027] % 32:
                                require ext_code.size(address(_3947))
                                call address(_3947).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3727, address(_3819), 128, mem[_4027 + 164 len mem[_4027] + 32]
                            else:
                                mem[floor32(mem[_4027]) + _4027 + 196] = mem[floor32(mem[_4027]) + _4027 + -(mem[_4027] % 32) + 228 len mem[_4027] % 32]
                                require ext_code.size(address(_3947))
                                call address(_3947).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3727, address(_3819), 128, mem[_4027], mem[_4027 + 196 len floor32(mem[_4027]) + 32]
                    else:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3886 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _3950 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3950 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3950 + 36] = _3727
                            mem[_3950 + 68] = 0
                            mem[_3950 + 100] = address(cd[100])
                            mem[_3950 + 132] = 128
                            mem[_3950 + 164] = mem[_3950]
                            s = 0
                            while s < mem[_3950]:
                                mem[s + _3950 + 196] = mem[s + _3950 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3950] % 32:
                                require ext_code.size(address(_3886))
                                call address(_3886).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3727, 0, address(cd[100]), 128, mem[_3950 + 164 len mem[_3950] + 32]
                            else:
                                mem[floor32(mem[_3950]) + _3950 + 196] = mem[floor32(mem[_3950]) + _3950 + -(mem[_3950] % 32) + 228 len mem[_3950] % 32]
                                require ext_code.size(address(_3886))
                                call address(_3886).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3727, 0, address(cd[100]), 128, mem[_3950], mem[_3950 + 196 len floor32(mem[_3950]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3821 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3949 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _4031 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4031 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4031 + 36] = _3727
                            mem[_4031 + 68] = 0
                            mem[_4031 + 100] = address(_3821)
                            mem[_4031 + 132] = 128
                            mem[_4031 + 164] = mem[_4031]
                            s = 0
                            while s < mem[_4031]:
                                mem[s + _4031 + 196] = mem[s + _4031 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4031] % 32:
                                require ext_code.size(address(_3949))
                                call address(_3949).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3727, 0, address(_3821), 128, mem[_4031 + 164 len mem[_4031] + 32]
                            else:
                                mem[floor32(mem[_4031]) + _4031 + 196] = mem[floor32(mem[_4031]) + _4031 + -(mem[_4031] % 32) + 228 len mem[_4031] % 32]
                                require ext_code.size(address(_3949))
                                call address(_3949).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3727, 0, address(_3821), 128, mem[_4031], mem[_4031 + 196 len floor32(mem[_4031]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    _3728 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3888 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _3952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3952 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3952 + 36] = 0
                            mem[_3952 + 68] = _3728
                            mem[_3952 + 100] = address(cd[100])
                            mem[_3952 + 132] = 128
                            mem[_3952 + 164] = mem[_3952]
                            s = 0
                            while s < mem[_3952]:
                                mem[s + _3952 + 196] = mem[s + _3952 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3952] % 32:
                                require ext_code.size(address(_3888))
                                call address(_3888).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3728, address(cd[100]), 128, mem[_3952 + 164 len mem[_3952] + 32]
                            else:
                                mem[floor32(mem[_3952]) + _3952 + 196] = mem[floor32(mem[_3952]) + _3952 + -(mem[_3952] % 32) + 228 len mem[_3952] % 32]
                                require ext_code.size(address(_3888))
                                call address(_3888).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3728, address(cd[100]), 128, mem[_3952], mem[_3952 + 196 len floor32(mem[_3952]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3823 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3951 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _4035 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4035 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4035 + 36] = 0
                            mem[_4035 + 68] = _3728
                            mem[_4035 + 100] = address(_3823)
                            mem[_4035 + 132] = 128
                            mem[_4035 + 164] = mem[_4035]
                            s = 0
                            while s < mem[_4035]:
                                mem[s + _4035 + 196] = mem[s + _4035 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4035] % 32:
                                require ext_code.size(address(_3951))
                                call address(_3951).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3728, address(_3823), 128, mem[_4035 + 164 len mem[_4035] + 32]
                            else:
                                mem[floor32(mem[_4035]) + _4035 + 196] = mem[floor32(mem[_4035]) + _4035 + -(mem[_4035] % 32) + 228 len mem[_4035] % 32]
                                require ext_code.size(address(_3951))
                                call address(_3951).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3728, address(_3823), 128, mem[_4035], mem[_4035 + 196 len floor32(mem[_4035]) + 32]
                    else:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3890 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _3954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3954 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3954 + 36] = _3728
                            mem[_3954 + 68] = 0
                            mem[_3954 + 100] = address(cd[100])
                            mem[_3954 + 132] = 128
                            mem[_3954 + 164] = mem[_3954]
                            s = 0
                            while s < mem[_3954]:
                                mem[s + _3954 + 196] = mem[s + _3954 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3954] % 32:
                                require ext_code.size(address(_3890))
                                call address(_3890).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3728, 0, address(cd[100]), 128, mem[_3954 + 164 len mem[_3954] + 32]
                            else:
                                mem[floor32(mem[_3954]) + _3954 + 196] = mem[floor32(mem[_3954]) + _3954 + -(mem[_3954] % 32) + 228 len mem[_3954] % 32]
                                require ext_code.size(address(_3890))
                                call address(_3890).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3728, 0, address(cd[100]), 128, mem[_3954], mem[_3954 + 196 len floor32(mem[_3954]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3825 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                            _3953 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                            _4039 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4039 + 36] = _3728
                            mem[_4039 + 68] = 0
                            mem[_4039 + 100] = address(_3825)
                            mem[_4039 + 132] = 128
                            mem[_4039 + 164] = mem[_4039]
                            s = 0
                            while s < mem[_4039]:
                                mem[s + _4039 + 196] = mem[s + _4039 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4039] % 32:
                                require ext_code.size(address(_3953))
                                call address(_3953).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3728, 0, address(_3825), 128, mem[_4039 + 164 len mem[_4039] + 32]
                            else:
                                mem[floor32(mem[_4039]) + _4039 + 196] = mem[floor32(mem[_4039]) + _4039 + -(mem[_4039] % 32) + 228 len mem[_4039] % 32]
                                require ext_code.size(address(_3953))
                                call address(_3953).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3728, 0, address(_3825), 128, mem[_4039], mem[_4039 + 196 len floor32(mem[_4039]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _3621 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
            return 32, mem[mem[64] + 32 len (32 * _3621) + 32]
        require return_data.size >= 32
        if not mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]:
            revert with 0, 'TRANSFER_FROM_FAILED'
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] = ('cd', 4).length
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421
        mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389] = ('cd', 36).length
        mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421] = 0
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
            require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3729 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3892 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3956 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3956 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3956 + 36] = 0
                        mem[_3956 + 68] = _3729
                        mem[_3956 + 100] = address(cd[100])
                        mem[_3956 + 132] = 128
                        mem[_3956 + 164] = mem[_3956]
                        s = 0
                        while s < mem[_3956]:
                            mem[s + _3956 + 196] = mem[s + _3956 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3956] % 32:
                            require ext_code.size(address(_3892))
                            call address(_3892).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3729, address(cd[100]), 128, mem[_3956 + 164 len mem[_3956] + 32]
                        else:
                            mem[floor32(mem[_3956]) + _3956 + 196] = mem[floor32(mem[_3956]) + _3956 + -(mem[_3956] % 32) + 228 len mem[_3956] % 32]
                            require ext_code.size(address(_3892))
                            call address(_3892).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3729, address(cd[100]), 128, mem[_3956], mem[_3956 + 196 len floor32(mem[_3956]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3827 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3955 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4043 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4043 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4043 + 36] = 0
                        mem[_4043 + 68] = _3729
                        mem[_4043 + 100] = address(_3827)
                        mem[_4043 + 132] = 128
                        mem[_4043 + 164] = mem[_4043]
                        s = 0
                        while s < mem[_4043]:
                            mem[s + _4043 + 196] = mem[s + _4043 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4043] % 32:
                            require ext_code.size(address(_3955))
                            call address(_3955).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3729, address(_3827), 128, mem[_4043 + 164 len mem[_4043] + 32]
                        else:
                            mem[floor32(mem[_4043]) + _4043 + 196] = mem[floor32(mem[_4043]) + _4043 + -(mem[_4043] % 32) + 228 len mem[_4043] % 32]
                            require ext_code.size(address(_3955))
                            call address(_3955).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3729, address(_3827), 128, mem[_4043], mem[_4043 + 196 len floor32(mem[_4043]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3894 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3958 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3958 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3958 + 36] = _3729
                        mem[_3958 + 68] = 0
                        mem[_3958 + 100] = address(cd[100])
                        mem[_3958 + 132] = 128
                        mem[_3958 + 164] = mem[_3958]
                        s = 0
                        while s < mem[_3958]:
                            mem[s + _3958 + 196] = mem[s + _3958 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3958] % 32:
                            require ext_code.size(address(_3894))
                            call address(_3894).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3729, 0, address(cd[100]), 128, mem[_3958 + 164 len mem[_3958] + 32]
                        else:
                            mem[floor32(mem[_3958]) + _3958 + 196] = mem[floor32(mem[_3958]) + _3958 + -(mem[_3958] % 32) + 228 len mem[_3958] % 32]
                            require ext_code.size(address(_3894))
                            call address(_3894).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3729, 0, address(cd[100]), 128, mem[_3958], mem[_3958 + 196 len floor32(mem[_3958]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3829 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3957 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4047 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4047 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4047 + 36] = _3729
                        mem[_4047 + 68] = 0
                        mem[_4047 + 100] = address(_3829)
                        mem[_4047 + 132] = 128
                        mem[_4047 + 164] = mem[_4047]
                        s = 0
                        while s < mem[_4047]:
                            mem[s + _4047 + 196] = mem[s + _4047 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4047] % 32:
                            require ext_code.size(address(_3957))
                            call address(_3957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3729, 0, address(_3829), 128, mem[_4047 + 164 len mem[_4047] + 32]
                        else:
                            mem[floor32(mem[_4047]) + _4047 + 196] = mem[floor32(mem[_4047]) + _4047 + -(mem[_4047] % 32) + 228 len mem[_4047] % 32]
                            require ext_code.size(address(_3957))
                            call address(_3957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3729, 0, address(_3829), 128, mem[_4047], mem[_4047 + 196 len floor32(mem[_4047]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3730 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3896 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3960 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3960 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3960 + 36] = 0
                        mem[_3960 + 68] = _3730
                        mem[_3960 + 100] = address(cd[100])
                        mem[_3960 + 132] = 128
                        mem[_3960 + 164] = mem[_3960]
                        s = 0
                        while s < mem[_3960]:
                            mem[s + _3960 + 196] = mem[s + _3960 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3960] % 32:
                            require ext_code.size(address(_3896))
                            call address(_3896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3730, address(cd[100]), 128, mem[_3960 + 164 len mem[_3960] + 32]
                        else:
                            mem[floor32(mem[_3960]) + _3960 + 196] = mem[floor32(mem[_3960]) + _3960 + -(mem[_3960] % 32) + 228 len mem[_3960] % 32]
                            require ext_code.size(address(_3896))
                            call address(_3896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3730, address(cd[100]), 128, mem[_3960], mem[_3960 + 196 len floor32(mem[_3960]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3831 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3959 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4051 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4051 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4051 + 36] = 0
                        mem[_4051 + 68] = _3730
                        mem[_4051 + 100] = address(_3831)
                        mem[_4051 + 132] = 128
                        mem[_4051 + 164] = mem[_4051]
                        s = 0
                        while s < mem[_4051]:
                            mem[s + _4051 + 196] = mem[s + _4051 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4051] % 32:
                            require ext_code.size(address(_3959))
                            call address(_3959).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3730, address(_3831), 128, mem[_4051 + 164 len mem[_4051] + 32]
                        else:
                            mem[floor32(mem[_4051]) + _4051 + 196] = mem[floor32(mem[_4051]) + _4051 + -(mem[_4051] % 32) + 228 len mem[_4051] % 32]
                            require ext_code.size(address(_3959))
                            call address(_3959).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3730, address(_3831), 128, mem[_4051], mem[_4051 + 196 len floor32(mem[_4051]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3898 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3962 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3962 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3962 + 36] = _3730
                        mem[_3962 + 68] = 0
                        mem[_3962 + 100] = address(cd[100])
                        mem[_3962 + 132] = 128
                        mem[_3962 + 164] = mem[_3962]
                        s = 0
                        while s < mem[_3962]:
                            mem[s + _3962 + 196] = mem[s + _3962 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3962] % 32:
                            require ext_code.size(address(_3898))
                            call address(_3898).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3730, 0, address(cd[100]), 128, mem[_3962 + 164 len mem[_3962] + 32]
                        else:
                            mem[floor32(mem[_3962]) + _3962 + 196] = mem[floor32(mem[_3962]) + _3962 + -(mem[_3962] % 32) + 228 len mem[_3962] % 32]
                            require ext_code.size(address(_3898))
                            call address(_3898).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3730, 0, address(cd[100]), 128, mem[_3962], mem[_3962 + 196 len floor32(mem[_3962]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3833 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3961 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4055 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4055 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4055 + 36] = _3730
                        mem[_4055 + 68] = 0
                        mem[_4055 + 100] = address(_3833)
                        mem[_4055 + 132] = 128
                        mem[_4055 + 164] = mem[_4055]
                        s = 0
                        while s < mem[_4055]:
                            mem[s + _4055 + 196] = mem[s + _4055 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4055] % 32:
                            require ext_code.size(address(_3961))
                            call address(_3961).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3730, 0, address(_3833), 128, mem[_4055 + 164 len mem[_4055] + 32]
                        else:
                            mem[floor32(mem[_4055]) + _4055 + 196] = mem[floor32(mem[_4055]) + _4055 + -(mem[_4055] % 32) + 228 len mem[_4055] % 32]
                            require ext_code.size(address(_3961))
                            call address(_3961).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3730, 0, address(_3833), 128, mem[_4055], mem[_4055 + 196 len floor32(mem[_4055]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _3625 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
        return 32, mem[mem[64] + 32 len (32 * _3625) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require 0 < ('cd', 4).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = cd[132]
    idx = 0
    while idx < ('cd', 4).length - 1:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require idx < ('cd', 4).length
        _1337 = mem[(32 * idx) + 128]
        require idx + 1 < ('cd', 4).length
        _1344 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= 0:
                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
            if address(_1337) == address(_1337):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                    if Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                    if Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= 0:
                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
            if address(_1344) == address(_1337):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                    if Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                    if Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] / mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192])
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    if mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] < cd[164]:
        revert with 0, 'insufficient output'
    require 0 < ('cd', 4).length
    require 0 < ('cd', 36).length
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = msg.sender
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = address(('cd', 36)[0])
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 100
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 96] = 0, msg.sender, address(('cd', 36)[0]), mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324 len 28]
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 480 len 4] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 344 len 4]
    call address(('cd', 4)[0]) with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324], address(('cd', 36)[0]), mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324 len 28] >> 224, mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TRANSFER_FROM_FAILED'
        if not ('cd', 4).length:
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] = ('cd', 4).length
            mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
            mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388] = ('cd', 36).length
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420] = 0
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
                require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    _3731 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3900 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3964 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3964 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3964 + 36] = 0
                            mem[_3964 + 68] = _3731
                            mem[_3964 + 100] = address(cd[100])
                            mem[_3964 + 132] = 128
                            mem[_3964 + 164] = mem[_3964]
                            s = 0
                            while s < mem[_3964]:
                                mem[s + _3964 + 196] = mem[s + _3964 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3964] % 32:
                                require ext_code.size(address(_3900))
                                call address(_3900).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3731, address(cd[100]), 128, mem[_3964 + 164 len mem[_3964] + 32]
                            else:
                                mem[floor32(mem[_3964]) + _3964 + 196] = mem[floor32(mem[_3964]) + _3964 + -(mem[_3964] % 32) + 228 len mem[_3964] % 32]
                                require ext_code.size(address(_3900))
                                call address(_3900).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3731, address(cd[100]), 128, mem[_3964], mem[_3964 + 196 len floor32(mem[_3964]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3835 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3963 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4059 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4059 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4059 + 36] = 0
                            mem[_4059 + 68] = _3731
                            mem[_4059 + 100] = address(_3835)
                            mem[_4059 + 132] = 128
                            mem[_4059 + 164] = mem[_4059]
                            s = 0
                            while s < mem[_4059]:
                                mem[s + _4059 + 196] = mem[s + _4059 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4059] % 32:
                                require ext_code.size(address(_3963))
                                call address(_3963).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3731, address(_3835), 128, mem[_4059 + 164 len mem[_4059] + 32]
                            else:
                                mem[floor32(mem[_4059]) + _4059 + 196] = mem[floor32(mem[_4059]) + _4059 + -(mem[_4059] % 32) + 228 len mem[_4059] % 32]
                                require ext_code.size(address(_3963))
                                call address(_3963).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3731, address(_3835), 128, mem[_4059], mem[_4059 + 196 len floor32(mem[_4059]) + 32]
                    else:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3902 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3966 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3966 + 36] = _3731
                            mem[_3966 + 68] = 0
                            mem[_3966 + 100] = address(cd[100])
                            mem[_3966 + 132] = 128
                            mem[_3966 + 164] = mem[_3966]
                            s = 0
                            while s < mem[_3966]:
                                mem[s + _3966 + 196] = mem[s + _3966 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3966] % 32:
                                require ext_code.size(address(_3902))
                                call address(_3902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3731, 0, address(cd[100]), 128, mem[_3966 + 164 len mem[_3966] + 32]
                            else:
                                mem[floor32(mem[_3966]) + _3966 + 196] = mem[floor32(mem[_3966]) + _3966 + -(mem[_3966] % 32) + 228 len mem[_3966] % 32]
                                require ext_code.size(address(_3902))
                                call address(_3902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3731, 0, address(cd[100]), 128, mem[_3966], mem[_3966 + 196 len floor32(mem[_3966]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3837 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3965 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4063 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4063 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4063 + 36] = _3731
                            mem[_4063 + 68] = 0
                            mem[_4063 + 100] = address(_3837)
                            mem[_4063 + 132] = 128
                            mem[_4063 + 164] = mem[_4063]
                            s = 0
                            while s < mem[_4063]:
                                mem[s + _4063 + 196] = mem[s + _4063 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4063] % 32:
                                require ext_code.size(address(_3965))
                                call address(_3965).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3731, 0, address(_3837), 128, mem[_4063 + 164 len mem[_4063] + 32]
                            else:
                                mem[floor32(mem[_4063]) + _4063 + 196] = mem[floor32(mem[_4063]) + _4063 + -(mem[_4063] % 32) + 228 len mem[_4063] % 32]
                                require ext_code.size(address(_3965))
                                call address(_3965).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3731, 0, address(_3837), 128, mem[_4063], mem[_4063 + 196 len floor32(mem[_4063]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    _3732 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3904 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3968 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3968 + 36] = 0
                            mem[_3968 + 68] = _3732
                            mem[_3968 + 100] = address(cd[100])
                            mem[_3968 + 132] = 128
                            mem[_3968 + 164] = mem[_3968]
                            s = 0
                            while s < mem[_3968]:
                                mem[s + _3968 + 196] = mem[s + _3968 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3968] % 32:
                                require ext_code.size(address(_3904))
                                call address(_3904).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3732, address(cd[100]), 128, mem[_3968 + 164 len mem[_3968] + 32]
                            else:
                                mem[floor32(mem[_3968]) + _3968 + 196] = mem[floor32(mem[_3968]) + _3968 + -(mem[_3968] % 32) + 228 len mem[_3968] % 32]
                                require ext_code.size(address(_3904))
                                call address(_3904).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3732, address(cd[100]), 128, mem[_3968], mem[_3968 + 196 len floor32(mem[_3968]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3839 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3967 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4067 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4067 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4067 + 36] = 0
                            mem[_4067 + 68] = _3732
                            mem[_4067 + 100] = address(_3839)
                            mem[_4067 + 132] = 128
                            mem[_4067 + 164] = mem[_4067]
                            s = 0
                            while s < mem[_4067]:
                                mem[s + _4067 + 196] = mem[s + _4067 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4067] % 32:
                                require ext_code.size(address(_3967))
                                call address(_3967).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3732, address(_3839), 128, mem[_4067 + 164 len mem[_4067] + 32]
                            else:
                                mem[floor32(mem[_4067]) + _4067 + 196] = mem[floor32(mem[_4067]) + _4067 + -(mem[_4067] % 32) + 228 len mem[_4067] % 32]
                                require ext_code.size(address(_3967))
                                call address(_3967).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3732, address(_3839), 128, mem[_4067], mem[_4067 + 196 len floor32(mem[_4067]) + 32]
                    else:
                        if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3906 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _3970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3970 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3970 + 36] = _3732
                            mem[_3970 + 68] = 0
                            mem[_3970 + 100] = address(cd[100])
                            mem[_3970 + 132] = 128
                            mem[_3970 + 164] = mem[_3970]
                            s = 0
                            while s < mem[_3970]:
                                mem[s + _3970 + 196] = mem[s + _3970 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3970] % 32:
                                require ext_code.size(address(_3906))
                                call address(_3906).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3732, 0, address(cd[100]), 128, mem[_3970 + 164 len mem[_3970] + 32]
                            else:
                                mem[floor32(mem[_3970]) + _3970 + 196] = mem[floor32(mem[_3970]) + _3970 + -(mem[_3970] % 32) + 228 len mem[_3970] % 32]
                                require ext_code.size(address(_3906))
                                call address(_3906).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3732, 0, address(cd[100]), 128, mem[_3970], mem[_3970 + 196 len floor32(mem[_3970]) + 32]
                        else:
                            require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3841 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                            _3969 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                            _4071 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4071 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4071 + 36] = _3732
                            mem[_4071 + 68] = 0
                            mem[_4071 + 100] = address(_3841)
                            mem[_4071 + 132] = 128
                            mem[_4071 + 164] = mem[_4071]
                            s = 0
                            while s < mem[_4071]:
                                mem[s + _4071 + 196] = mem[s + _4071 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4071] % 32:
                                require ext_code.size(address(_3969))
                                call address(_3969).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3732, 0, address(_3841), 128, mem[_4071 + 164 len mem[_4071] + 32]
                            else:
                                mem[floor32(mem[_4071]) + _4071 + 196] = mem[floor32(mem[_4071]) + _4071 + -(mem[_4071] % 32) + 228 len mem[_4071] % 32]
                                require ext_code.size(address(_3969))
                                call address(_3969).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3732, 0, address(_3841), 128, mem[_4071], mem[_4071 + 196 len floor32(mem[_4071]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _3629 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
            return 32, mem[mem[64] + 32 len (32 * _3629) + 32]
        require ('cd', 4).length >= 32
        if not mem[128]:
            revert with 0, 'TRANSFER_FROM_FAILED'
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] = ('cd', 4).length
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420
        mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388] = ('cd', 36).length
        mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420] = 0
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
            require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356]
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3733 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3908 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _3972 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3972 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3972 + 36] = 0
                        mem[_3972 + 68] = _3733
                        mem[_3972 + 100] = address(cd[100])
                        mem[_3972 + 132] = 128
                        mem[_3972 + 164] = mem[_3972]
                        s = 0
                        while s < mem[_3972]:
                            mem[s + _3972 + 196] = mem[s + _3972 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3972] % 32:
                            require ext_code.size(address(_3908))
                            call address(_3908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3733, address(cd[100]), 128, mem[_3972 + 164 len mem[_3972] + 32]
                        else:
                            mem[floor32(mem[_3972]) + _3972 + 196] = mem[floor32(mem[_3972]) + _3972 + -(mem[_3972] % 32) + 228 len mem[_3972] % 32]
                            require ext_code.size(address(_3908))
                            call address(_3908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3733, address(cd[100]), 128, mem[_3972], mem[_3972 + 196 len floor32(mem[_3972]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3843 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3971 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _4075 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4075 + 36] = 0
                        mem[_4075 + 68] = _3733
                        mem[_4075 + 100] = address(_3843)
                        mem[_4075 + 132] = 128
                        mem[_4075 + 164] = mem[_4075]
                        s = 0
                        while s < mem[_4075]:
                            mem[s + _4075 + 196] = mem[s + _4075 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4075] % 32:
                            require ext_code.size(address(_3971))
                            call address(_3971).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3733, address(_3843), 128, mem[_4075 + 164 len mem[_4075] + 32]
                        else:
                            mem[floor32(mem[_4075]) + _4075 + 196] = mem[floor32(mem[_4075]) + _4075 + -(mem[_4075] % 32) + 228 len mem[_4075] % 32]
                            require ext_code.size(address(_3971))
                            call address(_3971).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3733, address(_3843), 128, mem[_4075], mem[_4075 + 196 len floor32(mem[_4075]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3910 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _3974 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3974 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3974 + 36] = _3733
                        mem[_3974 + 68] = 0
                        mem[_3974 + 100] = address(cd[100])
                        mem[_3974 + 132] = 128
                        mem[_3974 + 164] = mem[_3974]
                        s = 0
                        while s < mem[_3974]:
                            mem[s + _3974 + 196] = mem[s + _3974 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3974] % 32:
                            require ext_code.size(address(_3910))
                            call address(_3910).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3733, 0, address(cd[100]), 128, mem[_3974 + 164 len mem[_3974] + 32]
                        else:
                            mem[floor32(mem[_3974]) + _3974 + 196] = mem[floor32(mem[_3974]) + _3974 + -(mem[_3974] % 32) + 228 len mem[_3974] % 32]
                            require ext_code.size(address(_3910))
                            call address(_3910).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3733, 0, address(cd[100]), 128, mem[_3974], mem[_3974 + 196 len floor32(mem[_3974]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3845 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3973 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _4079 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4079 + 36] = _3733
                        mem[_4079 + 68] = 0
                        mem[_4079 + 100] = address(_3845)
                        mem[_4079 + 132] = 128
                        mem[_4079 + 164] = mem[_4079]
                        s = 0
                        while s < mem[_4079]:
                            mem[s + _4079 + 196] = mem[s + _4079 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4079] % 32:
                            require ext_code.size(address(_3973))
                            call address(_3973).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3733, 0, address(_3845), 128, mem[_4079 + 164 len mem[_4079] + 32]
                        else:
                            mem[floor32(mem[_4079]) + _4079 + 196] = mem[floor32(mem[_4079]) + _4079 + -(mem[_4079] % 32) + 228 len mem[_4079] % 32]
                            require ext_code.size(address(_3973))
                            call address(_3973).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3733, 0, address(_3845), 128, mem[_4079], mem[_4079 + 196 len floor32(mem[_4079]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3734 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 400 len 20]:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3912 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _3976 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3976 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3976 + 36] = 0
                        mem[_3976 + 68] = _3734
                        mem[_3976 + 100] = address(cd[100])
                        mem[_3976 + 132] = 128
                        mem[_3976 + 164] = mem[_3976]
                        s = 0
                        while s < mem[_3976]:
                            mem[s + _3976 + 196] = mem[s + _3976 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3976] % 32:
                            require ext_code.size(address(_3912))
                            call address(_3912).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3734, address(cd[100]), 128, mem[_3976 + 164 len mem[_3976] + 32]
                        else:
                            mem[floor32(mem[_3976]) + _3976 + 196] = mem[floor32(mem[_3976]) + _3976 + -(mem[_3976] % 32) + 228 len mem[_3976] % 32]
                            require ext_code.size(address(_3912))
                            call address(_3912).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3734, address(cd[100]), 128, mem[_3976], mem[_3976 + 196 len floor32(mem[_3976]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3847 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3975 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _4083 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4083 + 36] = 0
                        mem[_4083 + 68] = _3734
                        mem[_4083 + 100] = address(_3847)
                        mem[_4083 + 132] = 128
                        mem[_4083 + 164] = mem[_4083]
                        s = 0
                        while s < mem[_4083]:
                            mem[s + _4083 + 196] = mem[s + _4083 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4083] % 32:
                            require ext_code.size(address(_3975))
                            call address(_3975).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3734, address(_3847), 128, mem[_4083 + 164 len mem[_4083] + 32]
                        else:
                            mem[floor32(mem[_4083]) + _4083 + 196] = mem[floor32(mem[_4083]) + _4083 + -(mem[_4083] % 32) + 228 len mem[_4083] % 32]
                            require ext_code.size(address(_3975))
                            call address(_3975).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3734, address(_3847), 128, mem[_4083], mem[_4083 + 196 len floor32(mem[_4083]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3914 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _3978 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3978 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3978 + 36] = _3734
                        mem[_3978 + 68] = 0
                        mem[_3978 + 100] = address(cd[100])
                        mem[_3978 + 132] = 128
                        mem[_3978 + 164] = mem[_3978]
                        s = 0
                        while s < mem[_3978]:
                            mem[s + _3978 + 196] = mem[s + _3978 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3978] % 32:
                            require ext_code.size(address(_3914))
                            call address(_3914).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3734, 0, address(cd[100]), 128, mem[_3978 + 164 len mem[_3978] + 32]
                        else:
                            mem[floor32(mem[_3978]) + _3978 + 196] = mem[floor32(mem[_3978]) + _3978 + -(mem[_3978] % 32) + 228 len mem[_3978] % 32]
                            require ext_code.size(address(_3914))
                            call address(_3914).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3734, 0, address(cd[100]), 128, mem[_3978], mem[_3978 + 196 len floor32(mem[_3978]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3849 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]
                        _3977 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 420]
                        _4087 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4087 + 36] = _3734
                        mem[_4087 + 68] = 0
                        mem[_4087 + 100] = address(_3849)
                        mem[_4087 + 132] = 128
                        mem[_4087 + 164] = mem[_4087]
                        s = 0
                        while s < mem[_4087]:
                            mem[s + _4087 + 196] = mem[s + _4087 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4087] % 32:
                            require ext_code.size(address(_3977))
                            call address(_3977).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3734, 0, address(_3849), 128, mem[_4087 + 164 len mem[_4087] + 32]
                        else:
                            mem[floor32(mem[_4087]) + _4087 + 196] = mem[floor32(mem[_4087]) + _4087 + -(mem[_4087] % 32) + 228 len mem[_4087] % 32]
                            require ext_code.size(address(_3977))
                            call address(_3977).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3734, 0, address(_3849), 128, mem[_4087], mem[_4087 + 196 len floor32(mem[_4087]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _3633 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
        return 32, mem[mem[64] + 32 len (32 * _3633) + 32]
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356] = return_data.size
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TRANSFER_FROM_FAILED'
    if not return_data.size:
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] = ('cd', 4).length
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421
        mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389] = ('cd', 36).length
        mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421] = 0
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
            require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3735 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3916 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3980 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3980 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3980 + 36] = 0
                        mem[_3980 + 68] = _3735
                        mem[_3980 + 100] = address(cd[100])
                        mem[_3980 + 132] = 128
                        mem[_3980 + 164] = mem[_3980]
                        s = 0
                        while s < mem[_3980]:
                            mem[s + _3980 + 196] = mem[s + _3980 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3980] % 32:
                            require ext_code.size(address(_3916))
                            call address(_3916).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3735, address(cd[100]), 128, mem[_3980 + 164 len mem[_3980] + 32]
                        else:
                            mem[floor32(mem[_3980]) + _3980 + 196] = mem[floor32(mem[_3980]) + _3980 + -(mem[_3980] % 32) + 228 len mem[_3980] % 32]
                            require ext_code.size(address(_3916))
                            call address(_3916).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3735, address(cd[100]), 128, mem[_3980], mem[_3980 + 196 len floor32(mem[_3980]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3851 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3979 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4091 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4091 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4091 + 36] = 0
                        mem[_4091 + 68] = _3735
                        mem[_4091 + 100] = address(_3851)
                        mem[_4091 + 132] = 128
                        mem[_4091 + 164] = mem[_4091]
                        s = 0
                        while s < mem[_4091]:
                            mem[s + _4091 + 196] = mem[s + _4091 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4091] % 32:
                            require ext_code.size(address(_3979))
                            call address(_3979).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3735, address(_3851), 128, mem[_4091 + 164 len mem[_4091] + 32]
                        else:
                            mem[floor32(mem[_4091]) + _4091 + 196] = mem[floor32(mem[_4091]) + _4091 + -(mem[_4091] % 32) + 228 len mem[_4091] % 32]
                            require ext_code.size(address(_3979))
                            call address(_3979).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3735, address(_3851), 128, mem[_4091], mem[_4091 + 196 len floor32(mem[_4091]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3918 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3982 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3982 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3982 + 36] = _3735
                        mem[_3982 + 68] = 0
                        mem[_3982 + 100] = address(cd[100])
                        mem[_3982 + 132] = 128
                        mem[_3982 + 164] = mem[_3982]
                        s = 0
                        while s < mem[_3982]:
                            mem[s + _3982 + 196] = mem[s + _3982 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3982] % 32:
                            require ext_code.size(address(_3918))
                            call address(_3918).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3735, 0, address(cd[100]), 128, mem[_3982 + 164 len mem[_3982] + 32]
                        else:
                            mem[floor32(mem[_3982]) + _3982 + 196] = mem[floor32(mem[_3982]) + _3982 + -(mem[_3982] % 32) + 228 len mem[_3982] % 32]
                            require ext_code.size(address(_3918))
                            call address(_3918).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3735, 0, address(cd[100]), 128, mem[_3982], mem[_3982 + 196 len floor32(mem[_3982]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3853 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3981 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4095 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4095 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4095 + 36] = _3735
                        mem[_4095 + 68] = 0
                        mem[_4095 + 100] = address(_3853)
                        mem[_4095 + 132] = 128
                        mem[_4095 + 164] = mem[_4095]
                        s = 0
                        while s < mem[_4095]:
                            mem[s + _4095 + 196] = mem[s + _4095 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4095] % 32:
                            require ext_code.size(address(_3981))
                            call address(_3981).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3735, 0, address(_3853), 128, mem[_4095 + 164 len mem[_4095] + 32]
                        else:
                            mem[floor32(mem[_4095]) + _4095 + 196] = mem[floor32(mem[_4095]) + _4095 + -(mem[_4095] % 32) + 228 len mem[_4095] % 32]
                            require ext_code.size(address(_3981))
                            call address(_3981).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3735, 0, address(_3853), 128, mem[_4095], mem[_4095 + 196 len floor32(mem[_4095]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _3736 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3920 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3984 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3984 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3984 + 36] = 0
                        mem[_3984 + 68] = _3736
                        mem[_3984 + 100] = address(cd[100])
                        mem[_3984 + 132] = 128
                        mem[_3984 + 164] = mem[_3984]
                        s = 0
                        while s < mem[_3984]:
                            mem[s + _3984 + 196] = mem[s + _3984 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3984] % 32:
                            require ext_code.size(address(_3920))
                            call address(_3920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3736, address(cd[100]), 128, mem[_3984 + 164 len mem[_3984] + 32]
                        else:
                            mem[floor32(mem[_3984]) + _3984 + 196] = mem[floor32(mem[_3984]) + _3984 + -(mem[_3984] % 32) + 228 len mem[_3984] % 32]
                            require ext_code.size(address(_3920))
                            call address(_3920).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3736, address(cd[100]), 128, mem[_3984], mem[_3984 + 196 len floor32(mem[_3984]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3855 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3983 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4099 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4099 + 36] = 0
                        mem[_4099 + 68] = _3736
                        mem[_4099 + 100] = address(_3855)
                        mem[_4099 + 132] = 128
                        mem[_4099 + 164] = mem[_4099]
                        s = 0
                        while s < mem[_4099]:
                            mem[s + _4099 + 196] = mem[s + _4099 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4099] % 32:
                            require ext_code.size(address(_3983))
                            call address(_3983).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3736, address(_3855), 128, mem[_4099 + 164 len mem[_4099] + 32]
                        else:
                            mem[floor32(mem[_4099]) + _4099 + 196] = mem[floor32(mem[_4099]) + _4099 + -(mem[_4099] % 32) + 228 len mem[_4099] % 32]
                            require ext_code.size(address(_3983))
                            call address(_3983).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3736, address(_3855), 128, mem[_4099], mem[_4099 + 196 len floor32(mem[_4099]) + 32]
                else:
                    if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3922 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _3986 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3986 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3986 + 36] = _3736
                        mem[_3986 + 68] = 0
                        mem[_3986 + 100] = address(cd[100])
                        mem[_3986 + 132] = 128
                        mem[_3986 + 164] = mem[_3986]
                        s = 0
                        while s < mem[_3986]:
                            mem[s + _3986 + 196] = mem[s + _3986 + 32]
                            s = s + 32
                            continue 
                        if not mem[_3986] % 32:
                            require ext_code.size(address(_3922))
                            call address(_3922).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3736, 0, address(cd[100]), 128, mem[_3986 + 164 len mem[_3986] + 32]
                        else:
                            mem[floor32(mem[_3986]) + _3986 + 196] = mem[floor32(mem[_3986]) + _3986 + -(mem[_3986] % 32) + 228 len mem[_3986] % 32]
                            require ext_code.size(address(_3922))
                            call address(_3922).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3736, 0, address(cd[100]), 128, mem[_3986], mem[_3986 + 196 len floor32(mem[_3986]) + 32]
                    else:
                        require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3857 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                        _3985 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                        _4103 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4103 + 36] = _3736
                        mem[_4103 + 68] = 0
                        mem[_4103 + 100] = address(_3857)
                        mem[_4103 + 132] = 128
                        mem[_4103 + 164] = mem[_4103]
                        s = 0
                        while s < mem[_4103]:
                            mem[s + _4103 + 196] = mem[s + _4103 + 32]
                            s = s + 32
                            continue 
                        if not mem[_4103] % 32:
                            require ext_code.size(address(_3985))
                            call address(_3985).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3736, 0, address(_3857), 128, mem[_4103 + 164 len mem[_4103] + 32]
                        else:
                            mem[floor32(mem[_4103]) + _4103 + 196] = mem[floor32(mem[_4103]) + _4103 + -(mem[_4103] % 32) + 228 len mem[_4103] % 32]
                            require ext_code.size(address(_3985))
                            call address(_3985).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3736, 0, address(_3857), 128, mem[_4103], mem[_4103 + 196 len floor32(mem[_4103]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _3637 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
        return 32, mem[mem[64] + 32 len (32 * _3637) + 32]
    require return_data.size >= 32
    if not mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388]:
        revert with 0, 'TRANSFER_FROM_FAILED'
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[64] = (98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421
    mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389] = ('cd', 36).length
    mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(98 * ('cd', 4).length) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421] = 0
    idx = 0
    while idx < ('cd', 4).length - 1:
        require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
        require idx + 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357]
        if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
            if not mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _3737 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3924 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _3988 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3988 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3988 + 36] = 0
                    mem[_3988 + 68] = _3737
                    mem[_3988 + 100] = address(cd[100])
                    mem[_3988 + 132] = 128
                    mem[_3988 + 164] = mem[_3988]
                    s = 0
                    while s < mem[_3988]:
                        mem[s + _3988 + 196] = mem[s + _3988 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3988] % 32:
                        require ext_code.size(address(_3924))
                        call address(_3924).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3737, address(cd[100]), 128, mem[_3988 + 164 len mem[_3988] + 32]
                    else:
                        mem[floor32(mem[_3988]) + _3988 + 196] = mem[floor32(mem[_3988]) + _3988 + -(mem[_3988] % 32) + 228 len mem[_3988] % 32]
                        require ext_code.size(address(_3924))
                        call address(_3924).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3737, address(cd[100]), 128, mem[_3988], mem[_3988 + 196 len floor32(mem[_3988]) + 32]
                else:
                    require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3859 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3987 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _4107 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4107 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4107 + 36] = 0
                    mem[_4107 + 68] = _3737
                    mem[_4107 + 100] = address(_3859)
                    mem[_4107 + 132] = 128
                    mem[_4107 + 164] = mem[_4107]
                    s = 0
                    while s < mem[_4107]:
                        mem[s + _4107 + 196] = mem[s + _4107 + 32]
                        s = s + 32
                        continue 
                    if not mem[_4107] % 32:
                        require ext_code.size(address(_3987))
                        call address(_3987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3737, address(_3859), 128, mem[_4107 + 164 len mem[_4107] + 32]
                    else:
                        mem[floor32(mem[_4107]) + _4107 + 196] = mem[floor32(mem[_4107]) + _4107 + -(mem[_4107] % 32) + 228 len mem[_4107] % 32]
                        require ext_code.size(address(_3987))
                        call address(_3987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3737, address(_3859), 128, mem[_4107], mem[_4107 + 196 len floor32(mem[_4107]) + 32]
            else:
                if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3926 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _3990 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3990 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3990 + 36] = _3737
                    mem[_3990 + 68] = 0
                    mem[_3990 + 100] = address(cd[100])
                    mem[_3990 + 132] = 128
                    mem[_3990 + 164] = mem[_3990]
                    s = 0
                    while s < mem[_3990]:
                        mem[s + _3990 + 196] = mem[s + _3990 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3990] % 32:
                        require ext_code.size(address(_3926))
                        call address(_3926).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3737, 0, address(cd[100]), 128, mem[_3990 + 164 len mem[_3990] + 32]
                    else:
                        mem[floor32(mem[_3990]) + _3990 + 196] = mem[floor32(mem[_3990]) + _3990 + -(mem[_3990] % 32) + 228 len mem[_3990] % 32]
                        require ext_code.size(address(_3926))
                        call address(_3926).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3737, 0, address(cd[100]), 128, mem[_3990], mem[_3990 + 196 len floor32(mem[_3990]) + 32]
                else:
                    require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3861 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3989 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _4111 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4111 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4111 + 36] = _3737
                    mem[_4111 + 68] = 0
                    mem[_4111 + 100] = address(_3861)
                    mem[_4111 + 132] = 128
                    mem[_4111 + 164] = mem[_4111]
                    s = 0
                    while s < mem[_4111]:
                        mem[s + _4111 + 196] = mem[s + _4111 + 32]
                        s = s + 32
                        continue 
                    if not mem[_4111] % 32:
                        require ext_code.size(address(_3989))
                        call address(_3989).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3737, 0, address(_3861), 128, mem[_4111 + 164 len mem[_4111] + 32]
                    else:
                        mem[floor32(mem[_4111]) + _4111 + 196] = mem[floor32(mem[_4111]) + _4111 + -(mem[_4111] % 32) + 228 len mem[_4111] % 32]
                        require ext_code.size(address(_3989))
                        call address(_3989).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3737, 0, address(_3861), 128, mem[_4111], mem[_4111 + 196 len floor32(mem[_4111]) + 32]
        else:
            if not mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _3738 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            if mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 401 len 20]:
                if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3928 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _3992 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3992 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3992 + 36] = 0
                    mem[_3992 + 68] = _3738
                    mem[_3992 + 100] = address(cd[100])
                    mem[_3992 + 132] = 128
                    mem[_3992 + 164] = mem[_3992]
                    s = 0
                    while s < mem[_3992]:
                        mem[s + _3992 + 196] = mem[s + _3992 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3992] % 32:
                        require ext_code.size(address(_3928))
                        call address(_3928).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3738, address(cd[100]), 128, mem[_3992 + 164 len mem[_3992] + 32]
                    else:
                        mem[floor32(mem[_3992]) + _3992 + 196] = mem[floor32(mem[_3992]) + _3992 + -(mem[_3992] % 32) + 228 len mem[_3992] % 32]
                        require ext_code.size(address(_3928))
                        call address(_3928).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3738, address(cd[100]), 128, mem[_3992], mem[_3992 + 196 len floor32(mem[_3992]) + 32]
                else:
                    require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3863 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3991 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _4115 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4115 + 36] = 0
                    mem[_4115 + 68] = _3738
                    mem[_4115 + 100] = address(_3863)
                    mem[_4115 + 132] = 128
                    mem[_4115 + 164] = mem[_4115]
                    s = 0
                    while s < mem[_4115]:
                        mem[s + _4115 + 196] = mem[s + _4115 + 32]
                        s = s + 32
                        continue 
                    if not mem[_4115] % 32:
                        require ext_code.size(address(_3991))
                        call address(_3991).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3738, address(_3863), 128, mem[_4115 + 164 len mem[_4115] + 32]
                    else:
                        mem[floor32(mem[_4115]) + _4115 + 196] = mem[floor32(mem[_4115]) + _4115 + -(mem[_4115] % 32) + 228 len mem[_4115] % 32]
                        require ext_code.size(address(_3991))
                        call address(_3991).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3738, address(_3863), 128, mem[_4115], mem[_4115 + 196 len floor32(mem[_4115]) + 32]
            else:
                if idx >= mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 357] - 2:
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3930 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _3994 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3994 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3994 + 36] = _3738
                    mem[_3994 + 68] = 0
                    mem[_3994 + 100] = address(cd[100])
                    mem[_3994 + 132] = 128
                    mem[_3994 + 164] = mem[_3994]
                    s = 0
                    while s < mem[_3994]:
                        mem[s + _3994 + 196] = mem[s + _3994 + 32]
                        s = s + 32
                        continue 
                    if not mem[_3994] % 32:
                        require ext_code.size(address(_3930))
                        call address(_3930).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3738, 0, address(cd[100]), 128, mem[_3994 + 164 len mem[_3994] + 32]
                    else:
                        mem[floor32(mem[_3994]) + _3994 + 196] = mem[floor32(mem[_3994]) + _3994 + -(mem[_3994] % 32) + 228 len mem[_3994] % 32]
                        require ext_code.size(address(_3930))
                        call address(_3930).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3738, 0, address(cd[100]), 128, mem[_3994], mem[_3994 + 196 len floor32(mem[_3994]) + 32]
                else:
                    require idx + 1 < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3865 = mem[(32 * idx + 1) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    require idx < mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 389]
                    _3993 = mem[(32 * idx) + (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 421]
                    _4119 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4119 + 36] = _3738
                    mem[_4119 + 68] = 0
                    mem[_4119 + 100] = address(_3865)
                    mem[_4119 + 132] = 128
                    mem[_4119 + 164] = mem[_4119]
                    s = 0
                    while s < mem[_4119]:
                        mem[s + _4119 + 196] = mem[s + _4119 + 32]
                        s = s + 32
                        continue 
                    if not mem[_4119] % 32:
                        require ext_code.size(address(_3993))
                        call address(_3993).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3738, 0, address(_3865), 128, mem[_4119 + 164 len mem[_4119] + 32]
                    else:
                        mem[floor32(mem[_4119]) + _4119 + 196] = mem[floor32(mem[_4119]) + _4119 + -(mem[_4119] % 32) + 228 len mem[_4119] % 32]
                        require ext_code.size(address(_3993))
                        call address(_3993).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3738, 0, address(_3865), 128, mem[_4119], mem[_4119 + 196 len floor32(mem[_4119]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    _3641 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len floor32(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])]
    return 32, mem[mem[64] + 32 len (32 * _3641) + 32]
}



}
