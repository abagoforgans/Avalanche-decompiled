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
    if 3 * 10^16 > !cd[68]:
        revert with 'NH{q', 17
    if t <= cd[68] + 3 * 10^16:
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
        if 1 >= ('cd', 484)[4]:
            revert with 'NH{q', 50
        idx = 1
        s = mem[416]
        t = cd[196]
        while uint16(idx) < ('cd', 484)[4]:
            if uint16(idx) >= 8:
                revert with 'NH{q', 50
            if Mask(1, 1, t) >> 1:
                _440 = mem[(32 * uint16(idx)) + 96]
                if uint16(idx) != 1:
                    if mem[352] < 1:
                        revert with 'NH{q', 17
                    if uint16(idx) == mem[352] - 1:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _440
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        _489 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        u = 0
                        while u < _489:
                            mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                            u = u + 32
                            continue 
                        if ceil32(_489) > _489:
                            mem[mem[64] + _489 + 164] = 0
                        require ext_code.size(address(s))
                        call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _440, 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_489) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        idx = uint16(idx) + 1
                        s = this.address
                        t = uint255(t) * 0.5
                        continue 
                    if 1 > -uint16(idx) + 65535:
                        revert with 'NH{q', 17
                    if uint16(uint16(idx) + 1) >= mem[352]:
                        revert with 'NH{q', 50
                    _497 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                    _505 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _440
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_497)
                    mem[mem[64] + 100] = 128
                    _509 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _509:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_509) > _509:
                        mem[_505 + _509 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_509) + _505 + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = _497
                    t = uint255(t) * 0.5
                    continue 
                require ext_code.size(address(s))
                if Mask(1, 1, t) >> 1:
                    staticcall address(s).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _478 = mem[_469]
                    require mem[_469] == mem[_469 + 12 len 20]
                    _511 = mem[96]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = _511
                    require ext_code.size(address(_478))
                    call address(_478).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(s), _511
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_546] == bool(mem[_546])
                    if mem[352] < 1:
                        revert with 'NH{q', 17
                    if uint16(idx) == mem[352] - 1:
                        _581 = mem[64]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _440
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        _589 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        u = 0
                        while u < _589:
                            mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                            u = u + 32
                            continue 
                        if ceil32(_589) > _589:
                            mem[_581 + _589 + 164] = 0
                        require ext_code.size(address(s))
                        call address(s).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_589) + _581 + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        idx = uint16(idx) + 1
                        s = this.address
                        t = uint255(t) * 0.5
                        continue 
                    if 1 > -uint16(idx) + 65535:
                        revert with 'NH{q', 17
                    if uint16(uint16(idx) + 1) >= mem[352]:
                        revert with 'NH{q', 50
                    _605 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _440
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_605)
                    mem[mem[64] + 100] = 128
                    _629 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _629:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_629) > _629:
                        mem[mem[64] + _629 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _440, 0, address(_605), 128, mem[mem[64] + 132 len ceil32(_629) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = _605
                    t = uint255(t) * 0.5
                    continue 
                staticcall address(s).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _479 = mem[_470]
                require mem[_470] == mem[_470 + 12 len 20]
                _514 = mem[96]
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = _514
                require ext_code.size(address(_479))
                call address(_479).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(s), _514
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_547] == bool(mem[_547])
                if mem[352] < 1:
                    revert with 'NH{q', 17
                if uint16(idx) == mem[352] - 1:
                    _582 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _440
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    _590 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _590:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_590) > _590:
                        mem[_582 + _590 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_590) + _582 + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = this.address
                    t = uint255(t) * 0.5
                    continue 
                if 1 > -uint16(idx) + 65535:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) + 1) >= mem[352]:
                    revert with 'NH{q', 50
                _607 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _440
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = address(_607)
                mem[mem[64] + 100] = 128
                _631 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _631:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_631) > _631:
                    mem[mem[64] + _631 + 164] = 0
                require ext_code.size(address(s))
                call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args _440, 0, address(_607), 128, mem[mem[64] + 132 len ceil32(_631) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _607
                t = uint255(t) * 0.5
                continue 
            _441 = mem[(32 * uint16(idx)) + 96]
            if uint16(idx) != 1:
                if mem[352] < 1:
                    revert with 'NH{q', 17
                if uint16(idx) == mem[352] - 1:
                    _480 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _441
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    _490 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _490:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_490) > _490:
                        mem[_480 + _490 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_490) + _480 + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = this.address
                    t = uint255(t) * 0.5
                    continue 
                if 1 > -uint16(idx) + 65535:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) + 1) >= mem[352]:
                    revert with 'NH{q', 50
                _499 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _441
                mem[mem[64] + 68] = address(_499)
                mem[mem[64] + 100] = 128
                _517 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _517:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_517) > _517:
                    mem[mem[64] + _517 + 164] = 0
                require ext_code.size(address(s))
                call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _441, address(_499), 128, mem[mem[64] + 132 len ceil32(_517) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _499
                t = uint255(t) * 0.5
                continue 
            require ext_code.size(address(s))
            if not Mask(1, 1, t) >> 1:
                staticcall address(s).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _482 = mem[_472]
                require mem[_472] == mem[_472 + 12 len 20]
                _522 = mem[96]
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = _522
                require ext_code.size(address(_482))
                call address(_482).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(s), _522
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_550] == bool(mem[_550])
                if mem[352] < 1:
                    revert with 'NH{q', 17
                if uint16(idx) == mem[352] - 1:
                    _584 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _441
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    _592 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _592:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_592) > _592:
                        mem[_584 + _592 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_592) + _584 + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = this.address
                    t = uint255(t) * 0.5
                    continue 
                if 1 > -uint16(idx) + 65535:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) + 1) >= mem[352]:
                    revert with 'NH{q', 50
                _611 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _441
                mem[mem[64] + 68] = address(_611)
                mem[mem[64] + 100] = 128
                _635 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _635:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_635) > _635:
                    mem[mem[64] + _635 + 164] = 0
                require ext_code.size(address(s))
                call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _441, address(_611), 128, mem[mem[64] + 132 len ceil32(_635) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _611
                t = uint255(t) * 0.5
                continue 
            staticcall address(s).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _481 = mem[_471]
            require mem[_471] == mem[_471 + 12 len 20]
            _519 = mem[96]
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = _519
            require ext_code.size(address(_481))
            call address(_481).0xa9059cbb with:
                 gas gas_remaining wei
                args address(s), _519
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _549 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_549] == bool(mem[_549])
            if mem[352] < 1:
                revert with 'NH{q', 17
            if uint16(idx) == mem[352] - 1:
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _441
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _591 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _591:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_591) > _591:
                    mem[mem[64] + _591 + 164] = 0
                require ext_code.size(address(s))
                call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _441, address(this.address), 128, mem[mem[64] + 132 len ceil32(_591) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = this.address
                t = uint255(t) * 0.5
                continue 
            if 1 > -uint16(idx) + 65535:
                revert with 'NH{q', 17
            if uint16(uint16(idx) + 1) >= mem[352]:
                revert with 'NH{q', 50
            _609 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
            _623 = mem[64]
            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _441
            mem[mem[64] + 68] = address(_609)
            mem[mem[64] + 100] = 128
            _633 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
            u = 0
            while u < _633:
                mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                u = u + 32
                continue 
            if ceil32(_633) > _633:
                mem[_623 + _633 + 164] = 0
            require ext_code.size(address(s))
            call address(s).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_633) + _623 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = _609
            t = uint255(t) * 0.5
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
        _445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_445] == bool(mem[_445])
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
        if 1 >= ('cd', 484)[4]:
            revert with 'NH{q', 50
        idx = 1
        s = mem[416]
        t = cd[196]
        while uint16(idx) < ('cd', 484)[4]:
            if uint16(idx) >= 8:
                revert with 'NH{q', 50
            if Mask(1, 1, t) >> 1:
                _443 = mem[(32 * uint16(idx)) + 96]
                if uint16(idx) != 1:
                    if mem[352] < 1:
                        revert with 'NH{q', 17
                    if uint16(idx) == mem[352] - 1:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _443
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        _491 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        u = 0
                        while u < _491:
                            mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                            u = u + 32
                            continue 
                        if ceil32(_491) > _491:
                            mem[mem[64] + _491 + 164] = 0
                        require ext_code.size(address(s))
                        call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _443, 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_491) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        idx = uint16(idx) + 1
                        s = this.address
                        t = uint255(t) * 0.5
                        continue 
                    if 1 > -uint16(idx) + 65535:
                        revert with 'NH{q', 17
                    if uint16(uint16(idx) + 1) >= mem[352]:
                        revert with 'NH{q', 50
                    _501 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                    _507 = mem[64]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _443
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_501)
                    mem[mem[64] + 100] = 128
                    _525 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _525:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_525) > _525:
                        mem[_507 + _525 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_525) + _507 + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = _501
                    t = uint255(t) * 0.5
                    continue 
                require ext_code.size(address(s))
                if not Mask(1, 1, t) >> 1:
                    staticcall address(s).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _485 = mem[_474]
                    require mem[_474] == mem[_474 + 12 len 20]
                    _530 = mem[96]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = _530
                    require ext_code.size(address(_485))
                    call address(_485).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(s), _530
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_553] == bool(mem[_553])
                    if mem[352] < 1:
                        revert with 'NH{q', 17
                    if uint16(idx) == mem[352] - 1:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _443
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        _594 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                        u = 0
                        while u < _594:
                            mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                            u = u + 32
                            continue 
                        if ceil32(_594) > _594:
                            mem[mem[64] + _594 + 164] = 0
                        require ext_code.size(address(s))
                        call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _443, 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_594) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        idx = uint16(idx) + 1
                        s = this.address
                        t = uint255(t) * 0.5
                        continue 
                    if 1 > -uint16(idx) + 65535:
                        revert with 'NH{q', 17
                    if uint16(uint16(idx) + 1) >= mem[352]:
                        revert with 'NH{q', 50
                    _615 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _443
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_615)
                    mem[mem[64] + 100] = 128
                    _639 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _639:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_639) > _639:
                        mem[mem[64] + _639 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _443, 0, address(_615), 128, mem[mem[64] + 132 len ceil32(_639) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = _615
                    t = uint255(t) * 0.5
                    continue 
                staticcall address(s).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _484 = mem[_473]
                require mem[_473] == mem[_473 + 12 len 20]
                _527 = mem[96]
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = _527
                require ext_code.size(address(_484))
                call address(_484).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(s), _527
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_552] == bool(mem[_552])
                if mem[352] < 1:
                    revert with 'NH{q', 17
                if uint16(idx) == mem[352] - 1:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _443
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    _593 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _593:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_593) > _593:
                        mem[mem[64] + _593 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _443, 0, address(this.address), 128, mem[mem[64] + 132 len ceil32(_593) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = this.address
                    t = uint255(t) * 0.5
                    continue 
                if 1 > -uint16(idx) + 65535:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) + 1) >= mem[352]:
                    revert with 'NH{q', 50
                _613 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                _625 = mem[64]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _443
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = address(_613)
                mem[mem[64] + 100] = 128
                _637 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _637:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_637) > _637:
                    mem[_625 + _637 + 164] = 0
                require ext_code.size(address(s))
                call address(s).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_637) + _625 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _613
                t = uint255(t) * 0.5
                continue 
            _444 = mem[(32 * uint16(idx)) + 96]
            if uint16(idx) != 1:
                if mem[352] < 1:
                    revert with 'NH{q', 17
                if uint16(idx) == mem[352] - 1:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _444
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    _492 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _492:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_492) > _492:
                        mem[mem[64] + _492 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _444, address(this.address), 128, mem[mem[64] + 132 len ceil32(_492) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = this.address
                    t = uint255(t) * 0.5
                    continue 
                if 1 > -uint16(idx) + 65535:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) + 1) >= mem[352]:
                    revert with 'NH{q', 50
                _503 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                _508 = mem[64]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _444
                mem[mem[64] + 68] = address(_503)
                mem[mem[64] + 100] = 128
                _533 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _533:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_533) > _533:
                    mem[_508 + _533 + 164] = 0
                require ext_code.size(address(s))
                call address(s).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_533) + _508 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _503
                t = uint255(t) * 0.5
                continue 
            require ext_code.size(address(s))
            if Mask(1, 1, t) >> 1:
                staticcall address(s).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _487 = mem[_475]
                require mem[_475] == mem[_475 + 12 len 20]
                _535 = mem[96]
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = _535
                require ext_code.size(address(_487))
                call address(_487).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(s), _535
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_555] == bool(mem[_555])
                if mem[352] < 1:
                    revert with 'NH{q', 17
                if uint16(idx) == mem[352] - 1:
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _444
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    _595 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                    u = 0
                    while u < _595:
                        mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                        u = u + 32
                        continue 
                    if ceil32(_595) > _595:
                        mem[mem[64] + _595 + 164] = 0
                    require ext_code.size(address(s))
                    call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _444, address(this.address), 128, mem[mem[64] + 132 len ceil32(_595) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint16(idx) == 65535:
                        revert with 'NH{q', 17
                    idx = uint16(idx) + 1
                    s = this.address
                    t = uint255(t) * 0.5
                    continue 
                if 1 > -uint16(idx) + 65535:
                    revert with 'NH{q', 17
                if uint16(uint16(idx) + 1) >= mem[352]:
                    revert with 'NH{q', 50
                _617 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _444
                mem[mem[64] + 68] = address(_617)
                mem[mem[64] + 100] = 128
                _641 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _641:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_641) > _641:
                    mem[mem[64] + _641 + 164] = 0
                require ext_code.size(address(s))
                call address(s).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, _444, address(_617), 128, mem[mem[64] + 132 len ceil32(_641) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = _617
                t = uint255(t) * 0.5
                continue 
            staticcall address(s).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _488 = mem[_476]
            require mem[_476] == mem[_476 + 12 len 20]
            _538 = mem[96]
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = _538
            require ext_code.size(address(_488))
            call address(_488).0xa9059cbb with:
                 gas gas_remaining wei
                args address(s), _538
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _556 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_556] == bool(mem[_556])
            if mem[352] < 1:
                revert with 'NH{q', 17
            if uint16(idx) == mem[352] - 1:
                _588 = mem[64]
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _444
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                _596 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
                u = 0
                while u < _596:
                    mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                    u = u + 32
                    continue 
                if ceil32(_596) > _596:
                    mem[_588 + _596 + 164] = 0
                require ext_code.size(address(s))
                call address(s).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_596) + _588 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(idx) == 65535:
                    revert with 'NH{q', 17
                idx = uint16(idx) + 1
                s = this.address
                t = uint255(t) * 0.5
                continue 
            if 1 > -uint16(idx) + 65535:
                revert with 'NH{q', 17
            if uint16(uint16(idx) + 1) >= mem[352]:
                revert with 'NH{q', 50
            _619 = mem[(32 * uint16(uint16(idx) + 1)) + 384]
            _628 = mem[64]
            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _444
            mem[mem[64] + 68] = address(_619)
            mem[mem[64] + 100] = 128
            _643 = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 353]
            u = 0
            while u < _643:
                mem[u + mem[64] + 164] = mem[u + ceil32(32 * ('cd', 484)[4]) + ceil32(return_data.size) + 385]
                u = u + 32
                continue 
            if ceil32(_643) > _643:
                mem[_628 + _643 + 164] = 0
            require ext_code.size(address(s))
            call address(s).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_643) + _628 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(idx) == 65535:
                revert with 'NH{q', 17
            idx = uint16(idx) + 1
            s = _619
            t = uint255(t) * 0.5
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
        _448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_448] == bool(mem[_448])
}



}
