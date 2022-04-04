contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_809658a9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 1:
            idx = idx + 1
            s = s + 2
            continue 
        idx = idx + 1
        s = s + 5
        continue 
    require s <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = s
    if not s:
        idx = 0
        t = 0
        while idx < arg1.length:
            require idx < arg3.length
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                require idx < arg1.length
                require 2 * idx < arg2.length
                _258 = mem[(64 * idx) + (32 * arg1.length) + 160]
                require (2 * idx) + 1 < arg2.length
                _265 = mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160]
                if mem[(64 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 329 len 27]
                if mem[(64 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]:
                    if not mem[(64 * idx) + (32 * arg1.length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require t < s
                    require t + 1 < s
                    if address(_258) == address(_258):
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    else:
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require t < s
                    require t + 1 < s
                    if address(_258) == address(_265):
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    else:
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                t = t + 2
                continue 
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 1:
                idx = idx + 1
                t = t
                continue 
            require idx < arg1.length
            _263 = mem[(32 * idx) + 128]
            require 2 * idx < arg2.length
            require (2 * idx) + 1 < arg2.length
            _273 = mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getBalance(address rg1) with:
                    gas gas_remaining wei
                   args mem[(64 * idx) + (32 * arg1.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getBalance(address rg1) with:
                    gas gas_remaining wei
                   args mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args mem[(64 * idx) + (32 * arg1.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 228] = mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]
            require ext_code.size(address(_263))
            staticcall address(_263).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(_273)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_263))
            staticcall address(_263).getSwapFee() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require t < s
            require t + 1 < s
            require t + 2 < s
            require t + 3 < s
            require t + 4 < s
            mem[(32 * t + 4) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t + 3) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t + 2) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            idx = idx + 1
            t = t + 5
            continue 
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * s] = call.data[calldata.size len 32 * s]
        idx = 0
        t = 0
        while idx < arg1.length:
            require idx < arg3.length
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                require idx < arg1.length
                require 2 * idx < arg2.length
                _261 = mem[(64 * idx) + (32 * arg1.length) + 160]
                require (2 * idx) + 1 < arg2.length
                _268 = mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160]
                if mem[(64 * idx) + (32 * arg1.length) + 172 len 20] == mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 329 len 27]
                if mem[(64 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]:
                    if not mem[(64 * idx) + (32 * arg1.length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require t < s
                    require t + 1 < s
                    if address(_261) == address(_261):
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    else:
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require t < s
                    require t + 1 < s
                    if address(_261) == address(_268):
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    else:
                        mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                        mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                t = t + 2
                continue 
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 1:
                idx = idx + 1
                t = t
                continue 
            require idx < arg1.length
            _266 = mem[(32 * idx) + 128]
            require 2 * idx < arg2.length
            require (2 * idx) + 1 < arg2.length
            _274 = mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getBalance(address rg1) with:
                    gas gas_remaining wei
                   args mem[(64 * idx) + (32 * arg1.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getBalance(address rg1) with:
                    gas gas_remaining wei
                   args mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args mem[(64 * idx) + (32 * arg1.length) + 172 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 228] = mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 172 len 20]
            require ext_code.size(address(_266))
            staticcall address(_266).getDenormalizedWeight(address rg1) with:
                    gas gas_remaining wei
                   args address(_274)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_266))
            staticcall address(_266).getSwapFee() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require t < s
            require t + 1 < s
            require t + 2 < s
            require t + 3 < s
            require t + 4 < s
            mem[(32 * t + 4) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t + 3) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t + 2) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t + 1) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            mem[(32 * t) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
            idx = idx + 1
            t = t + 5
            continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + 288 len floor32(s)] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len floor32(s)]
    return Array(len=s, data=mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len floor32(s)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * s) + floor32(s) + 288 len (32 * s) - floor32(s)]), 
}



}
