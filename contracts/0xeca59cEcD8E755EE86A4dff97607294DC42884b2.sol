contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized Operation'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_e4e56989(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized Operation (c)'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_cb18e9b5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    require 0 < ('cd', 68).length
    mem[100] = address(('cd', 68)[0])
    mem[132] = cd[4]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 68)[0]), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = cd[4]
    t = 0
    t = address(cd[36])
    while idx < ('cd', 68).length:
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * s / 997 != s:
            revert with 0, 'BoringMath: Mul Overflow'
        if address(t) == address(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'BoringMath: Mul Overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 997 * s:
                    revert with 0, 'BoringMath: Add Overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                if idx == ('cd', 68).length - 1:
                    if address(t) != address(ext_call.return_data[0]):
                        _249 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_249 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_249 + 68] = 0
                        mem[_249 + 100] = this.address
                        mem[_249 + 132] = 128
                        mem[_249 + 164] = mem[_249]
                        t = 0
                        while t < mem[_249]:
                            mem[_249 + t + 196] = mem[_249 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_249] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_249 + 164 len mem[_249] + 32]
                        else:
                            mem[floor32(mem[_249]) + _249 + 196] = mem[floor32(mem[_249]) + _249 + -(mem[_249] % 32) + 228 len mem[_249] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_249], mem[_249 + 196 len floor32(mem[_249]) + 32]
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _285 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_285 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_285 + 36] = 0
                        mem[_285 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_285 + 100] = this.address
                        mem[_285 + 132] = 128
                        mem[_285 + 164] = mem[_285]
                        t = 0
                        while t < mem[_285]:
                            mem[_285 + t + 196] = mem[_285 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_285] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_285 + 164 len mem[_285] + 32]
                        else:
                            mem[floor32(mem[_285]) + _285 + 196] = mem[floor32(mem[_285]) + _285 + -(mem[_285] % 32) + 228 len mem[_285] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_285], mem[_285 + 196 len floor32(mem[_285]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = this.address
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    t = address(cd[((32 * idx) + cd[68] + 36)])
                    t = ext_call.return_data[0]
                    continue 
                require idx + 1 < ('cd', 68).length
                if address(t) != address(ext_call.return_data[0]):
                    _253 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_253 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_253 + 68] = 0
                    mem[_253 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                    mem[_253 + 132] = 128
                    mem[_253 + 164] = mem[_253]
                    t = 0
                    while t < mem[_253]:
                        mem[_253 + t + 196] = mem[_253 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_253] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_253 + 164 len mem[_253] + 32]
                    else:
                        mem[floor32(mem[_253]) + _253 + 196] = mem[floor32(mem[_253]) + _253 + -(mem[_253] % 32) + 228 len mem[_253] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_253], mem[_253 + 196 len floor32(mem[_253]) + 32]
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _300 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_300 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_300 + 36] = 0
                    mem[_300 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_300 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                    mem[_300 + 132] = 128
                    mem[_300 + 164] = mem[_300]
                    t = 0
                    while t < mem[_300]:
                        mem[_300 + t + 196] = mem[_300 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_300] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_300 + 164 len mem[_300] + 32]
                    else:
                        mem[floor32(mem[_300]) + _300 + 196] = mem[floor32(mem[_300]) + _300 + -(mem[_300] % 32) + 228 len mem[_300] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_300], mem[_300 + 196 len floor32(mem[_300]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = address(cd[((32 * idx + 1) + cd[68] + 36)])
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                t = address(cd[((32 * idx) + cd[68] + 36)])
                t = ext_call.return_data[0]
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'BoringMath: Mul Overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 997 * s:
                revert with 0, 'BoringMath: Add Overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            if idx == ('cd', 68).length - 1:
                if address(t) != address(ext_call.return_data[0]):
                    _274 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_274 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_274 + 68] = 0
                    mem[_274 + 100] = this.address
                    mem[_274 + 132] = 128
                    mem[_274 + 164] = mem[_274]
                    t = 0
                    while t < mem[_274]:
                        mem[_274 + t + 196] = mem[_274 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_274] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_274 + 164 len mem[_274] + 32]
                    else:
                        mem[floor32(mem[_274]) + _274 + 196] = mem[floor32(mem[_274]) + _274 + -(mem[_274] % 32) + 228 len mem[_274] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_274], mem[_274 + 196 len floor32(mem[_274]) + 32]
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _331 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_331 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_331 + 36] = 0
                    mem[_331 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_331 + 100] = this.address
                    mem[_331 + 132] = 128
                    mem[_331 + 164] = mem[_331]
                    t = 0
                    while t < mem[_331]:
                        mem[_331 + t + 196] = mem[_331 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_331] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_331 + 164 len mem[_331] + 32]
                    else:
                        mem[floor32(mem[_331]) + _331 + 196] = mem[floor32(mem[_331]) + _331 + -(mem[_331] % 32) + 228 len mem[_331] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_331], mem[_331 + 196 len floor32(mem[_331]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = this.address
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                t = address(cd[((32 * idx) + cd[68] + 36)])
                t = ext_call.return_data[0]
                continue 
            require idx + 1 < ('cd', 68).length
            if address(t) != address(ext_call.return_data[0]):
                _286 = mem[64]
                mem[64] = mem[64] + 32
                mem[_286 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_286 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_286 + 68] = 0
                mem[_286 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[_286 + 132] = 128
                mem[_286 + 164] = mem[_286]
                t = 0
                while t < mem[_286]:
                    mem[_286 + t + 196] = mem[_286 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_286] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_286 + 164 len mem[_286] + 32]
                else:
                    mem[floor32(mem[_286]) + _286 + 196] = mem[floor32(mem[_286]) + _286 + -(mem[_286] % 32) + 228 len mem[_286] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_286], mem[_286 + 196 len floor32(mem[_286]) + 32]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _344 = mem[64]
                mem[64] = mem[64] + 32
                mem[_344 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_344 + 36] = 0
                mem[_344 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_344 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[_344 + 132] = 128
                mem[_344 + 164] = mem[_344]
                t = 0
                while t < mem[_344]:
                    mem[_344 + t + 196] = mem[_344 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_344] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_344 + 164 len mem[_344] + 32]
                else:
                    mem[floor32(mem[_344]) + _344 + 196] = mem[floor32(mem[_344]) + _344 + -(mem[_344] % 32) + 228 len mem[_344] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_344], mem[_344 + 196 len floor32(mem[_344]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = address(cd[((32 * idx + 1) + cd[68] + 36)])
            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = ext_call.return_data[0]
            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            t = address(cd[((32 * idx) + cd[68] + 36)])
            t = ext_call.return_data[0]
            continue 
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'BoringMath: Mul Overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 997 * s:
                revert with 0, 'BoringMath: Add Overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            if idx == ('cd', 68).length - 1:
                if address(t) != address(ext_call.return_data[0]):
                    _252 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_252 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_252 + 68] = 0
                    mem[_252 + 100] = this.address
                    mem[_252 + 132] = 128
                    mem[_252 + 164] = mem[_252]
                    t = 0
                    while t < mem[_252]:
                        mem[_252 + t + 196] = mem[_252 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_252] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_252 + 164 len mem[_252] + 32]
                    else:
                        mem[floor32(mem[_252]) + _252 + 196] = mem[floor32(mem[_252]) + _252 + -(mem[_252] % 32) + 228 len mem[_252] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_252], mem[_252 + 196 len floor32(mem[_252]) + 32]
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _293 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_293 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_293 + 36] = 0
                    mem[_293 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_293 + 100] = this.address
                    mem[_293 + 132] = 128
                    mem[_293 + 164] = mem[_293]
                    t = 0
                    while t < mem[_293]:
                        mem[_293 + t + 196] = mem[_293 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_293] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_293 + 164 len mem[_293] + 32]
                    else:
                        mem[floor32(mem[_293]) + _293 + 196] = mem[floor32(mem[_293]) + _293 + -(mem[_293] % 32) + 228 len mem[_293] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_293], mem[_293 + 196 len floor32(mem[_293]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = this.address
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = ext_call.return_data[0]
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                t = address(cd[((32 * idx) + cd[68] + 36)])
                t = ext_call.return_data[0]
                continue 
            require idx + 1 < ('cd', 68).length
            if address(t) != address(ext_call.return_data[0]):
                _260 = mem[64]
                mem[64] = mem[64] + 32
                mem[_260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_260 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_260 + 68] = 0
                mem[_260 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[_260 + 132] = 128
                mem[_260 + 164] = mem[_260]
                t = 0
                while t < mem[_260]:
                    mem[_260 + t + 196] = mem[_260 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_260] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_260 + 164 len mem[_260] + 32]
                else:
                    mem[floor32(mem[_260]) + _260 + 196] = mem[floor32(mem[_260]) + _260 + -(mem[_260] % 32) + 228 len mem[_260] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_260], mem[_260 + 196 len floor32(mem[_260]) + 32]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _312 = mem[64]
                mem[64] = mem[64] + 32
                mem[_312 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_312 + 36] = 0
                mem[_312 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_312 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[_312 + 132] = 128
                mem[_312 + 164] = mem[_312]
                t = 0
                while t < mem[_312]:
                    mem[_312 + t + 196] = mem[_312 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_312] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_312 + 164 len mem[_312] + 32]
                else:
                    mem[floor32(mem[_312]) + _312 + 196] = mem[floor32(mem[_312]) + _312 + -(mem[_312] % 32) + 228 len mem[_312] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_312], mem[_312 + 196 len floor32(mem[_312]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = address(cd[((32 * idx + 1) + cd[68] + 36)])
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            s = Mask(112, 0, ext_call.return_data[0])
            s = Mask(112, 0, ext_call.return_data[32])
            s = ext_call.return_data[0]
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            t = address(cd[((32 * idx) + cd[68] + 36)])
            t = ext_call.return_data[0]
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'BoringMath: Mul Overflow'
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 997 * s:
            revert with 0, 'BoringMath: Add Overflow'
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        if idx == ('cd', 68).length - 1:
            if address(t) != address(ext_call.return_data[0]):
                _282 = mem[64]
                mem[64] = mem[64] + 32
                mem[_282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_282 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_282 + 68] = 0
                mem[_282 + 100] = this.address
                mem[_282 + 132] = 128
                mem[_282 + 164] = mem[_282]
                t = 0
                while t < mem[_282]:
                    mem[_282 + t + 196] = mem[_282 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_282] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_282 + 164 len mem[_282] + 32]
                else:
                    mem[floor32(mem[_282]) + _282 + 196] = mem[floor32(mem[_282]) + _282 + -(mem[_282] % 32) + 228 len mem[_282] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_282], mem[_282 + 196 len floor32(mem[_282]) + 32]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _340 = mem[64]
                mem[64] = mem[64] + 32
                mem[_340 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_340 + 36] = 0
                mem[_340 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_340 + 100] = this.address
                mem[_340 + 132] = 128
                mem[_340 + 164] = mem[_340]
                t = 0
                while t < mem[_340]:
                    mem[_340 + t + 196] = mem[_340 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_340] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_340 + 164 len mem[_340] + 32]
                else:
                    mem[floor32(mem[_340]) + _340 + 196] = mem[floor32(mem[_340]) + _340 + -(mem[_340] % 32) + 228 len mem[_340] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_340], mem[_340 + 196 len floor32(mem[_340]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = this.address
            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            s = Mask(112, 0, ext_call.return_data[0])
            s = Mask(112, 0, ext_call.return_data[32])
            s = ext_call.return_data[0]
            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            t = address(cd[((32 * idx) + cd[68] + 36)])
            t = ext_call.return_data[0]
            continue 
        require idx + 1 < ('cd', 68).length
        if address(t) != address(ext_call.return_data[0]):
            _294 = mem[64]
            mem[64] = mem[64] + 32
            mem[_294 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_294 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            mem[_294 + 68] = 0
            mem[_294 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[_294 + 132] = 128
            mem[_294 + 164] = mem[_294]
            t = 0
            while t < mem[_294]:
                mem[_294 + t + 196] = mem[_294 + t + 32]
                t = t + 32
                continue 
            if not mem[_294] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_294 + 164 len mem[_294] + 32]
            else:
                mem[floor32(mem[_294]) + _294 + 196] = mem[floor32(mem[_294]) + _294 + -(mem[_294] % 32) + 228 len mem[_294] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_294], mem[_294 + 196 len floor32(mem[_294]) + 32]
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _353 = mem[64]
            mem[64] = mem[64] + 32
            mem[_353 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_353 + 36] = 0
            mem[_353 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            mem[_353 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[_353 + 132] = 128
            mem[_353 + 164] = mem[_353]
            t = 0
            while t < mem[_353]:
                mem[_353 + t + 196] = mem[_353 + t + 32]
                t = t + 32
                continue 
            if not mem[_353] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_353 + 164 len mem[_353] + 32]
            else:
                mem[floor32(mem[_353]) + _353 + 196] = mem[floor32(mem[_353]) + _353 + -(mem[_353] % 32) + 228 len mem[_353] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_353], mem[_353 + 196 len floor32(mem[_353]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = address(cd[((32 * idx + 1) + cd[68] + 36)])
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        s = Mask(112, 0, ext_call.return_data[0])
        s = Mask(112, 0, ext_call.return_data[32])
        s = ext_call.return_data[0]
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        t = address(cd[((32 * idx) + cd[68] + 36)])
        t = ext_call.return_data[0]
        continue 
    if s <= cd[4]:
        revert with 0, 'Failed Strategy'
    return 1
}



}
