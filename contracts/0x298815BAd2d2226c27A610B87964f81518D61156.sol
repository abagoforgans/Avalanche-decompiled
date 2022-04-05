contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function harvest() {
    if stor0 != msg.sender:
        revert with 0, 'you don't own me'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function sub_af910aa8(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'you don't own me'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if bool(cd[36]) != 0:
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * cd[68]):
            revert with 0, 17
        if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * cd[68] and ext_call.return_data[18 len 14] > -1 / 997 * cd[68]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[68]):
            revert with 0, 18
        if 997 * cd[68] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[68]) > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 128] = cd[68]
        mem[ceil32(return_data.size) + 160] = 997 * cd[68] * ext_call.return_data[18 len 14] / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
        mem[ceil32(return_data.size) + 192] = cd[36]
        mem[ceil32(return_data.size) + 224] = 128
        mem[ceil32(return_data.size) + 256] = ('cd', 4).length
        idx = 0
        s = ceil32(return_data.size) + 288
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(('cd', 4)[0]))
        call address(('cd', 4)[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, (32 * ('cd', 4).length) + 160, mem[ceil32(return_data.size) + 128 len floor32(('cd', 4).length) + 5]
    else:
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * cd[68]):
            revert with 0, 17
        if cd[68] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * cd[68] and ext_call.return_data[50 len 14] > -1 / 997 * cd[68]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68]):
            revert with 0, 18
        if 0 > !(997 * cd[68] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68])):
            revert with 0, 17
        mem[ceil32(return_data.size) + 128] = cd[68]
        mem[ceil32(return_data.size) + 160] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68])
        mem[ceil32(return_data.size) + 192] = cd[36]
        mem[ceil32(return_data.size) + 224] = 128
        mem[ceil32(return_data.size) + 256] = ('cd', 4).length
        idx = 0
        s = ceil32(return_data.size) + 288
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(('cd', 4)[0]))
        call address(('cd', 4)[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, (32 * ('cd', 4).length) + 160, mem[ceil32(return_data.size) + 128 len floor32(('cd', 4).length) + 5]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    require 164 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 164 >= 128
    require cd[260] <= test266151307()
    require cd[260] + 195 < calldata.size
    if ('cd', 260)[4] > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 260)[4]) + 97 > test266151307() or ceil32(32 * ('cd', 260)[4]) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 260)[4]
    require calldata.size >= cd[260] + (32 * ('cd', 260)[4]) + 196
    s = cd[260] + 196
    t = 128
    idx = 0
    while idx < ('cd', 260)[4]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if address(cd[4]) != this.address:
        revert with 0, 'not4u'
    mem[ceil32(32 * ('cd', 260)[4]) + 133] = cd[164]
    mem[ceil32(32 * ('cd', 260)[4]) + 165] = cd[196]
    mem[ceil32(32 * ('cd', 260)[4]) + 197] = cd[228]
    mem[ceil32(32 * ('cd', 260)[4]) + 97] = 100
    mem[ceil32(32 * ('cd', 260)[4]) + 129 len 4] = 3884059252
    staticcall 'console.log'.0xe7820a74 with:
            gas gas_remaining wei
           args cd[164], cd[196], cd[228]
    if 0 >= ('cd', 260)[4]:
        revert with 0, 50
    require ext_code.size(mem[140 len 20])
    if not bool(cd[228]):
        staticcall mem[140 len 20].token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 260)[4]) + 229] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229] = 0
        mem[64] = ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 261
        idx = 1
        s = cd[228]
        t = cd[196]
        while uint16(idx) < ('cd', 260)[4]:
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _262 = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(mem[(32 * uint16(idx)) + 140 len 20])
            staticcall mem[(32 * uint16(idx)) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _277 = mem[_272]
            require mem[_272] == mem[_272 + 18 len 14]
            _280 = mem[_272 + 32]
            require mem[_272 + 32] == mem[_272 + 50 len 14]
            require mem[_272 + 64] == mem[_272 + 92 len 4]
            require ext_code.size(address(_262))
            if Mask(1, 1, s) >> 1 != 0:
                staticcall address(_262).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _296 = mem[_292]
                require mem[_292] == mem[_292 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_296))
                staticcall address(_296).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _308 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t != mem[_308]:
                    revert with 0, 'short changed?'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if Mask(112, 0, _280) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _280) > !(997 * t):
                    revert with 0, 17
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * t and Mask(112, 0, _277) > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * Mask(112, 0, _280)) + (997 * t):
                    revert with 0, 18
                mem[mem[64] + 4] = address(_262)
                mem[mem[64] + 36] = t
                require ext_code.size(address(_296))
                call address(_296).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_262), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_332] == bool(mem[_332])
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 997 * t * Mask(112, 0, _277) / (1000 * Mask(112, 0, _280)) + (997 * t)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _344 = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
                u = 0
                while u < _344:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 261]
                    u = u + 32
                    continue 
                if ceil32(_344) > _344:
                    mem[mem[64] + _344 + 164] = 0
                require ext_code.size(address(_262))
                call address(_262).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * t * Mask(112, 0, _277) / (1000 * Mask(112, 0, _280)) + (997 * t), 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_344) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 997 * t * Mask(112, 0, _277) / (1000 * Mask(112, 0, _280)) + (997 * t) > -1:
                    revert with 0, 17
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = uint255(s) * 0.5
                t = 997 * t * Mask(112, 0, _277) / (1000 * Mask(112, 0, _280)) + (997 * t)
                continue 
            staticcall address(_262).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _297 = mem[_293]
            require mem[_293] == mem[_293 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_297))
            staticcall address(_297).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t != mem[_309]:
                revert with 0, 'short changed?'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if Mask(112, 0, _277) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, _277) > !(997 * t):
                revert with 0, 17
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * t and Mask(112, 0, _280) > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * Mask(112, 0, _277)) + (997 * t):
                revert with 0, 18
            mem[mem[64] + 4] = address(_262)
            mem[mem[64] + 36] = t
            require ext_code.size(address(_297))
            call address(_297).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_262), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_333] == bool(mem[_333])
            _341 = mem[64]
            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 997 * t * Mask(112, 0, _280) / (1000 * Mask(112, 0, _277)) + (997 * t)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 128
            _345 = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
            u = 0
            while u < _345:
                mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 261]
                u = u + 32
                continue 
            if ceil32(_345) > _345:
                mem[_341 + _345 + 164] = 0
            require ext_code.size(address(_262))
            call address(_262).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_345) + _341 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 > !(997 * t * Mask(112, 0, _280) / (1000 * Mask(112, 0, _277)) + (997 * t)):
                revert with 0, 17
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = uint255(s) * 0.5
            t = 997 * t * Mask(112, 0, _280) / (1000 * Mask(112, 0, _277)) + (997 * t)
            continue 
        if 0 >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = cd[164]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[164]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _274 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_274] == bool(mem[_274])
    else:
        staticcall mem[140 len 20].token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 260)[4]) + 229] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229] = 0
        mem[64] = ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 261
        idx = 1
        s = cd[228]
        t = cd[196]
        while uint16(idx) < ('cd', 260)[4]:
            if uint16(idx) >= mem[96]:
                revert with 0, 50
            _267 = mem[(32 * uint16(idx)) + 128]
            require ext_code.size(mem[(32 * uint16(idx)) + 140 len 20])
            staticcall mem[(32 * uint16(idx)) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _279 = mem[_273]
            require mem[_273] == mem[_273 + 18 len 14]
            _281 = mem[_273 + 32]
            require mem[_273 + 32] == mem[_273 + 50 len 14]
            require mem[_273 + 64] == mem[_273 + 92 len 4]
            require ext_code.size(address(_267))
            if Mask(1, 1, s) >> 1 != 0:
                staticcall address(_267).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _294 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _298 = mem[_294]
                require mem[_294] == mem[_294 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_298))
                staticcall address(_298).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t != mem[_310]:
                    revert with 0, 'short changed?'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if Mask(112, 0, _281) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _281) > !(997 * t):
                    revert with 0, 17
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * t and Mask(112, 0, _279) > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * Mask(112, 0, _281)) + (997 * t):
                    revert with 0, 18
                mem[mem[64] + 4] = address(_267)
                mem[mem[64] + 36] = t
                require ext_code.size(address(_298))
                call address(_298).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_267), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_334] == bool(mem[_334])
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 997 * t * Mask(112, 0, _279) / (1000 * Mask(112, 0, _281)) + (997 * t)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _346 = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
                u = 0
                while u < _346:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 261]
                    u = u + 32
                    continue 
                if ceil32(_346) > _346:
                    mem[mem[64] + _346 + 164] = 0
                require ext_code.size(address(_267))
                call address(_267).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * t * Mask(112, 0, _279) / (1000 * Mask(112, 0, _281)) + (997 * t), 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_346) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 997 * t * Mask(112, 0, _279) / (1000 * Mask(112, 0, _281)) + (997 * t) > -1:
                    revert with 0, 17
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = uint255(s) * 0.5
                t = 997 * t * Mask(112, 0, _279) / (1000 * Mask(112, 0, _281)) + (997 * t)
                continue 
            staticcall address(_267).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _295 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _299 = mem[_295]
            require mem[_295] == mem[_295 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_299))
            staticcall address(_299).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t != mem[_311]:
                revert with 0, 'short changed?'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if Mask(112, 0, _279) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * Mask(112, 0, _279) > !(997 * t):
                revert with 0, 17
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * t and Mask(112, 0, _281) > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * Mask(112, 0, _279)) + (997 * t):
                revert with 0, 18
            mem[mem[64] + 4] = address(_267)
            mem[mem[64] + 36] = t
            require ext_code.size(address(_299))
            call address(_299).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_267), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_335] == bool(mem[_335])
            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 997 * t * Mask(112, 0, _281) / (1000 * Mask(112, 0, _279)) + (997 * t)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 128
            _347 = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 229]
            u = 0
            while u < _347:
                mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 261]
                u = u + 32
                continue 
            if ceil32(_347) > _347:
                mem[mem[64] + _347 + 164] = 0
            require ext_code.size(address(_267))
            call address(_267).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 997 * t * Mask(112, 0, _281) / (1000 * Mask(112, 0, _279)) + (997 * t), address(this.address), 128, mem[mem[64] + 132 len ceil32(_347) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 > !(997 * t * Mask(112, 0, _281) / (1000 * Mask(112, 0, _279)) + (997 * t)):
                revert with 0, 17
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = uint255(s) * 0.5
            t = 997 * t * Mask(112, 0, _281) / (1000 * Mask(112, 0, _279)) + (997 * t)
            continue 
        if 0 >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = cd[164]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[164]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_275] == bool(mem[_275])
}



}
