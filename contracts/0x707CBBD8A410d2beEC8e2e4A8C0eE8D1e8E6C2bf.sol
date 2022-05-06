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
        if address(t) == address(ext_call.return_data[0]):
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
            if idx == ('cd', 68).length - 1:
                if address(t) != address(ext_call.return_data[0]):
                    _121 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_121 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_121 + 68] = 0
                    mem[_121 + 100] = this.address
                    mem[_121 + 132] = 128
                    mem[_121 + 164] = mem[_121]
                    t = 0
                    while t < mem[_121]:
                        mem[_121 + t + 196] = mem[_121 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_121] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_121 + 164 len mem[_121] + 32]
                    else:
                        mem[floor32(mem[_121]) + _121 + 196] = mem[floor32(mem[_121]) + _121 + -(mem[_121] % 32) + 228 len mem[_121] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(this.address), 128, mem[_121], mem[_121 + 196 len floor32(mem[_121]) + 32]
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _147 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_147 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_147 + 36] = 0
                    mem[_147 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    mem[_147 + 100] = this.address
                    mem[_147 + 132] = 128
                    mem[_147 + 164] = mem[_147]
                    t = 0
                    while t < mem[_147]:
                        mem[_147 + t + 196] = mem[_147 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_147] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_147 + 164 len mem[_147] + 32]
                    else:
                        mem[floor32(mem[_147]) + _147 + 196] = mem[floor32(mem[_147]) + _147 + -(mem[_147] % 32) + 228 len mem[_147] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_147], mem[_147 + 196 len floor32(mem[_147]) + 32]
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
                _125 = mem[64]
                mem[64] = mem[64] + 32
                mem[_125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_125 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_125 + 68] = 0
                mem[_125 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[_125 + 132] = 128
                mem[_125 + 164] = mem[_125]
                t = 0
                while t < mem[_125]:
                    mem[_125 + t + 196] = mem[_125 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_125] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_125 + 164 len mem[_125] + 32]
                else:
                    mem[floor32(mem[_125]) + _125 + 196] = mem[floor32(mem[_125]) + _125 + -(mem[_125] % 32) + 228 len mem[_125] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_125], mem[_125 + 196 len floor32(mem[_125]) + 32]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _152 = mem[64]
                mem[64] = mem[64] + 32
                mem[_152 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_152 + 36] = 0
                mem[_152 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                mem[_152 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[_152 + 132] = 128
                mem[_152 + 164] = mem[_152]
                t = 0
                while t < mem[_152]:
                    mem[_152 + t + 196] = mem[_152 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_152] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_152 + 164 len mem[_152] + 32]
                else:
                    mem[floor32(mem[_152]) + _152 + 196] = mem[floor32(mem[_152]) + _152 + -(mem[_152] % 32) + 228 len mem[_152] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_152], mem[_152 + 196 len floor32(mem[_152]) + 32]
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
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        if idx == ('cd', 68).length - 1:
            if address(t) != address(ext_call.return_data[0]):
                _124 = mem[64]
                mem[64] = mem[64] + 32
                mem[_124 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_124 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_124 + 68] = 0
                mem[_124 + 100] = this.address
                mem[_124 + 132] = 128
                mem[_124 + 164] = mem[_124]
                t = 0
                while t < mem[_124]:
                    mem[_124 + t + 196] = mem[_124 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_124] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_124 + 164 len mem[_124] + 32]
                else:
                    mem[floor32(mem[_124]) + _124 + 196] = mem[floor32(mem[_124]) + _124 + -(mem[_124] % 32) + 228 len mem[_124] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_124], mem[_124 + 196 len floor32(mem[_124]) + 32]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _150 = mem[64]
                mem[64] = mem[64] + 32
                mem[_150 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_150 + 36] = 0
                mem[_150 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                mem[_150 + 100] = this.address
                mem[_150 + 132] = 128
                mem[_150 + 164] = mem[_150]
                t = 0
                while t < mem[_150]:
                    mem[_150 + t + 196] = mem[_150 + t + 32]
                    t = t + 32
                    continue 
                if not mem[_150] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_150 + 164 len mem[_150] + 32]
                else:
                    mem[floor32(mem[_150]) + _150 + 196] = mem[floor32(mem[_150]) + _150 + -(mem[_150] % 32) + 228 len mem[_150] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(this.address), 128, mem[_150], mem[_150 + 196 len floor32(mem[_150]) + 32]
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
            _130 = mem[64]
            mem[64] = mem[64] + 32
            mem[_130 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_130 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            mem[_130 + 68] = 0
            mem[_130 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[_130 + 132] = 128
            mem[_130 + 164] = mem[_130]
            t = 0
            while t < mem[_130]:
                mem[_130 + t + 196] = mem[_130 + t + 32]
                t = t + 32
                continue 
            if not mem[_130] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_130 + 164 len mem[_130] + 32]
            else:
                mem[floor32(mem[_130]) + _130 + 196] = mem[floor32(mem[_130]) + _130 + -(mem[_130] % 32) + 228 len mem[_130] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_130], mem[_130 + 196 len floor32(mem[_130]) + 32]
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _159 = mem[64]
            mem[64] = mem[64] + 32
            mem[_159 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_159 + 36] = 0
            mem[_159 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            mem[_159 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[_159 + 132] = 128
            mem[_159 + 164] = mem[_159]
            t = 0
            while t < mem[_159]:
                mem[_159 + t + 196] = mem[_159 + t + 32]
                t = t + 32
                continue 
            if not mem[_159] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_159 + 164 len mem[_159] + 32]
            else:
                mem[floor32(mem[_159]) + _159 + 196] = mem[floor32(mem[_159]) + _159 + -(mem[_159] % 32) + 228 len mem[_159] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_159], mem[_159 + 196 len floor32(mem[_159]) + 32]
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
    if cd[4] <= s:
        revert with 0, 'Failed Strategy'
    return 1
}



}
