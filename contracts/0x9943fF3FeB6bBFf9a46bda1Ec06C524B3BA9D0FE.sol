contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not the owner.'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1047311f(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Caller is not the owner.'
    mem[96] = ('cd', 36).length
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    if ('cd', 36).length < 1:
        revert with 0, 'INVALID_POOL_PATH'
    if 1 > !('cd', 36).length:
        revert with 'NH{q', 17
    if ('cd', 68).length < ('cd', 36).length + 1:
        revert with 0, 'INVALID_TOKEN_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    mem[64] = (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
    if not ('cd', 68).length:
        if 0 < ('cd', 68).length:
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = cd[4]
            if var91001 < 1:
                revert with 'NH{q', 17
            if var95002 < var95001:
                if var97001 < ('cd', 36).length:
                    if var99006 < ('cd', 68).length:
                        if 1 > !var103002:
                            revert with 'NH{q', 17
                        idx = var105003 + 1
                        s = var105006
                        t = var105007
                        u = var105011
                        while idx < ('cd', 68).length:
                            _9050 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                            if address(s) == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                if not address(s):
                                    revert with 0, 'ZERO_ADDRESS'
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9082 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_9082] == mem[_9082 + 18 len 14]
                                require mem[_9082 + 32] == mem[_9082 + 50 len 14]
                                require mem[_9082 + 64] == mem[_9082 + 92 len 4]
                                if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if mem[_9082 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9082 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9082 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9082 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9082 + 18 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9082 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9082 + 50 len 14] / (1000 * mem[_9082 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9648 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9648
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9648
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9672 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9672] == bool(mem[_9672])
                                    _9688 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9688] = ('cd', 36).length
                                    mem[_9688 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9688 + (32 * ('cd', 36).length) + 32] = 0
                                    _9689 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9689] = ('cd', 68).length
                                    mem[_9689 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9689 + (32 * ('cd', 68).length) + 32] = 0
                                    if var175001 < 1:
                                        revert with 'NH{q', 17
                                    if var179002 >= var179001:
                                        _14352 = mem[64]
                                        mem[mem[64]] = 32
                                        _14376 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14376:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14352 + (32 * _14376) + -mem[64] + 64
                                    if var181001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var185002:
                                        revert with 'NH{q', 17
                                    if var189001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var189003) == mem[(32 * var189001) + _9689 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var189003) < mem[(32 * var189001) + _9689 + 44 len 20]:
                                        if not address(var189003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var189001) + _9689 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                else:
                                    if mem[_9082 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9082 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9082 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9082 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9082 + 50 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9082 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9082 + 18 len 14] / (1000 * mem[_9082 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9650 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9650
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9650
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9673] == bool(mem[_9673])
                                    _9690 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9690] = ('cd', 36).length
                                    mem[_9690 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9690 + (32 * ('cd', 36).length) + 32] = 0
                                    _9691 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9691] = ('cd', 68).length
                                    mem[_9691 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9691 + (32 * ('cd', 68).length) + 32] = 0
                                    if var175001 < 1:
                                        revert with 'NH{q', 17
                                    if var179002 >= var179001:
                                        _14353 = mem[64]
                                        mem[mem[64]] = 32
                                        _14377 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14377:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14353 + (32 * _14377) + -mem[64] + 64
                                    if var181001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var185002:
                                        revert with 'NH{q', 17
                                    if var189001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var189003) == mem[(32 * var189001) + _9691 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var189003) < mem[(32 * var189001) + _9691 + 44 len 20]:
                                        if not address(var189003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var189001) + _9691 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                            else:
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9083 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_9083] == mem[_9083 + 18 len 14]
                                require mem[_9083 + 32] == mem[_9083 + 50 len 14]
                                require mem[_9083 + 64] == mem[_9083 + 92 len 4]
                                if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_9050):
                                    if mem[_9083 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9083 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9083 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9083 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9083 + 18 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9083 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9083 + 50 len 14] / (1000 * mem[_9083 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9652 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9652
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9652
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9674 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9674] == bool(mem[_9674])
                                    _9692 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9692] = ('cd', 36).length
                                    mem[_9692 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9692 + (32 * ('cd', 36).length) + 32] = 0
                                    _9693 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9693] = ('cd', 68).length
                                    mem[_9693 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9693 + (32 * ('cd', 68).length) + 32] = 0
                                    if var175001 < 1:
                                        revert with 'NH{q', 17
                                    if var179002 >= var179001:
                                        _14354 = mem[64]
                                        mem[mem[64]] = 32
                                        _14378 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14378:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14354 + (32 * _14378) + -mem[64] + 64
                                    if var181001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var185002:
                                        revert with 'NH{q', 17
                                    if var189001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var189003) == mem[(32 * var189001) + _9693 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var189003) < mem[(32 * var189001) + _9693 + 44 len 20]:
                                        if not address(var189003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var189001) + _9693 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                else:
                                    if mem[_9083 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9083 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9083 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9083 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9083 + 50 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9083 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9083 + 18 len 14] / (1000 * mem[_9083 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9654 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9654
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9654
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9675 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9675] == bool(mem[_9675])
                                    _9694 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9694] = ('cd', 36).length
                                    mem[_9694 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9694 + (32 * ('cd', 36).length) + 32] = 0
                                    _9695 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9695] = ('cd', 68).length
                                    mem[_9695 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9695 + (32 * ('cd', 68).length) + 32] = 0
                                    if var175001 < 1:
                                        revert with 'NH{q', 17
                                    if var179002 >= var179001:
                                        _14355 = mem[64]
                                        mem[mem[64]] = 32
                                        _14379 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14379:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14355 + (32 * _14379) + -mem[64] + 64
                                    if var181001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var185002:
                                        revert with 'NH{q', 17
                                    if var189001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var189003) == mem[(32 * var189001) + _9695 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var189003) < mem[(32 * var189001) + _9695 + 44 len 20]:
                                        if not address(var189003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var189001) + _9695 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var189006:
                                            revert with 'NH{q', 17
                                        if var189006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var189006 >= ('cd', 68).length - 2:
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var189006:
                                                revert with 'NH{q', 17
                                            if var189006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var189006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
            else:
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 68).length - 1 < ('cd', 68).length:
                    if mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = 32
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 228] = 26
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 260] = 'INSUFFICIENT_OUTPUT_AMOUNT'
                        revert with memory
                          from (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                           len (127 * ('cd', 68).length) + 100
                    if 0 < ('cd', 68).length:
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if 0 < ('cd', 36).length:
                            require ('cd', 36)[0] == address(('cd', 36)[0])
                            if 0 < ('cd', 68).length:
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = address(('cd', 36)[0])
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 228] = cd[4]
                                call address(('cd', 68)[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196 len (127 * ('cd', 68).length) + 64]
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192] = ('cd', 36).length
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[64] = (3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256
                                mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] = ('cd', 68).length
                                mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[(98 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256] = 0
                                if var108001 < 1:
                                    revert with 'NH{q', 17
                                if var112002 >= var112001:
                                    mem[(3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256] = 32
                                    mem[(3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 288] = ('cd', 68).length
                                    mem[(3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 320 len 32 * ('cd', 68).length] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length]
                                    return memory
                                      from (3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256
                                       len (158 * ('cd', 68).length) + 64
                                if var114001 < ('cd', 68).length:
                                    if 1 > !var118002:
                                        revert with 'NH{q', 17
                                    idx = var120003 + 1
                                    s = var120006
                                    t = var120009
                                    while idx < ('cd', 68).length:
                                        if address(s) == mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if address(s) < mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            if not address(s):
                                                revert with 0, 'ZERO_ADDRESS'
                                            if 1 > !t:
                                                revert with 'NH{q', 17
                                            if t + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                                revert with 'NH{q', 50
                                            _13132 = mem[(32 * t + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 2:
                                                revert with 'NH{q', 17
                                            if address(s) == address(s):
                                                if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                                    if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                        revert with 'NH{q', 50
                                                    _13216 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                    _13257 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_13257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                    mem[_13257 + 36] = 0
                                                    mem[_13257 + 68] = _13132
                                                    mem[_13257 + 100] = this.address
                                                    mem[_13257 + 132] = 128
                                                    mem[_13257 + 164] = mem[_13257]
                                                    idx = 0
                                                    while idx < mem[_13257]:
                                                        mem[idx + _13257 + 196] = mem[idx + _13257 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[_13257]) <= mem[_13257]:
                                                        require ext_code.size(address(_13216))
                                                        call address(_13216).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args 0, _13132, address(this.address), 128, mem[_13257], mem[_13257 + 196 len ceil32(mem[_13257])]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if t == -1:
                                                            revert with 'NH{q', 17
                                                        if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                            revert with 'NH{q', 17
                                                        if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                                revert with 'NH{q', 50
                                                            if 1 > !(t + 1):
                                                                revert with 'NH{q', 17
                                                            idx = t + 2
                                                            s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                            t = t + 1
                                                            continue 
                                                        mem[_13257 + 32] = 32
                                                        _14602 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                        mem[_13257 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                        idx = 0
                                                        s = _13257 + 96
                                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                        while idx < _14602:
                                                            mem[s] = mem[t]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        return memory
                                                          from mem[64]
                                                           len _13257 + (32 * _14602) + -mem[64] + 96
                                                    mem[_13257 + mem[_13257] + 196] = 0
                                                    require ext_code.size(address(_13216))
                                                    call address(_13216).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _13132, address(this.address), 128, mem[_13257], mem[_13257 + 196 len ceil32(mem[_13257])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13257 + 32] = 32
                                                    _14649 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13257 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13257 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14649:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13257 + (32 * _14649) + -mem[64] + 96
                                                if 1 > !t:
                                                    revert with 'NH{q', 17
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13272 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13304 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                _13312 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_13312 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_13312 + 36] = 0
                                                mem[_13312 + 68] = _13132
                                                mem[_13312 + 100] = address(_13272)
                                                mem[_13312 + 132] = 128
                                                mem[_13312 + 164] = mem[_13312]
                                                idx = 0
                                                while idx < mem[_13312]:
                                                    mem[idx + _13312 + 196] = mem[idx + _13312 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_13312]) <= mem[_13312]:
                                                    require ext_code.size(address(_13304))
                                                    call address(_13304).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _13132, address(_13272), 128, mem[_13312], mem[_13312 + 196 len ceil32(mem[_13312])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13312 + 32] = 32
                                                    _14600 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13312 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13312 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14600:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13312 + (32 * _14600) + -mem[64] + 96
                                                mem[_13312 + mem[_13312] + 196] = 0
                                                require ext_code.size(address(_13304))
                                                call address(_13304).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _13132, address(_13272), 128, mem[_13312], mem[_13312 + 196 len ceil32(mem[_13312])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13312 + 32] = 32
                                                _14648 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13312 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13312 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14648:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13312 + (32 * _14648) + -mem[64] + 96
                                            if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                                if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13217 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                _13259 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_13259 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_13259 + 36] = _13132
                                                mem[_13259 + 68] = 0
                                                mem[_13259 + 100] = this.address
                                                mem[_13259 + 132] = 128
                                                mem[_13259 + 164] = mem[_13259]
                                                idx = 0
                                                while idx < mem[_13259]:
                                                    mem[idx + _13259 + 196] = mem[idx + _13259 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_13259]) <= mem[_13259]:
                                                    require ext_code.size(address(_13217))
                                                    call address(_13217).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args _13132, 0, address(this.address), 128, mem[_13259], mem[_13259 + 196 len ceil32(mem[_13259])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13259 + 32] = 32
                                                    _14606 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13259 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13259 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14606:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13259 + (32 * _14606) + -mem[64] + 96
                                                mem[_13259 + mem[_13259] + 196] = 0
                                                require ext_code.size(address(_13217))
                                                call address(_13217).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args _13132, 0, address(this.address), 128, mem[_13259], mem[_13259 + 196 len ceil32(mem[_13259])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13259 + 32] = 32
                                                _14651 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13259 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13259 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14651:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13259 + (32 * _14651) + -mem[64] + 96
                                            if 1 > !t:
                                                revert with 'NH{q', 17
                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13274 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13305 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            _13314 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_13314 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_13314 + 36] = _13132
                                            mem[_13314 + 68] = 0
                                            mem[_13314 + 100] = address(_13274)
                                            mem[_13314 + 132] = 128
                                            mem[_13314 + 164] = mem[_13314]
                                            idx = 0
                                            while idx < mem[_13314]:
                                                mem[idx + _13314 + 196] = mem[idx + _13314 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_13314]) <= mem[_13314]:
                                                require ext_code.size(address(_13305))
                                                call address(_13305).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args _13132, 0, address(_13274), 128, mem[_13314], mem[_13314 + 196 len ceil32(mem[_13314])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13314 + 32] = 32
                                                _14604 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13314 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13314 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14604:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13314 + (32 * _14604) + -mem[64] + 96
                                            mem[_13314 + mem[_13314] + 196] = 0
                                            require ext_code.size(address(_13305))
                                            call address(_13305).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _13132, 0, address(_13274), 128, mem[_13314], mem[_13314 + 196 len ceil32(mem[_13314])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13314 + 32] = 32
                                            _14650 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13314 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13314 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14650:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13314 + (32 * _14650) + -mem[64] + 96
                                        if not mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !t:
                                            revert with 'NH{q', 17
                                        if t + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        _13133 = mem[(32 * t + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                        if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 2:
                                            revert with 'NH{q', 17
                                        if address(s) == mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                                if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13218 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                _13261 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_13261 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_13261 + 36] = 0
                                                mem[_13261 + 68] = _13133
                                                mem[_13261 + 100] = this.address
                                                mem[_13261 + 132] = 128
                                                mem[_13261 + 164] = mem[_13261]
                                                idx = 0
                                                while idx < mem[_13261]:
                                                    mem[idx + _13261 + 196] = mem[idx + _13261 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_13261]) <= mem[_13261]:
                                                    require ext_code.size(address(_13218))
                                                    call address(_13218).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _13133, address(this.address), 128, mem[_13261], mem[_13261 + 196 len ceil32(mem[_13261])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13261 + 32] = 32
                                                    _14610 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13261 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13261 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14610:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13261 + (32 * _14610) + -mem[64] + 96
                                                mem[_13261 + mem[_13261] + 196] = 0
                                                require ext_code.size(address(_13218))
                                                call address(_13218).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _13133, address(this.address), 128, mem[_13261], mem[_13261 + 196 len ceil32(mem[_13261])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13261 + 32] = 32
                                                _14653 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13261 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13261 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14653:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13261 + (32 * _14653) + -mem[64] + 96
                                            if 1 > !t:
                                                revert with 'NH{q', 17
                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13276 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13306 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            _13316 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_13316 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_13316 + 36] = 0
                                            mem[_13316 + 68] = _13133
                                            mem[_13316 + 100] = address(_13276)
                                            mem[_13316 + 132] = 128
                                            mem[_13316 + 164] = mem[_13316]
                                            idx = 0
                                            while idx < mem[_13316]:
                                                mem[idx + _13316 + 196] = mem[idx + _13316 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_13316]) <= mem[_13316]:
                                                require ext_code.size(address(_13306))
                                                call address(_13306).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _13133, address(_13276), 128, mem[_13316], mem[_13316 + 196 len ceil32(mem[_13316])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13316 + 32] = 32
                                                _14608 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13316 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13316 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14608:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13316 + (32 * _14608) + -mem[64] + 96
                                            mem[_13316 + mem[_13316] + 196] = 0
                                            require ext_code.size(address(_13306))
                                            call address(_13306).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, _13133, address(_13276), 128, mem[_13316], mem[_13316 + 196 len ceil32(mem[_13316])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13316 + 32] = 32
                                            _14652 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13316 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13316 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14652:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13316 + (32 * _14652) + -mem[64] + 96
                                        if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                            if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13219 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            _13263 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_13263 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_13263 + 36] = _13133
                                            mem[_13263 + 68] = 0
                                            mem[_13263 + 100] = this.address
                                            mem[_13263 + 132] = 128
                                            mem[_13263 + 164] = mem[_13263]
                                            idx = 0
                                            while idx < mem[_13263]:
                                                mem[idx + _13263 + 196] = mem[idx + _13263 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_13263]) <= mem[_13263]:
                                                require ext_code.size(address(_13219))
                                                call address(_13219).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args _13133, 0, address(this.address), 128, mem[_13263], mem[_13263 + 196 len ceil32(mem[_13263])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13263 + 32] = 32
                                                _14614 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13263 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13263 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14614:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13263 + (32 * _14614) + -mem[64] + 96
                                            mem[_13263 + mem[_13263] + 196] = 0
                                            require ext_code.size(address(_13219))
                                            call address(_13219).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _13133, 0, address(this.address), 128, mem[_13263], mem[_13263 + 196 len ceil32(mem[_13263])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13263 + 32] = 32
                                            _14655 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13263 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13263 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14655:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13263 + (32 * _14655) + -mem[64] + 96
                                        if 1 > !t:
                                            revert with 'NH{q', 17
                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                            revert with 'NH{q', 50
                                        _13278 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                        if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                            revert with 'NH{q', 50
                                        _13307 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                        _13318 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_13318 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_13318 + 36] = _13133
                                        mem[_13318 + 68] = 0
                                        mem[_13318 + 100] = address(_13278)
                                        mem[_13318 + 132] = 128
                                        mem[_13318 + 164] = mem[_13318]
                                        idx = 0
                                        while idx < mem[_13318]:
                                            mem[idx + _13318 + 196] = mem[idx + _13318 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(mem[_13318]) <= mem[_13318]:
                                            require ext_code.size(address(_13307))
                                            call address(_13307).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _13133, 0, address(_13278), 128, mem[_13318], mem[_13318 + 196 len ceil32(mem[_13318])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13318 + 32] = 32
                                            _14612 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13318 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13318 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14612:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13318 + (32 * _14612) + -mem[64] + 96
                                        mem[_13318 + mem[_13318] + 196] = 0
                                        require ext_code.size(address(_13307))
                                        call address(_13307).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _13133, 0, address(_13278), 128, mem[_13318], mem[_13318 + 196 len ceil32(mem[_13318])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                            revert with 'NH{q', 17
                                        if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                revert with 'NH{q', 50
                                            if 1 > !(t + 1):
                                                revert with 'NH{q', 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                            t = t + 1
                                            continue 
                                        mem[_13318 + 32] = 32
                                        _14654 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[_13318 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = _13318 + 96
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14654:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _13318 + (32 * _14654) + -mem[64] + 96
    else:
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if 0 < ('cd', 68).length:
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = cd[4]
            if var92001 < 1:
                revert with 'NH{q', 17
            if var96002 < var96001:
                if var98001 < ('cd', 36).length:
                    if var100006 < ('cd', 68).length:
                        if 1 > !var104002:
                            revert with 'NH{q', 17
                        idx = var106003 + 1
                        s = var106006
                        t = var106007
                        u = var106011
                        while idx < ('cd', 68).length:
                            _9051 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                            if address(s) == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                if not address(s):
                                    revert with 0, 'ZERO_ADDRESS'
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9086 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_9086] == mem[_9086 + 18 len 14]
                                require mem[_9086 + 32] == mem[_9086 + 50 len 14]
                                require mem[_9086 + 64] == mem[_9086 + 92 len 4]
                                if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if mem[_9086 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9086 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9086 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9086 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9086 + 18 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9086 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9086 + 50 len 14] / (1000 * mem[_9086 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9656 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9656
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9656
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9676 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9676] == bool(mem[_9676])
                                    _9696 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9696] = ('cd', 36).length
                                    mem[_9696 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9696 + (32 * ('cd', 36).length) + 32] = 0
                                    _9697 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9697] = ('cd', 68).length
                                    mem[_9697 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9697 + (32 * ('cd', 68).length) + 32] = 0
                                    if var176001 < 1:
                                        revert with 'NH{q', 17
                                    if var180002 >= var180001:
                                        _14364 = mem[64]
                                        mem[mem[64]] = 32
                                        _14388 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14388:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14364 + (32 * _14388) + -mem[64] + 64
                                    if var182001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var186002:
                                        revert with 'NH{q', 17
                                    if var190001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var190003) == mem[(32 * var190001) + _9697 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var190003) < mem[(32 * var190001) + _9697 + 44 len 20]:
                                        if not address(var190003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var190001) + _9697 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                else:
                                    if mem[_9086 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9086 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9086 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9086 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9086 + 50 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9086 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9086 + 18 len 14] / (1000 * mem[_9086 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9658 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9658
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9658
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9677 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9677] == bool(mem[_9677])
                                    _9698 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9698] = ('cd', 36).length
                                    mem[_9698 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9698 + (32 * ('cd', 36).length) + 32] = 0
                                    _9699 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9699] = ('cd', 68).length
                                    mem[_9699 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9699 + (32 * ('cd', 68).length) + 32] = 0
                                    if var176001 < 1:
                                        revert with 'NH{q', 17
                                    if var180002 >= var180001:
                                        _14365 = mem[64]
                                        mem[mem[64]] = 32
                                        _14389 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14389:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14365 + (32 * _14389) + -mem[64] + 64
                                    if var182001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var186002:
                                        revert with 'NH{q', 17
                                    if var190001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var190003) == mem[(32 * var190001) + _9699 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var190003) < mem[(32 * var190001) + _9699 + 44 len 20]:
                                        if not address(var190003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var190001) + _9699 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                            else:
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                staticcall address(t).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9087 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_9087] == mem[_9087 + 18 len 14]
                                require mem[_9087 + 32] == mem[_9087 + 50 len 14]
                                require mem[_9087 + 64] == mem[_9087 + 92 len 4]
                                if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_9051):
                                    if mem[_9087 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9087 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9087 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9087 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9087 + 18 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9087 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9087 + 50 len 14] / (1000 * mem[_9087 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9660 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9660
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9660
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9678 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9678] == bool(mem[_9678])
                                    _9700 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9700] = ('cd', 36).length
                                    mem[_9700 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9700 + (32 * ('cd', 36).length) + 32] = 0
                                    _9701 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9701] = ('cd', 68).length
                                    mem[_9701 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9701 + (32 * ('cd', 68).length) + 32] = 0
                                    if var176001 < 1:
                                        revert with 'NH{q', 17
                                    if var180002 >= var180001:
                                        _14366 = mem[64]
                                        mem[mem[64]] = 32
                                        _14390 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14390:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14366 + (32 * _14390) + -mem[64] + 64
                                    if var182001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var186002:
                                        revert with 'NH{q', 17
                                    if var190001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var190003) == mem[(32 * var190001) + _9701 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var190003) < mem[(32 * var190001) + _9701 + 44 len 20]:
                                        if not address(var190003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var190001) + _9701 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                else:
                                    if mem[_9087 + 50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[_9087 + 18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] and mem[_9087 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                                        revert with 'NH{q', 17
                                    if mem[_9087 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                        revert with 'NH{q', 17
                                    if 1000 * mem[_9087 + 50 len 14] > !(997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 17
                                    if not (1000 * mem[_9087 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]):
                                        revert with 'NH{q', 18
                                    if 1 > !u:
                                        revert with 'NH{q', 17
                                    if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * mem[_9087 + 18 len 14] / (1000 * mem[_9087 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192])
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 36).length) + 128] < 1:
                                        revert with 'NH{q', 17
                                    if u + 1 < mem[(32 * ('cd', 36).length) + 128] - 1:
                                        if u + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if u + 1 >= mem[(32 * ('cd', 36).length) + 128]:
                                            revert with 'NH{q', 50
                                        if 1 > !(u + 1):
                                            revert with 'NH{q', 17
                                        idx = u + 2
                                        s = mem[(32 * u + 1) + (32 * ('cd', 36).length) + 160]
                                        t = mem[(32 * u + 1) + 128]
                                        u = u + 1
                                        continue 
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] < 1:
                                        revert with 'NH{q', 17
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                                        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                                    if 0 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 68)[0] == address(('cd', 68)[0])
                                    if 0 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require ('cd', 36)[0] == address(('cd', 36)[0])
                                    if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                        revert with 'NH{q', 50
                                    _9662 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                    mem[mem[64] + 4] = address(('cd', 36)[0])
                                    mem[mem[64] + 36] = _9662
                                    call address(('cd', 68)[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(('cd', 36)[0]), _9662
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9679 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9679] == bool(mem[_9679])
                                    _9702 = mem[64]
                                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                                    mem[_9702] = ('cd', 36).length
                                    mem[_9702 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[_9702 + (32 * ('cd', 36).length) + 32] = 0
                                    _9703 = mem[64]
                                    mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
                                    mem[_9703] = ('cd', 68).length
                                    mem[_9703 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[_9703 + (32 * ('cd', 68).length) + 32] = 0
                                    if var176001 < 1:
                                        revert with 'NH{q', 17
                                    if var180002 >= var180001:
                                        _14367 = mem[64]
                                        mem[mem[64]] = 32
                                        _14391 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = mem[64] + 64
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14391:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _14367 + (32 * _14391) + -mem[64] + 64
                                    if var182001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if 1 > !var186002:
                                        revert with 'NH{q', 17
                                    if var190001 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    if address(var190003) == mem[(32 * var190001) + _9703 + 44 len 20]:
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if address(var190003) < mem[(32 * var190001) + _9703 + 44 len 20]:
                                        if not address(var190003):
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                    else:
                                        if not mem[(32 * var190001) + _9703 + 44 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !var190006:
                                            revert with 'NH{q', 17
                                        if var190006 + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        if ('cd', 68).length < 2:
                                            revert with 'NH{q', 17
                                        if var190006 >= ('cd', 68).length - 2:
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
                                        else:
                                            if 1 > !var190006:
                                                revert with 'NH{q', 17
                                            if var190006 + 1 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            if var190006 >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            # nil
            else:
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 68).length - 1 < ('cd', 68).length:
                    if mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] < cd[4]:
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = 32
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 228] = 26
                        mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 260] = 'INSUFFICIENT_OUTPUT_AMOUNT'
                        revert with memory
                          from (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                           len (127 * ('cd', 68).length) + 100
                    if 0 < ('cd', 68).length:
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if 0 < ('cd', 36).length:
                            require ('cd', 36)[0] == address(('cd', 36)[0])
                            if 0 < ('cd', 68).length:
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = address(('cd', 36)[0])
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 228] = cd[4]
                                call address(('cd', 68)[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196 len (127 * ('cd', 68).length) + 64]
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192] = ('cd', 36).length
                                mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                mem[64] = (3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256
                                mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] = ('cd', 68).length
                                mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[(98 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256] = 0
                                if var109001 < 1:
                                    revert with 'NH{q', 17
                                if var113002 >= var113001:
                                    mem[(3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256] = 32
                                    mem[(3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 288] = ('cd', 68).length
                                    mem[(3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 320 len 32 * ('cd', 68).length] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length]
                                    return memory
                                      from (3 * 32 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256
                                       len (158 * ('cd', 68).length) + 64
                                if var115001 < ('cd', 68).length:
                                    if 1 > !var119002:
                                        revert with 'NH{q', 17
                                    idx = var121003 + 1
                                    s = var121006
                                    t = var121009
                                    while idx < ('cd', 68).length:
                                        if address(s) == mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if address(s) < mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            if not address(s):
                                                revert with 0, 'ZERO_ADDRESS'
                                            if 1 > !t:
                                                revert with 'NH{q', 17
                                            if t + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                                revert with 'NH{q', 50
                                            _13134 = mem[(32 * t + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 2:
                                                revert with 'NH{q', 17
                                            if address(s) == address(s):
                                                if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                                    if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                        revert with 'NH{q', 50
                                                    _13236 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                    _13265 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_13265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                    mem[_13265 + 36] = 0
                                                    mem[_13265 + 68] = _13134
                                                    mem[_13265 + 100] = this.address
                                                    mem[_13265 + 132] = 128
                                                    mem[_13265 + 164] = mem[_13265]
                                                    idx = 0
                                                    while idx < mem[_13265]:
                                                        mem[idx + _13265 + 196] = mem[idx + _13265 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[_13265]) <= mem[_13265]:
                                                        require ext_code.size(address(_13236))
                                                        call address(_13236).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args 0, _13134, address(this.address), 128, mem[_13265], mem[_13265 + 196 len ceil32(mem[_13265])]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if t == -1:
                                                            revert with 'NH{q', 17
                                                        if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                            revert with 'NH{q', 17
                                                        if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                                revert with 'NH{q', 50
                                                            if 1 > !(t + 1):
                                                                revert with 'NH{q', 17
                                                            idx = t + 2
                                                            s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                            t = t + 1
                                                            continue 
                                                        mem[_13265 + 32] = 32
                                                        _14626 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                        mem[_13265 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                        idx = 0
                                                        s = _13265 + 96
                                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                        while idx < _14626:
                                                            mem[s] = mem[t]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        return memory
                                                          from mem[64]
                                                           len _13265 + (32 * _14626) + -mem[64] + 96
                                                    mem[_13265 + mem[_13265] + 196] = 0
                                                    require ext_code.size(address(_13236))
                                                    call address(_13236).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _13134, address(this.address), 128, mem[_13265], mem[_13265 + 196 len ceil32(mem[_13265])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13265 + 32] = 32
                                                    _14657 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13265 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13265 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14657:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13265 + (32 * _14657) + -mem[64] + 96
                                                if 1 > !t:
                                                    revert with 'NH{q', 17
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13280 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13308 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                _13336 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_13336 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_13336 + 36] = 0
                                                mem[_13336 + 68] = _13134
                                                mem[_13336 + 100] = address(_13280)
                                                mem[_13336 + 132] = 128
                                                mem[_13336 + 164] = mem[_13336]
                                                idx = 0
                                                while idx < mem[_13336]:
                                                    mem[idx + _13336 + 196] = mem[idx + _13336 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_13336]) <= mem[_13336]:
                                                    require ext_code.size(address(_13308))
                                                    call address(_13308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _13134, address(_13280), 128, mem[_13336], mem[_13336 + 196 len ceil32(mem[_13336])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13336 + 32] = 32
                                                    _14624 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13336 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13336 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14624:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13336 + (32 * _14624) + -mem[64] + 96
                                                mem[_13336 + mem[_13336] + 196] = 0
                                                require ext_code.size(address(_13308))
                                                call address(_13308).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _13134, address(_13280), 128, mem[_13336], mem[_13336 + 196 len ceil32(mem[_13336])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13336 + 32] = 32
                                                _14656 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13336 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13336 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14656:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13336 + (32 * _14656) + -mem[64] + 96
                                            if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                                if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13237 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                _13267 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_13267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_13267 + 36] = _13134
                                                mem[_13267 + 68] = 0
                                                mem[_13267 + 100] = this.address
                                                mem[_13267 + 132] = 128
                                                mem[_13267 + 164] = mem[_13267]
                                                idx = 0
                                                while idx < mem[_13267]:
                                                    mem[idx + _13267 + 196] = mem[idx + _13267 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_13267]) <= mem[_13267]:
                                                    require ext_code.size(address(_13237))
                                                    call address(_13237).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args _13134, 0, address(this.address), 128, mem[_13267], mem[_13267 + 196 len ceil32(mem[_13267])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13267 + 32] = 32
                                                    _14630 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13267 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13267 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14630:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13267 + (32 * _14630) + -mem[64] + 96
                                                mem[_13267 + mem[_13267] + 196] = 0
                                                require ext_code.size(address(_13237))
                                                call address(_13237).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args _13134, 0, address(this.address), 128, mem[_13267], mem[_13267 + 196 len ceil32(mem[_13267])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13267 + 32] = 32
                                                _14659 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13267 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13267 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14659:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13267 + (32 * _14659) + -mem[64] + 96
                                            if 1 > !t:
                                                revert with 'NH{q', 17
                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13282 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13309 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            _13338 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_13338 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_13338 + 36] = _13134
                                            mem[_13338 + 68] = 0
                                            mem[_13338 + 100] = address(_13282)
                                            mem[_13338 + 132] = 128
                                            mem[_13338 + 164] = mem[_13338]
                                            idx = 0
                                            while idx < mem[_13338]:
                                                mem[idx + _13338 + 196] = mem[idx + _13338 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_13338]) <= mem[_13338]:
                                                require ext_code.size(address(_13309))
                                                call address(_13309).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args _13134, 0, address(_13282), 128, mem[_13338], mem[_13338 + 196 len ceil32(mem[_13338])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13338 + 32] = 32
                                                _14628 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13338 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13338 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14628:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13338 + (32 * _14628) + -mem[64] + 96
                                            mem[_13338 + mem[_13338] + 196] = 0
                                            require ext_code.size(address(_13309))
                                            call address(_13309).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _13134, 0, address(_13282), 128, mem[_13338], mem[_13338 + 196 len ceil32(mem[_13338])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13338 + 32] = 32
                                            _14658 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13338 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13338 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14658:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13338 + (32 * _14658) + -mem[64] + 96
                                        if not mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            revert with 0, 'ZERO_ADDRESS'
                                        if 1 > !t:
                                            revert with 'NH{q', 17
                                        if t + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]:
                                            revert with 'NH{q', 50
                                        _13135 = mem[(32 * t + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                                        if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 2:
                                            revert with 'NH{q', 17
                                        if address(s) == mem[(32 * idx) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 268 len 20]:
                                            if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                                if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                    revert with 'NH{q', 50
                                                _13238 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                                _13269 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_13269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_13269 + 36] = 0
                                                mem[_13269 + 68] = _13135
                                                mem[_13269 + 100] = this.address
                                                mem[_13269 + 132] = 128
                                                mem[_13269 + 164] = mem[_13269]
                                                idx = 0
                                                while idx < mem[_13269]:
                                                    mem[idx + _13269 + 196] = mem[idx + _13269 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_13269]) <= mem[_13269]:
                                                    require ext_code.size(address(_13238))
                                                    call address(_13238).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, _13135, address(this.address), 128, mem[_13269], mem[_13269 + 196 len ceil32(mem[_13269])]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if t == -1:
                                                        revert with 'NH{q', 17
                                                    if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                        revert with 'NH{q', 17
                                                    if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                            revert with 'NH{q', 50
                                                        if 1 > !(t + 1):
                                                            revert with 'NH{q', 17
                                                        idx = t + 2
                                                        s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                        t = t + 1
                                                        continue 
                                                    mem[_13269 + 32] = 32
                                                    _14634 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    mem[_13269 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                    idx = 0
                                                    s = _13269 + 96
                                                    t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                    while idx < _14634:
                                                        mem[s] = mem[t]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len _13269 + (32 * _14634) + -mem[64] + 96
                                                mem[_13269 + mem[_13269] + 196] = 0
                                                require ext_code.size(address(_13238))
                                                call address(_13238).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _13135, address(this.address), 128, mem[_13269], mem[_13269 + 196 len ceil32(mem[_13269])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13269 + 32] = 32
                                                _14661 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13269 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13269 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14661:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13269 + (32 * _14661) + -mem[64] + 96
                                            if 1 > !t:
                                                revert with 'NH{q', 17
                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13284 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13310 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            _13340 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_13340 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_13340 + 36] = 0
                                            mem[_13340 + 68] = _13135
                                            mem[_13340 + 100] = address(_13284)
                                            mem[_13340 + 132] = 128
                                            mem[_13340 + 164] = mem[_13340]
                                            idx = 0
                                            while idx < mem[_13340]:
                                                mem[idx + _13340 + 196] = mem[idx + _13340 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_13340]) <= mem[_13340]:
                                                require ext_code.size(address(_13310))
                                                call address(_13310).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, _13135, address(_13284), 128, mem[_13340], mem[_13340 + 196 len ceil32(mem[_13340])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13340 + 32] = 32
                                                _14632 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13340 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13340 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14632:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13340 + (32 * _14632) + -mem[64] + 96
                                            mem[_13340 + mem[_13340] + 196] = 0
                                            require ext_code.size(address(_13310))
                                            call address(_13310).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, _13135, address(_13284), 128, mem[_13340], mem[_13340 + 196 len ceil32(mem[_13340])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13340 + 32] = 32
                                            _14660 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13340 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13340 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14660:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13340 + (32 * _14660) + -mem[64] + 96
                                        if t >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 2:
                                            if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                                revert with 'NH{q', 50
                                            _13239 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                            _13271 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_13271 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_13271 + 36] = _13135
                                            mem[_13271 + 68] = 0
                                            mem[_13271 + 100] = this.address
                                            mem[_13271 + 132] = 128
                                            mem[_13271 + 164] = mem[_13271]
                                            idx = 0
                                            while idx < mem[_13271]:
                                                mem[idx + _13271 + 196] = mem[idx + _13271 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_13271]) <= mem[_13271]:
                                                require ext_code.size(address(_13239))
                                                call address(_13239).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args _13135, 0, address(this.address), 128, mem[_13271], mem[_13271 + 196 len ceil32(mem[_13271])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if t == -1:
                                                    revert with 'NH{q', 17
                                                if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                    revert with 'NH{q', 17
                                                if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                    if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(t + 1):
                                                        revert with 'NH{q', 17
                                                    idx = t + 2
                                                    s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                    t = t + 1
                                                    continue 
                                                mem[_13271 + 32] = 32
                                                _14638 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                mem[_13271 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                                idx = 0
                                                s = _13271 + 96
                                                t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                                while idx < _14638:
                                                    mem[s] = mem[t]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _13271 + (32 * _14638) + -mem[64] + 96
                                            mem[_13271 + mem[_13271] + 196] = 0
                                            require ext_code.size(address(_13239))
                                            call address(_13239).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _13135, 0, address(this.address), 128, mem[_13271], mem[_13271 + 196 len ceil32(mem[_13271])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13271 + 32] = 32
                                            _14663 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13271 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13271 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14663:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13271 + (32 * _14663) + -mem[64] + 96
                                        if 1 > !t:
                                            revert with 'NH{q', 17
                                        if t + 1 >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                            revert with 'NH{q', 50
                                        _13286 = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                        if t >= mem[(64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192]:
                                            revert with 'NH{q', 50
                                        _13311 = mem[(32 * t) + (64 * ('cd', 68).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224]
                                        _13342 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_13342 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_13342 + 36] = _13135
                                        mem[_13342 + 68] = 0
                                        mem[_13342 + 100] = address(_13286)
                                        mem[_13342 + 132] = 128
                                        mem[_13342 + 164] = mem[_13342]
                                        idx = 0
                                        while idx < mem[_13342]:
                                            mem[idx + _13342 + 196] = mem[idx + _13342 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(mem[_13342]) <= mem[_13342]:
                                            require ext_code.size(address(_13311))
                                            call address(_13311).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _13135, 0, address(_13286), 128, mem[_13342], mem[_13342 + 196 len ceil32(mem[_13342])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                                revert with 'NH{q', 17
                                            if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                                if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                    revert with 'NH{q', 50
                                                if 1 > !(t + 1):
                                                    revert with 'NH{q', 17
                                                idx = t + 2
                                                s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                                t = t + 1
                                                continue 
                                            mem[_13342 + 32] = 32
                                            _14636 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            mem[_13342 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                            idx = 0
                                            s = _13342 + 96
                                            t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                            while idx < _14636:
                                                mem[s] = mem[t]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _13342 + (32 * _14636) + -mem[64] + 96
                                        mem[_13342 + mem[_13342] + 196] = 0
                                        require ext_code.size(address(_13311))
                                        call address(_13311).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _13135, 0, address(_13286), 128, mem[_13342], mem[_13342 + 196 len ceil32(mem[_13342])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        if mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] < 1:
                                            revert with 'NH{q', 17
                                        if t + 1 < mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224] - 1:
                                            if t + 1 >= mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 224]:
                                                revert with 'NH{q', 50
                                            if 1 > !(t + 1):
                                                revert with 'NH{q', 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + ceil32(return_data.size) + 256]
                                            t = t + 1
                                            continue 
                                        mem[_13342 + 32] = 32
                                        _14662 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        mem[_13342 + 64] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                                        idx = 0
                                        s = _13342 + 96
                                        t = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
                                        while idx < _14662:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _13342 + (32 * _14662) + -mem[64] + 96
    revert with 'NH{q', 50
}



}
