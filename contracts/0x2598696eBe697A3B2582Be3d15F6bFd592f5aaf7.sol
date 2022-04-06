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
    mem[64] = 352
    mem[96 len 256] = call.data[calldata.size len 256]
    idx = 0
    s = cd[36]
    t = cd[68]
    while ('cd', 4).length > uint16(idx):
        if uint16(idx) >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * uint16(idx)) + cd[4] + 36)] == address(cd[((32 * uint16(idx)) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * uint16(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint16(idx)) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _23 = mem[_22]
        require mem[_22] == mem[_22 + 18 len 14]
        _24 = mem[_22 + 32]
        require mem[_22 + 32] == mem[_22 + 50 len 14]
        require mem[_22 + 64] == mem[_22 + 92 len 4]
        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 0 == bool(s):
            if mem[_22 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 'NH{q', 17
            if 1000 * mem[_22 + 18 len 14] > !(997 * t):
                revert with 'NH{q', 17
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * t and mem[_22 + 50 len 14] > -1 / 997 * t:
                revert with 'NH{q', 17
            if not (1000 * mem[_22 + 18 len 14]) + (997 * t):
                revert with 'NH{q', 18
            if uint16(idx) >= 8:
                revert with 'NH{q', 50
            mem[(32 * uint16(idx)) + 96] = 997 * t * mem[_22 + 50 len 14] / (1000 * mem[_22 + 18 len 14]) + (997 * t)
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = uint255(s) * 0.5
            t = 997 * t * Mask(112, 0, _24) / (1000 * Mask(112, 0, _23)) + (997 * t)
            continue 
        if mem[_22 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if 1000 * mem[_22 + 50 len 14] > !(997 * t):
            revert with 'NH{q', 17
        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * t and mem[_22 + 18 len 14] > -1 / 997 * t:
            revert with 'NH{q', 17
        if not (1000 * mem[_22 + 50 len 14]) + (997 * t):
            revert with 'NH{q', 18
        if uint16(idx) >= 8:
            revert with 'NH{q', 50
        mem[(32 * uint16(idx)) + 96] = 997 * t * mem[_22 + 18 len 14] / (1000 * mem[_22 + 50 len 14]) + (997 * t)
        if uint16(idx) == 65535:
            revert with 'NH{q', 17
        idx = uint16(idx) + 1
        s = uint255(s) * 0.5
        t = 997 * t * Mask(112, 0, _23) / (1000 * Mask(112, 0, _24)) + (997 * t)
        continue 
    if cd[68] < 4 * 10^16:
        revert with 'NH{q', 17
    if t <= cd[68] - 4 * 10^16:
        revert with 0, 'F'
    _15 = mem[96]
    _16 = mem[64]
    mem[mem[64] + 32] = cd[68]
    mem[mem[64] + 64] = cd[36]
    mem[mem[64] + 96 len 256] = mem[96 len 256]
    mem[mem[64] + 352] = 352
    mem[mem[64] + 384] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 416
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _38 = mem[64]
    mem[mem[64]] = _16 + (32 * ('cd', 4).length) + -mem[64] + 384
    mem[64] = _16 + (32 * ('cd', 4).length) + 416
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[_16 + (32 * ('cd', 4).length) + 416] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if bool(cd[36]) != 0:
        mem[_16 + (32 * ('cd', 4).length) + 420] = _15
        mem[_16 + (32 * ('cd', 4).length) + 452] = 0
        mem[_16 + (32 * ('cd', 4).length) + 484] = this.address
        mem[_16 + (32 * ('cd', 4).length) + 516] = 128
        _40 = mem[_38]
        mem[_16 + (32 * ('cd', 4).length) + 548] = mem[_38]
        mem[_16 + (32 * ('cd', 4).length) + 580 len ceil32(_40)] = mem[_38 + 32 len ceil32(_40)]
        if ceil32(_40) > _40:
            mem[_16 + (32 * ('cd', 4).length) + _40 + 580] = 0
        require ext_code.size(address(('cd', 4)[0]))
        call address(('cd', 4)[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args _15, 0, address(this.address), 128, mem[_16 + (32 * ('cd', 4).length) + 548 len ceil32(_40) + 32]
    else:
        mem[_16 + (32 * ('cd', 4).length) + 420] = 0
        mem[_16 + (32 * ('cd', 4).length) + 452] = _15
        mem[_16 + (32 * ('cd', 4).length) + 484] = this.address
        mem[_16 + (32 * ('cd', 4).length) + 516] = 128
        _42 = mem[_38]
        mem[_16 + (32 * ('cd', 4).length) + 548] = mem[_38]
        mem[_16 + (32 * ('cd', 4).length) + 580 len ceil32(_42)] = mem[_38 + 32 len ceil32(_42)]
        if ceil32(_42) > _42:
            mem[_16 + (32 * ('cd', 4).length) + _42 + 580] = 0
        require ext_code.size(address(('cd', 4)[0]))
        call address(('cd', 4)[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, _15, address(this.address), 128, mem[_16 + (32 * ('cd', 4).length) + 548 len ceil32(_42) + 32]
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
    require calldata.size - 164 >= 352
    require 259 < calldata.size
    require 484 <= calldata.size
    idx = 0
    s = 228
    t = 96
    while idx < 8:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[484] <= test266151307()
    require cd[484] + 195 < calldata.size
    if ('cd', 484)[4] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 484)[4]) + 353 > test266151307() or ceil32(32 * ('cd', 484)[4]) + 353 < 352:
        revert with 'NH{q', 65
    mem[352] = ('cd', 484)[4]
    require calldata.size >= cd[484] + (32 * ('cd', 484)[4]) + 196
    s = cd[484] + 196
    idx = 0
    t = 384
    while idx < ('cd', 484)[4]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if address(cd[4]) != this.address:
        revert with 0, 'not4u'
    if 0 >= ('cd', 484)[4]:
        revert with 'NH{q', 50
    require ext_code.size(mem[396 len 20])
    if not bool(cd[196]):
        staticcall mem[396 len 20].token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 484)[4]) + 353] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353] = 0
        mem[64] = ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385
        idx = 1
        s = cd[196]
        while uint16(idx) < ('cd', 484)[4]:
            if uint16(idx) >= mem[352]:
                revert with 'NH{q', 50
            _199 = mem[(32 * uint16(idx)) + 384]
            require ext_code.size(mem[(32 * uint16(idx)) + 396 len 20])
            if Mask(1, 1, s) >> 1 != 0:
                staticcall mem[(32 * uint16(idx)) + 396 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _214 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _220 = mem[_214]
                require mem[_214] == mem[_214 + 12 len 20]
                if uint16(idx) >= 8:
                    revert with 'NH{q', 50
                _225 = mem[(32 * uint16(idx)) + 96]
                if uint16(idx) < 1:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) - 1) >= 8:
                    revert with 'NH{q', 50
                _229 = mem[(32 * uint16(uint16(idx) - 1)) + 96]
                mem[mem[64] + 4] = address(_199)
                mem[mem[64] + 36] = _229
                require ext_code.size(address(_220))
                call address(_220).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_199), _229
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_241] == bool(mem[_241])
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _225
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _253 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                t = 0
                while t < _253:
                    mem[t + mem[64] + 164] = mem[t + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    t = t + 32
                    continue 
                if ceil32(_253) > _253:
                    mem[mem[64] + _253 + 164] = 0
                require ext_code.size(address(_199))
                call address(_199).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _225, 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_253) + 32]
            else:
                staticcall mem[(32 * uint16(idx)) + 396 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _221 = mem[_215]
                require mem[_215] == mem[_215 + 12 len 20]
                if uint16(idx) >= 8:
                    revert with 'NH{q', 50
                _226 = mem[(32 * uint16(idx)) + 96]
                if uint16(idx) < 1:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) - 1) >= 8:
                    revert with 'NH{q', 50
                _232 = mem[(32 * uint16(uint16(idx) - 1)) + 96]
                mem[mem[64] + 4] = address(_199)
                mem[mem[64] + 36] = _232
                require ext_code.size(address(_221))
                call address(_221).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_199), _232
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_242] == bool(mem[_242])
                _250 = mem[64]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _226
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _254 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                t = 0
                while t < _254:
                    mem[t + mem[64] + 164] = mem[t + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    t = t + 32
                    continue 
                if ceil32(_254) > _254:
                    mem[_250 + _254 + 164] = 0
                require ext_code.size(address(_199))
                call address(_199).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_254) + _250 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = uint255(s) * 0.5
            continue 
        if 0 >= mem[352]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[396 len 20]
        mem[mem[64] + 36] = cd[164]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[164]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_213] == bool(mem[_213])
    else:
        staticcall mem[396 len 20].token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 484)[4]) + 353] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353] = 0
        mem[64] = ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385
        idx = 1
        s = cd[196]
        while uint16(idx) < ('cd', 484)[4]:
            if uint16(idx) >= mem[352]:
                revert with 'NH{q', 50
            _202 = mem[(32 * uint16(idx)) + 384]
            require ext_code.size(mem[(32 * uint16(idx)) + 396 len 20])
            if Mask(1, 1, s) >> 1 != 0:
                staticcall mem[(32 * uint16(idx)) + 396 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _223 = mem[_217]
                require mem[_217] == mem[_217 + 12 len 20]
                if uint16(idx) >= 8:
                    revert with 'NH{q', 50
                _227 = mem[(32 * uint16(idx)) + 96]
                if uint16(idx) < 1:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) - 1) >= 8:
                    revert with 'NH{q', 50
                _235 = mem[(32 * uint16(uint16(idx) - 1)) + 96]
                mem[mem[64] + 4] = address(_202)
                mem[mem[64] + 36] = _235
                require ext_code.size(address(_223))
                call address(_223).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_202), _235
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_243] == bool(mem[_243])
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _227
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _255 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                t = 0
                while t < _255:
                    mem[t + mem[64] + 164] = mem[t + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    t = t + 32
                    continue 
                if ceil32(_255) > _255:
                    mem[mem[64] + _255 + 164] = 0
                require ext_code.size(address(_202))
                call address(_202).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _227, 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_255) + 32]
            else:
                staticcall mem[(32 * uint16(idx)) + 396 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_218]
                require mem[_218] == mem[_218 + 12 len 20]
                if uint16(idx) >= 8:
                    revert with 'NH{q', 50
                _228 = mem[(32 * uint16(idx)) + 96]
                if uint16(idx) < 1:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) - 1) >= 8:
                    revert with 'NH{q', 50
                _238 = mem[(32 * uint16(uint16(idx) - 1)) + 96]
                mem[mem[64] + 4] = address(_202)
                mem[mem[64] + 36] = _238
                require ext_code.size(address(_224))
                call address(_224).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_202), _238
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_244] == bool(mem[_244])
                _252 = mem[64]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _228
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _256 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                t = 0
                while t < _256:
                    mem[t + mem[64] + 164] = mem[t + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    t = t + 32
                    continue 
                if ceil32(_256) > _256:
                    mem[_252 + _256 + 164] = 0
                require ext_code.size(address(_202))
                call address(_202).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_256) + _252 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = uint255(s) * 0.5
            continue 
        if 0 >= mem[352]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[396 len 20]
        mem[mem[64] + 36] = cd[164]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[164]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_216] == bool(mem[_216])
}



}
