contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function send(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'not authorized'
    if arg2 <= 0:
        revert with 0, 'amount must be greater than 0'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'insufficient balance'
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'sending failed'
}

function sub_0553ceae(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    if ('cd', 4).length < 2:
        revert with 0, 'need more pairs'
    if ('cd', 36).length < 2:
        revert with 0, 'need more pairs'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[68]:
        revert with 0, 'insufficient balance'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'bad data'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 100] = address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 132] = cd[68]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), cd[68]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[68]
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length - 1:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if ('cd', 4).length < 1:
                revert with 'NH{q', 17
            if idx >= ('cd', 4).length - 1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _388 = mem[_387]
                require mem[_387] == mem[_387 + 18 len 14]
                _393 = mem[_387 + 32]
                require mem[_387 + 32] == mem[_387 + 50 len 14]
                require mem[_387 + 64] == mem[_387 + 92 len 4]
                if s <= 0:
                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    if mem[_387 + 18 len 14] <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if mem[_387 + 50 len 14] <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[_387 + 50 len 14]:
                        if mem[_387 + 18 len 14] and 1000 > -1 / mem[_387 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_387 + 18 len 14] / 1000 != mem[_387 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_387 + 18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_387 + 18 len 14]) + (997 * s) < 1000 * mem[_387 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_387 + 18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                            _503 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_503 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_503 + 36] = 0
                            mem[_503 + 68] = 0 / (1000 * Mask(112, 0, _388)) + (997 * s)
                            mem[_503 + 100] = this.address
                            mem[_503 + 132] = 128
                            mem[_503 + 164] = mem[_503]
                            t = 0
                            while t < mem[_503]:
                                mem[_503 + t + 196] = mem[_503 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_503]) > mem[_503]:
                                mem[_503 + mem[_503] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, _388)) + (997 * s), address(this.address), 128, mem[_503], mem[_503 + 196 len ceil32(mem[_503])]
                        else:
                            _504 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_504 + 36] = 0 / (1000 * Mask(112, 0, _388)) + (997 * s)
                            mem[_504 + 68] = 0
                            mem[_504 + 100] = this.address
                            mem[_504 + 132] = 128
                            mem[_504 + 164] = mem[_504]
                            t = 0
                            while t < mem[_504]:
                                mem[_504 + t + 196] = mem[_504 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_504]) > mem[_504]:
                                mem[_504 + mem[_504] + 196] = 0
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, _388)) + (997 * s), 0, address(this.address), 128, mem[_504], mem[_504 + 196 len ceil32(mem[_504])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, _388)) + (997 * s)
                        continue 
                    if 997 * s and mem[_387 + 50 len 14] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[_387 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[_387 + 50 len 14] / mem[_387 + 50 len 14] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_387 + 18 len 14] and 1000 > -1 / mem[_387 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_387 + 18 len 14] / 1000 != mem[_387 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_387 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_387 + 18 len 14]) + (997 * s) < 1000 * mem[_387 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_387 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        _549 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_549 + 36] = 0
                        mem[_549 + 68] = 997 * s * Mask(112, 0, _393) / (1000 * Mask(112, 0, _388)) + (997 * s)
                        mem[_549 + 100] = this.address
                        mem[_549 + 132] = 128
                        mem[_549 + 164] = mem[_549]
                        t = 0
                        while t < mem[_549]:
                            mem[_549 + t + 196] = mem[_549 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_549]) > mem[_549]:
                            mem[_549 + mem[_549] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * s * Mask(112, 0, _393) / (1000 * Mask(112, 0, _388)) + (997 * s), address(this.address), 128, mem[_549], mem[_549 + 196 len ceil32(mem[_549])]
                    else:
                        _550 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_550 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_550 + 36] = 997 * s * Mask(112, 0, _393) / (1000 * Mask(112, 0, _388)) + (997 * s)
                        mem[_550 + 68] = 0
                        mem[_550 + 100] = this.address
                        mem[_550 + 132] = 128
                        mem[_550 + 164] = mem[_550]
                        t = 0
                        while t < mem[_550]:
                            mem[_550 + t + 196] = mem[_550 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_550]) > mem[_550]:
                            mem[_550 + mem[_550] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, _393) / (1000 * Mask(112, 0, _388)) + (997 * s), 0, address(this.address), 128, mem[_550], mem[_550 + 196 len ceil32(mem[_550])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, _393) / (1000 * Mask(112, 0, _388)) + (997 * s)
                    continue 
                if mem[_387 + 50 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if mem[_387 + 18 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[_387 + 18 len 14]:
                    if mem[_387 + 50 len 14] and 1000 > -1 / mem[_387 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_387 + 50 len 14] / 1000 != mem[_387 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_387 + 50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_387 + 50 len 14]) + (997 * s) < 1000 * mem[_387 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_387 + 50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        _505 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_505 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_505 + 36] = 0
                        mem[_505 + 68] = 0 / (1000 * Mask(112, 0, _393)) + (997 * s)
                        mem[_505 + 100] = this.address
                        mem[_505 + 132] = 128
                        mem[_505 + 164] = mem[_505]
                        t = 0
                        while t < mem[_505]:
                            mem[_505 + t + 196] = mem[_505 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_505]) > mem[_505]:
                            mem[_505 + mem[_505] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, _393)) + (997 * s), address(this.address), 128, mem[_505], mem[_505 + 196 len ceil32(mem[_505])]
                    else:
                        _506 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_506 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_506 + 36] = 0 / (1000 * Mask(112, 0, _393)) + (997 * s)
                        mem[_506 + 68] = 0
                        mem[_506 + 100] = this.address
                        mem[_506 + 132] = 128
                        mem[_506 + 164] = mem[_506]
                        t = 0
                        while t < mem[_506]:
                            mem[_506 + t + 196] = mem[_506 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_506]) > mem[_506]:
                            mem[_506 + mem[_506] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, _393)) + (997 * s), 0, address(this.address), 128, mem[_506], mem[_506 + 196 len ceil32(mem[_506])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _393)) + (997 * s)
                    continue 
                if 997 * s and mem[_387 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_387 + 18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_387 + 18 len 14] / mem[_387 + 18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_387 + 50 len 14] and 1000 > -1 / mem[_387 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_387 + 50 len 14] / 1000 != mem[_387 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_387 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_387 + 50 len 14]) + (997 * s) < 1000 * mem[_387 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_387 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    _551 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_551 + 36] = 0
                    mem[_551 + 68] = 997 * s * Mask(112, 0, _388) / (1000 * Mask(112, 0, _393)) + (997 * s)
                    mem[_551 + 100] = this.address
                    mem[_551 + 132] = 128
                    mem[_551 + 164] = mem[_551]
                    t = 0
                    while t < mem[_551]:
                        mem[_551 + t + 196] = mem[_551 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_551]) > mem[_551]:
                        mem[_551 + mem[_551] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, _388) / (1000 * Mask(112, 0, _393)) + (997 * s), address(this.address), 128, mem[_551], mem[_551 + 196 len ceil32(mem[_551])]
                else:
                    _552 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_552 + 36] = 997 * s * Mask(112, 0, _388) / (1000 * Mask(112, 0, _393)) + (997 * s)
                    mem[_552 + 68] = 0
                    mem[_552 + 100] = this.address
                    mem[_552 + 132] = 128
                    mem[_552 + 164] = mem[_552]
                    t = 0
                    while t < mem[_552]:
                        mem[_552 + t + 196] = mem[_552 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_552]) > mem[_552]:
                        mem[_552 + mem[_552] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _388) / (1000 * Mask(112, 0, _393)) + (997 * s), 0, address(this.address), 128, mem[_552], mem[_552 + 196 len ceil32(mem[_552])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _388) / (1000 * Mask(112, 0, _393)) + (997 * s)
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _392 = mem[_391]
            require mem[_391] == mem[_391 + 18 len 14]
            _394 = mem[_391 + 32]
            require mem[_391 + 32] == mem[_391 + 50 len 14]
            require mem[_391 + 64] == mem[_391 + 92 len 4]
            if s <= 0:
                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                if mem[_391 + 18 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if mem[_391 + 50 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[_391 + 50 len 14]:
                    if mem[_391 + 18 len 14] and 1000 > -1 / mem[_391 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_391 + 18 len 14] / 1000 != mem[_391 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_391 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_391 + 18 len 14]) + (997 * s) < 1000 * mem[_391 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_391 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _525 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_525 + 36] = 0
                        mem[_525 + 68] = 0 / (1000 * Mask(112, 0, _392)) + (997 * s)
                        mem[_525 + 100] = this.address
                        mem[_525 + 132] = 128
                        mem[_525 + 164] = mem[_525]
                        t = 0
                        while t < mem[_525]:
                            mem[_525 + t + 196] = mem[_525 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_525]) > mem[_525]:
                            mem[_525 + mem[_525] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, _392)) + (997 * s), address(this.address), 128, mem[_525], mem[_525 + 196 len ceil32(mem[_525])]
                    else:
                        _526 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_526 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_526 + 36] = 0 / (1000 * Mask(112, 0, _392)) + (997 * s)
                        mem[_526 + 68] = 0
                        mem[_526 + 100] = this.address
                        mem[_526 + 132] = 128
                        mem[_526 + 164] = mem[_526]
                        t = 0
                        while t < mem[_526]:
                            mem[_526 + t + 196] = mem[_526 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_526]) > mem[_526]:
                            mem[_526 + mem[_526] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, _392)) + (997 * s), 0, address(this.address), 128, mem[_526], mem[_526 + 196 len ceil32(mem[_526])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _392)) + (997 * s)
                    continue 
                if 997 * s and mem[_391 + 50 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_391 + 50 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_391 + 50 len 14] / mem[_391 + 50 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_391 + 18 len 14] and 1000 > -1 / mem[_391 + 18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_391 + 18 len 14] / 1000 != mem[_391 + 18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_391 + 18 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_391 + 18 len 14]) + (997 * s) < 1000 * mem[_391 + 18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_391 + 18 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _577 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_577 + 36] = 0
                    mem[_577 + 68] = 997 * s * Mask(112, 0, _394) / (1000 * Mask(112, 0, _392)) + (997 * s)
                    mem[_577 + 100] = this.address
                    mem[_577 + 132] = 128
                    mem[_577 + 164] = mem[_577]
                    t = 0
                    while t < mem[_577]:
                        mem[_577 + t + 196] = mem[_577 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_577]) > mem[_577]:
                        mem[_577 + mem[_577] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, _394) / (1000 * Mask(112, 0, _392)) + (997 * s), address(this.address), 128, mem[_577], mem[_577 + 196 len ceil32(mem[_577])]
                else:
                    _578 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_578 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_578 + 36] = 997 * s * Mask(112, 0, _394) / (1000 * Mask(112, 0, _392)) + (997 * s)
                    mem[_578 + 68] = 0
                    mem[_578 + 100] = this.address
                    mem[_578 + 132] = 128
                    mem[_578 + 164] = mem[_578]
                    t = 0
                    while t < mem[_578]:
                        mem[_578 + t + 196] = mem[_578 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_578]) > mem[_578]:
                        mem[_578 + mem[_578] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _394) / (1000 * Mask(112, 0, _392)) + (997 * s), 0, address(this.address), 128, mem[_578], mem[_578 + 196 len ceil32(mem[_578])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _394) / (1000 * Mask(112, 0, _392)) + (997 * s)
                continue 
            if mem[_391 + 50 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if mem[_391 + 18 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if s and 997 > -1 / s:
                revert with 'NH{q', 17
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[_391 + 18 len 14]:
                if mem[_391 + 50 len 14] and 1000 > -1 / mem[_391 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_391 + 50 len 14] / 1000 != mem[_391 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_391 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_391 + 50 len 14]) + (997 * s) < 1000 * mem[_391 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_391 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _527 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_527 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_527 + 36] = 0
                    mem[_527 + 68] = 0 / (1000 * Mask(112, 0, _394)) + (997 * s)
                    mem[_527 + 100] = this.address
                    mem[_527 + 132] = 128
                    mem[_527 + 164] = mem[_527]
                    t = 0
                    while t < mem[_527]:
                        mem[_527 + t + 196] = mem[_527 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_527]) > mem[_527]:
                        mem[_527 + mem[_527] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, _394)) + (997 * s), address(this.address), 128, mem[_527], mem[_527 + 196 len ceil32(mem[_527])]
                else:
                    _528 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_528 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_528 + 36] = 0 / (1000 * Mask(112, 0, _394)) + (997 * s)
                    mem[_528 + 68] = 0
                    mem[_528 + 100] = this.address
                    mem[_528 + 132] = 128
                    mem[_528 + 164] = mem[_528]
                    t = 0
                    while t < mem[_528]:
                        mem[_528 + t + 196] = mem[_528 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_528]) > mem[_528]:
                        mem[_528 + mem[_528] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, _394)) + (997 * s), 0, address(this.address), 128, mem[_528], mem[_528 + 196 len ceil32(mem[_528])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, _394)) + (997 * s)
                continue 
            if 997 * s and mem[_391 + 18 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if not mem[_391 + 18 len 14]:
                revert with 'NH{q', 18
            if 997 * s * mem[_391 + 18 len 14] / mem[_391 + 18 len 14] != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[_391 + 50 len 14] and 1000 > -1 / mem[_391 + 50 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_391 + 50 len 14] / 1000 != mem[_391 + 50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * mem[_391 + 50 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if (1000 * mem[_391 + 50 len 14]) + (997 * s) < 1000 * mem[_391 + 50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * mem[_391 + 50 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _579 = mem[64]
                mem[64] = mem[64] + 32
                mem[_579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_579 + 36] = 0
                mem[_579 + 68] = 997 * s * Mask(112, 0, _392) / (1000 * Mask(112, 0, _394)) + (997 * s)
                mem[_579 + 100] = this.address
                mem[_579 + 132] = 128
                mem[_579 + 164] = mem[_579]
                t = 0
                while t < mem[_579]:
                    mem[_579 + t + 196] = mem[_579 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_579]) > mem[_579]:
                    mem[_579 + mem[_579] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, _392) / (1000 * Mask(112, 0, _394)) + (997 * s), address(this.address), 128, mem[_579], mem[_579 + 196 len ceil32(mem[_579])]
            else:
                _580 = mem[64]
                mem[64] = mem[64] + 32
                mem[_580 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_580 + 36] = 997 * s * Mask(112, 0, _392) / (1000 * Mask(112, 0, _394)) + (997 * s)
                mem[_580 + 68] = 0
                mem[_580 + 100] = this.address
                mem[_580 + 132] = 128
                mem[_580 + 164] = mem[_580]
                t = 0
                while t < mem[_580]:
                    mem[_580 + t + 196] = mem[_580 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_580]) > mem[_580]:
                    mem[_580 + mem[_580] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, _392) / (1000 * Mask(112, 0, _394)) + (997 * s), 0, address(this.address), 128, mem[_580], mem[_580 + 196 len ceil32(mem[_580])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _392) / (1000 * Mask(112, 0, _394)) + (997 * s)
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length - 1:
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _399 = mem[_398]
            require mem[_398] == mem[_398 + 18 len 14]
            _407 = mem[_398 + 32]
            require mem[_398 + 32] == mem[_398 + 50 len 14]
            require mem[_398 + 64] == mem[_398 + 92 len 4]
            if s <= 0:
                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                if mem[_398 + 18 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if mem[_398 + 50 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[_398 + 50 len 14]:
                    if mem[_398 + 18 len 14] and 1000 > -1 / mem[_398 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_398 + 18 len 14] / 1000 != mem[_398 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_398 + 18 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_398 + 18 len 14]) + (997 * s) < 1000 * mem[_398 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_398 + 18 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        _567 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_567 + 36] = 0
                        mem[_567 + 68] = 0 / (1000 * Mask(112, 0, _399)) + (997 * s)
                        mem[_567 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_567 + 132] = 128
                        mem[_567 + 164] = mem[_567]
                        t = 0
                        while t < mem[_567]:
                            mem[_567 + t + 196] = mem[_567 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_567]) > mem[_567]:
                            mem[_567 + mem[_567] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, _399)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_567], mem[_567 + 196 len ceil32(mem[_567])]
                    else:
                        _568 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_568 + 36] = 0 / (1000 * Mask(112, 0, _399)) + (997 * s)
                        mem[_568 + 68] = 0
                        mem[_568 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_568 + 132] = 128
                        mem[_568 + 164] = mem[_568]
                        t = 0
                        while t < mem[_568]:
                            mem[_568 + t + 196] = mem[_568 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_568]) > mem[_568]:
                            mem[_568 + mem[_568] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, _399)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_568], mem[_568 + 196 len ceil32(mem[_568])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, _399)) + (997 * s)
                    continue 
                if 997 * s and mem[_398 + 50 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[_398 + 50 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * mem[_398 + 50 len 14] / mem[_398 + 50 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[_398 + 18 len 14] and 1000 > -1 / mem[_398 + 18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_398 + 18 len 14] / 1000 != mem[_398 + 18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_398 + 18 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_398 + 18 len 14]) + (997 * s) < 1000 * mem[_398 + 18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_398 + 18 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    _627 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_627 + 36] = 0
                    mem[_627 + 68] = 997 * s * Mask(112, 0, _407) / (1000 * Mask(112, 0, _399)) + (997 * s)
                    mem[_627 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_627 + 132] = 128
                    mem[_627 + 164] = mem[_627]
                    t = 0
                    while t < mem[_627]:
                        mem[_627 + t + 196] = mem[_627 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_627]) > mem[_627]:
                        mem[_627 + mem[_627] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * s * Mask(112, 0, _407) / (1000 * Mask(112, 0, _399)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_627], mem[_627 + 196 len ceil32(mem[_627])]
                else:
                    _628 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_628 + 36] = 997 * s * Mask(112, 0, _407) / (1000 * Mask(112, 0, _399)) + (997 * s)
                    mem[_628 + 68] = 0
                    mem[_628 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_628 + 132] = 128
                    mem[_628 + 164] = mem[_628]
                    t = 0
                    while t < mem[_628]:
                        mem[_628 + t + 196] = mem[_628 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_628]) > mem[_628]:
                        mem[_628 + mem[_628] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * s * Mask(112, 0, _407) / (1000 * Mask(112, 0, _399)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_628], mem[_628 + 196 len ceil32(mem[_628])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _407) / (1000 * Mask(112, 0, _399)) + (997 * s)
                continue 
            if mem[_398 + 50 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if mem[_398 + 18 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if s and 997 > -1 / s:
                revert with 'NH{q', 17
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[_398 + 18 len 14]:
                if mem[_398 + 50 len 14] and 1000 > -1 / mem[_398 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_398 + 50 len 14] / 1000 != mem[_398 + 50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_398 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_398 + 50 len 14]) + (997 * s) < 1000 * mem[_398 + 50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_398 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    _569 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_569 + 36] = 0
                    mem[_569 + 68] = 0 / (1000 * Mask(112, 0, _407)) + (997 * s)
                    mem[_569 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_569 + 132] = 128
                    mem[_569 + 164] = mem[_569]
                    t = 0
                    while t < mem[_569]:
                        mem[_569 + t + 196] = mem[_569 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_569]) > mem[_569]:
                        mem[_569 + mem[_569] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, _407)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_569], mem[_569 + 196 len ceil32(mem[_569])]
                else:
                    _570 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_570 + 36] = 0 / (1000 * Mask(112, 0, _407)) + (997 * s)
                    mem[_570 + 68] = 0
                    mem[_570 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_570 + 132] = 128
                    mem[_570 + 164] = mem[_570]
                    t = 0
                    while t < mem[_570]:
                        mem[_570 + t + 196] = mem[_570 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_570]) > mem[_570]:
                        mem[_570 + mem[_570] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, _407)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_570], mem[_570 + 196 len ceil32(mem[_570])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, _407)) + (997 * s)
                continue 
            if 997 * s and mem[_398 + 18 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if not mem[_398 + 18 len 14]:
                revert with 'NH{q', 18
            if 997 * s * mem[_398 + 18 len 14] / mem[_398 + 18 len 14] != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[_398 + 50 len 14] and 1000 > -1 / mem[_398 + 50 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_398 + 50 len 14] / 1000 != mem[_398 + 50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * mem[_398 + 50 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if (1000 * mem[_398 + 50 len 14]) + (997 * s) < 1000 * mem[_398 + 50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * mem[_398 + 50 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                _629 = mem[64]
                mem[64] = mem[64] + 32
                mem[_629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_629 + 36] = 0
                mem[_629 + 68] = 997 * s * Mask(112, 0, _399) / (1000 * Mask(112, 0, _407)) + (997 * s)
                mem[_629 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_629 + 132] = 128
                mem[_629 + 164] = mem[_629]
                t = 0
                while t < mem[_629]:
                    mem[_629 + t + 196] = mem[_629 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_629]) > mem[_629]:
                    mem[_629 + mem[_629] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, _399) / (1000 * Mask(112, 0, _407)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_629], mem[_629 + 196 len ceil32(mem[_629])]
            else:
                _630 = mem[64]
                mem[64] = mem[64] + 32
                mem[_630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_630 + 36] = 997 * s * Mask(112, 0, _399) / (1000 * Mask(112, 0, _407)) + (997 * s)
                mem[_630 + 68] = 0
                mem[_630 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_630 + 132] = 128
                mem[_630 + 164] = mem[_630]
                t = 0
                while t < mem[_630]:
                    mem[_630 + t + 196] = mem[_630 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_630]) > mem[_630]:
                    mem[_630 + mem[_630] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, _399) / (1000 * Mask(112, 0, _407)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_630], mem[_630 + 196 len ceil32(mem[_630])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _399) / (1000 * Mask(112, 0, _407)) + (997 * s)
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _403 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _406 = mem[_403]
        require mem[_403] == mem[_403 + 18 len 14]
        _416 = mem[_403 + 32]
        require mem[_403 + 32] == mem[_403 + 50 len 14]
        require mem[_403 + 64] == mem[_403 + 92 len 4]
        if s <= 0:
            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
        if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
            if mem[_403 + 18 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if mem[_403 + 50 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if s and 997 > -1 / s:
                revert with 'NH{q', 17
            if 997 * s / 997 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[_403 + 50 len 14]:
                if mem[_403 + 18 len 14] and 1000 > -1 / mem[_403 + 18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_403 + 18 len 14] / 1000 != mem[_403 + 18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[_403 + 18 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[_403 + 18 len 14]) + (997 * s) < 1000 * mem[_403 + 18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[_403 + 18 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    _597 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_597 + 36] = 0
                    mem[_597 + 68] = 0 / (1000 * Mask(112, 0, _406)) + (997 * s)
                    mem[_597 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_597 + 132] = 128
                    mem[_597 + 164] = mem[_597]
                    t = 0
                    while t < mem[_597]:
                        mem[_597 + t + 196] = mem[_597 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_597]) > mem[_597]:
                        mem[_597 + mem[_597] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, _406)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_597], mem[_597 + 196 len ceil32(mem[_597])]
                else:
                    _598 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_598 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_598 + 36] = 0 / (1000 * Mask(112, 0, _406)) + (997 * s)
                    mem[_598 + 68] = 0
                    mem[_598 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    mem[_598 + 132] = 128
                    mem[_598 + 164] = mem[_598]
                    t = 0
                    while t < mem[_598]:
                        mem[_598 + t + 196] = mem[_598 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_598]) > mem[_598]:
                        mem[_598 + mem[_598] + 196] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, _406)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_598], mem[_598 + 196 len ceil32(mem[_598])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (1000 * Mask(112, 0, _406)) + (997 * s)
                continue 
            if 997 * s and mem[_403 + 50 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if not mem[_403 + 50 len 14]:
                revert with 'NH{q', 18
            if 997 * s * mem[_403 + 50 len 14] / mem[_403 + 50 len 14] != 997 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[_403 + 18 len 14] and 1000 > -1 / mem[_403 + 18 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_403 + 18 len 14] / 1000 != mem[_403 + 18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * mem[_403 + 18 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if (1000 * mem[_403 + 18 len 14]) + (997 * s) < 1000 * mem[_403 + 18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * mem[_403 + 18 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _657 = mem[64]
                mem[64] = mem[64] + 32
                mem[_657 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_657 + 36] = 0
                mem[_657 + 68] = 997 * s * Mask(112, 0, _416) / (1000 * Mask(112, 0, _406)) + (997 * s)
                mem[_657 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_657 + 132] = 128
                mem[_657 + 164] = mem[_657]
                t = 0
                while t < mem[_657]:
                    mem[_657 + t + 196] = mem[_657 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_657]) > mem[_657]:
                    mem[_657 + mem[_657] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * Mask(112, 0, _416) / (1000 * Mask(112, 0, _406)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_657], mem[_657 + 196 len ceil32(mem[_657])]
            else:
                _658 = mem[64]
                mem[64] = mem[64] + 32
                mem[_658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_658 + 36] = 997 * s * Mask(112, 0, _416) / (1000 * Mask(112, 0, _406)) + (997 * s)
                mem[_658 + 68] = 0
                mem[_658 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_658 + 132] = 128
                mem[_658 + 164] = mem[_658]
                t = 0
                while t < mem[_658]:
                    mem[_658 + t + 196] = mem[_658 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_658]) > mem[_658]:
                    mem[_658 + mem[_658] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * Mask(112, 0, _416) / (1000 * Mask(112, 0, _406)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_658], mem[_658 + 196 len ceil32(mem[_658])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _416) / (1000 * Mask(112, 0, _406)) + (997 * s)
            continue 
        if mem[_403 + 50 len 14] <= 0:
            revert with 0, 'INSUFFICIENT_LIQUIDITY'
        if mem[_403 + 18 len 14] <= 0:
            revert with 0, 'INSUFFICIENT_LIQUIDITY'
        if s and 997 > -1 / s:
            revert with 'NH{q', 17
        if 997 * s / 997 != s:
            revert with 0, 'ds-math-mul-overflow'
        if not mem[_403 + 18 len 14]:
            if mem[_403 + 50 len 14] and 1000 > -1 / mem[_403 + 50 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_403 + 50 len 14] / 1000 != mem[_403 + 50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * mem[_403 + 50 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if (1000 * mem[_403 + 50 len 14]) + (997 * s) < 1000 * mem[_403 + 50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * mem[_403 + 50 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                _599 = mem[64]
                mem[64] = mem[64] + 32
                mem[_599 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_599 + 36] = 0
                mem[_599 + 68] = 0 / (1000 * Mask(112, 0, _416)) + (997 * s)
                mem[_599 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_599 + 132] = 128
                mem[_599 + 164] = mem[_599]
                t = 0
                while t < mem[_599]:
                    mem[_599 + t + 196] = mem[_599 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_599]) > mem[_599]:
                    mem[_599 + mem[_599] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (1000 * Mask(112, 0, _416)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_599], mem[_599 + 196 len ceil32(mem[_599])]
            else:
                _600 = mem[64]
                mem[64] = mem[64] + 32
                mem[_600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_600 + 36] = 0 / (1000 * Mask(112, 0, _416)) + (997 * s)
                mem[_600 + 68] = 0
                mem[_600 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[_600 + 132] = 128
                mem[_600 + 164] = mem[_600]
                t = 0
                while t < mem[_600]:
                    mem[_600 + t + 196] = mem[_600 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_600]) > mem[_600]:
                    mem[_600 + mem[_600] + 196] = 0
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / (1000 * Mask(112, 0, _416)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_600], mem[_600 + 196 len ceil32(mem[_600])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0 / (1000 * Mask(112, 0, _416)) + (997 * s)
            continue 
        if 997 * s and mem[_403 + 18 len 14] > -1 / 997 * s:
            revert with 'NH{q', 17
        if not mem[_403 + 18 len 14]:
            revert with 'NH{q', 18
        if 997 * s * mem[_403 + 18 len 14] / mem[_403 + 18 len 14] != 997 * s:
            revert with 0, 'ds-math-mul-overflow'
        if mem[_403 + 50 len 14] and 1000 > -1 / mem[_403 + 50 len 14]:
            revert with 'NH{q', 17
        if 1000 * mem[_403 + 50 len 14] / 1000 != mem[_403 + 50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * mem[_403 + 50 len 14] > (-997 * s) - 1:
            revert with 'NH{q', 17
        if (1000 * mem[_403 + 50 len 14]) + (997 * s) < 1000 * mem[_403 + 50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * mem[_403 + 50 len 14]) + (997 * s):
            revert with 'NH{q', 18
        if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
            _659 = mem[64]
            mem[64] = mem[64] + 32
            mem[_659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_659 + 36] = 0
            mem[_659 + 68] = 997 * s * Mask(112, 0, _406) / (1000 * Mask(112, 0, _416)) + (997 * s)
            mem[_659 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[_659 + 132] = 128
            mem[_659 + 164] = mem[_659]
            t = 0
            while t < mem[_659]:
                mem[_659 + t + 196] = mem[_659 + t + 32]
                t = t + 32
                continue 
            if ceil32(mem[_659]) > mem[_659]:
                mem[_659 + mem[_659] + 196] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * s * Mask(112, 0, _406) / (1000 * Mask(112, 0, _416)) + (997 * s), address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_659], mem[_659 + 196 len ceil32(mem[_659])]
        else:
            _660 = mem[64]
            mem[64] = mem[64] + 32
            mem[_660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_660 + 36] = 997 * s * Mask(112, 0, _406) / (1000 * Mask(112, 0, _416)) + (997 * s)
            mem[_660 + 68] = 0
            mem[_660 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[_660 + 132] = 128
            mem[_660 + 164] = mem[_660]
            t = 0
            while t < mem[_660]:
                mem[_660 + t + 196] = mem[_660 + t + 32]
                t = t + 32
                continue 
            if ceil32(mem[_660]) > mem[_660]:
                mem[_660 + mem[_660] + 196] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * s * Mask(112, 0, _406) / (1000 * Mask(112, 0, _416)) + (997 * s), 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_660], mem[_660 + 196 len ceil32(mem[_660])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 997 * s * Mask(112, 0, _406) / (1000 * Mask(112, 0, _416)) + (997 * s)
        continue 
    emit 0xeed729a2: cd[68], s
    if s <= cd[68]:
        revert with 0, 'no good'
}



}
