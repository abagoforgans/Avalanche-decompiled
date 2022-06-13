contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
array of struct stor5;
array of struct stor6;

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[stor0] = 0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor1[address(msg.sender)]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_4cfd87ae(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 2:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length != ('cd', 68).length - 1:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _67 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _72 = mem[(32 * idx + 1) + floor32(('cd', 36).length) + 129]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_69)
        mem[mem[64] + 68] = address(_72)
        require ext_code.size(address(_67))
        staticcall address(_67).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_69), address(_72)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_75]
        continue 
    return (cd[4] + (_76 * ('cd', 36).length))
}

function sub_9fd6fce4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = stor6.length
    if not stor6.length:
        mem[64] = (32 * stor6.length) + (32 * stor5.length) + 160
        mem[(32 * stor6.length) + 128] = stor5.length
        if not stor5.length:
            if stor5.length < 2:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor6.length != stor5.length - 1:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            idx = 0
            s = msg.value
            while idx < stor6.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _147 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _149 = mem[(32 * idx) + (32 * stor6.length) + 160]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _152 = mem[(32 * idx + 1) + (32 * stor6.length) + 160]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_149)
                mem[mem[64] + 68] = address(_152)
                require ext_code.size(address(_147))
                staticcall address(_147).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_149), address(_152)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_165] == mem[_165]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_165]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_154] == mem[_154]
            if msg.value + (_167 * stor6.length) <= mem[_154]:
                call stor2 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _168 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_167 * stor6.length)
                    _172 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_172 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _179 = mem[_172]
                    mem[_168 + 100 len ceil32(mem[_172])] = mem[_172 + 32 len ceil32(mem[_172])]
                    if ceil32(_179) <= _179:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _168 + _179 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_294 + 32] == bool(mem[_294 + 32])
                                if not mem[_294 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_168 + _179 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _168 + _179 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_298 + 32] == bool(mem[_298 + 32])
                                if not mem[_298 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    _166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_166] = return_data.size
                    mem[_166 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _169 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_167 * stor6.length)
                    _175 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_175 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _180 = mem[_175]
                    mem[_169 + 100 len ceil32(mem[_175])] = mem[_175 + 32 len ceil32(mem[_175])]
                    if ceil32(_180) <= _180:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _169 + _180 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_296 + 32] == bool(mem[_296 + 32])
                                if not mem[_296 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_169 + _180 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _169 + _180 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _299 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_299 + 32] == bool(mem[_299 + 32])
                                if not mem[_299 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= stor6.length:
                    revert with 'NH{q', 50
                if 0 >= stor5.length:
                    revert with 'NH{q', 50
                if 1 >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                mem[mem[64] + 4] = address(stor5.field_0)
                mem[mem[64] + 36] = address(stor5.field_256)
                require ext_code.size(address(stor6.field_0))
                staticcall address(stor6.field_0).0xe98a5b85 with:
                        gas gas_remaining wei
                       args address(stor5.field_0), address(stor5.field_256)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_171] == mem[_171 + 12 len 20]
                mem[mem[64] + 4] = mem[_171 + 12 len 20]
                mem[mem[64] + 36] = msg.value
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.value
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_225] == bool(mem[_225])
                if not mem[_225]:
                    revert with 'NH{q', 1
                _243 = mem[64]
                mem[64] = mem[64] + (32 * stor6.length) + 32
                mem[_243] = stor6.length
                if not stor6.length:
                    _244 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_244] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_243]:
                                revert with 'NH{q', 50
                            _284 = mem[(32 * idx) + _243 + 32]
                            if idx >= mem[_244]:
                                revert with 'NH{q', 50
                            _288 = mem[(32 * idx) + _244 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_244]:
                                revert with 'NH{q', 50
                            _327 = mem[(32 * idx + 1) + _244 + 32]
                            if mem[_243] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_243] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_288)
                                mem[mem[64] + 36] = address(_327)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_284))
                                call address(_284).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_288), address(_327), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_243]:
                                    revert with 'NH{q', 50
                                _383 = mem[(32 * idx + 1) + _243 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_244]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_244]:
                                    revert with 'NH{q', 50
                                _414 = mem[(32 * idx + 2) + _244 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _244 + 44 len 20]
                                mem[mem[64] + 36] = address(_414)
                                require ext_code.size(address(_383))
                                staticcall address(_383).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _433 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _448 = mem[_433]
                                require mem[_433] == mem[_433 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_288)
                                mem[mem[64] + 36] = address(_327)
                                mem[mem[64] + 68] = address(_448)
                                require ext_code.size(address(_284))
                                call address(_284).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_288), address(_327), address(_448)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_244 + 32] = address(stor5.field_0)
                        idx = _244 + 32
                        s = 0
                        while _244 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _959 = mem[_243]
                        idx = 0
                        while idx < _959:
                            if idx >= mem[_243]:
                                revert with 'NH{q', 50
                            _972 = mem[(32 * idx) + _243 + 32]
                            if idx >= mem[_244]:
                                revert with 'NH{q', 50
                            _981 = mem[(32 * idx) + _244 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_244]:
                                revert with 'NH{q', 50
                            _1055 = mem[(32 * idx + 1) + _244 + 32]
                            if mem[_243] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_243] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_981)
                                mem[mem[64] + 36] = address(_1055)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_972))
                                call address(_972).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_981), address(_1055), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_243]:
                                    revert with 'NH{q', 50
                                _1133 = mem[(32 * idx + 1) + _243 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_244]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_244]:
                                    revert with 'NH{q', 50
                                _1178 = mem[(32 * idx + 2) + _244 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _244 + 44 len 20]
                                mem[mem[64] + 36] = address(_1178)
                                require ext_code.size(address(_1133))
                                staticcall address(_1133).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1178)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1198 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1209 = mem[_1198]
                                require mem[_1198] == mem[_1198 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_981)
                                mem[mem[64] + 36] = address(_1055)
                                mem[mem[64] + 68] = address(_1209)
                                require ext_code.size(address(_972))
                                call address(_972).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_981), address(_1055), address(_1209)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _959 = mem[_243]
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = 6
                    mem[_243 + 32] = address(stor6.field_0)
                    idx = _243 + 32
                    s = 0
                    while _243 + (32 * stor6.length) > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _647 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_647] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_243]:
                                revert with 'NH{q', 50
                            _974 = mem[(32 * idx) + _243 + 32]
                            if idx >= mem[_647]:
                                revert with 'NH{q', 50
                            _982 = mem[(32 * idx) + _647 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_647]:
                                revert with 'NH{q', 50
                            _1057 = mem[(32 * idx + 1) + _647 + 32]
                            if mem[_243] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_243] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_982)
                                mem[mem[64] + 36] = address(_1057)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_974))
                                call address(_974).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_982), address(_1057), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_243]:
                                    revert with 'NH{q', 50
                                _1134 = mem[(32 * idx + 1) + _243 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_647]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_647]:
                                    revert with 'NH{q', 50
                                _1180 = mem[(32 * idx + 2) + _647 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _647 + 44 len 20]
                                mem[mem[64] + 36] = address(_1180)
                                require ext_code.size(address(_1134))
                                staticcall address(_1134).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1180)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1199 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1210 = mem[_1199]
                                require mem[_1199] == mem[_1199 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_982)
                                mem[mem[64] + 36] = address(_1057)
                                mem[mem[64] + 68] = address(_1210)
                                require ext_code.size(address(_974))
                                call address(_974).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_982), address(_1057), address(_1210)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_647 + 32] = address(stor5.field_0)
                        idx = _647 + 32
                        s = 0
                        while _647 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1566 = mem[_243]
                        idx = 0
                        while idx < _1566:
                            if idx >= mem[_243]:
                                revert with 'NH{q', 50
                            _1580 = mem[(32 * idx) + _243 + 32]
                            if idx >= mem[_647]:
                                revert with 'NH{q', 50
                            _1592 = mem[(32 * idx) + _647 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_647]:
                                revert with 'NH{q', 50
                            _1636 = mem[(32 * idx + 1) + _647 + 32]
                            if mem[_243] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_243] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1592)
                                mem[mem[64] + 36] = address(_1636)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1580))
                                call address(_1580).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1592), address(_1636), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_243]:
                                    revert with 'NH{q', 50
                                _1684 = mem[(32 * idx + 1) + _243 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_647]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_647]:
                                    revert with 'NH{q', 50
                                _1722 = mem[(32 * idx + 2) + _647 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _647 + 44 len 20]
                                mem[mem[64] + 36] = address(_1722)
                                require ext_code.size(address(_1684))
                                staticcall address(_1684).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1722)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1746 = mem[_1740]
                                require mem[_1740] == mem[_1740 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1592)
                                mem[mem[64] + 36] = address(_1636)
                                mem[mem[64] + 68] = address(_1746)
                                require ext_code.size(address(_1580))
                                call address(_1580).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1592), address(_1636), address(_1746)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1566 = mem[_243]
                            idx = idx + 1
                            continue 
        else:
            mem[0] = 5
            mem[(32 * stor6.length) + 160] = address(stor5.field_0)
            idx = (32 * stor6.length) + 160
            s = 0
            while (32 * stor6.length) + (32 * stor5.length) + 128 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor5.length < 2:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor6.length != stor5.length - 1:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            idx = 0
            s = msg.value
            while idx < stor6.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _655 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _662 = mem[(32 * idx) + (32 * stor6.length) + 160]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _675 = mem[(32 * idx + 1) + (32 * stor6.length) + 160]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_662)
                mem[mem[64] + 68] = address(_675)
                require ext_code.size(address(_655))
                staticcall address(_655).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_662), address(_675)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_712] == mem[_712]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_712]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _680 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_680] == mem[_680]
            if msg.value + (_717 * stor6.length) <= mem[_680]:
                call stor2 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _719 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_717 * stor6.length)
                    _739 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_739 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _753 = mem[_739]
                    mem[_719 + 100 len ceil32(mem[_739])] = mem[_739 + 32 len ceil32(mem[_739])]
                    if ceil32(_753) <= _753:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _719 + _753 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_990 + 32] == bool(mem[_990 + 32])
                                if not mem[_990 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_719 + _753 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _719 + _753 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _998 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_998 + 32] == bool(mem[_998 + 32])
                                if not mem[_998 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    _715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_715] = return_data.size
                    mem[_715 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _720 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_717 * stor6.length)
                    _742 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_742 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _754 = mem[_742]
                    mem[_720 + 100 len ceil32(mem[_742])] = mem[_742 + 32 len ceil32(mem[_742])]
                    if ceil32(_754) <= _754:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _720 + _754 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_992 + 32] == bool(mem[_992 + 32])
                                if not mem[_992 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_720 + _754 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _720 + _754 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _999 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_999 + 32] == bool(mem[_999 + 32])
                                if not mem[_999 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= stor6.length:
                    revert with 'NH{q', 50
                if 0 >= stor5.length:
                    revert with 'NH{q', 50
                if 1 >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                mem[mem[64] + 4] = address(stor5.field_0)
                mem[mem[64] + 36] = address(stor5.field_256)
                require ext_code.size(address(stor6.field_0))
                staticcall address(stor6.field_0).0xe98a5b85 with:
                        gas gas_remaining wei
                       args address(stor5.field_0), address(stor5.field_256)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_732] == mem[_732 + 12 len 20]
                mem[mem[64] + 4] = mem[_732 + 12 len 20]
                mem[mem[64] + 36] = msg.value
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.value
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _851 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_851] == bool(mem[_851])
                if not mem[_851]:
                    revert with 'NH{q', 1
                _889 = mem[64]
                mem[64] = mem[64] + (32 * stor6.length) + 32
                mem[_889] = stor6.length
                if not stor6.length:
                    _891 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_891] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_889]:
                                revert with 'NH{q', 50
                            _976 = mem[(32 * idx) + _889 + 32]
                            if idx >= mem[_891]:
                                revert with 'NH{q', 50
                            _983 = mem[(32 * idx) + _891 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_891]:
                                revert with 'NH{q', 50
                            _1059 = mem[(32 * idx + 1) + _891 + 32]
                            if mem[_889] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_889] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_983)
                                mem[mem[64] + 36] = address(_1059)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_976))
                                call address(_976).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_983), address(_1059), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_889]:
                                    revert with 'NH{q', 50
                                _1135 = mem[(32 * idx + 1) + _889 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_891]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_891]:
                                    revert with 'NH{q', 50
                                _1182 = mem[(32 * idx + 2) + _891 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _891 + 44 len 20]
                                mem[mem[64] + 36] = address(_1182)
                                require ext_code.size(address(_1135))
                                staticcall address(_1135).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1182)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1200 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1211 = mem[_1200]
                                require mem[_1200] == mem[_1200 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_983)
                                mem[mem[64] + 36] = address(_1059)
                                mem[mem[64] + 68] = address(_1211)
                                require ext_code.size(address(_976))
                                call address(_976).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_983), address(_1059), address(_1211)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_891 + 32] = address(stor5.field_0)
                        idx = _891 + 32
                        s = 0
                        while _891 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1567 = mem[_889]
                        idx = 0
                        while idx < _1567:
                            if idx >= mem[_889]:
                                revert with 'NH{q', 50
                            _1582 = mem[(32 * idx) + _889 + 32]
                            if idx >= mem[_891]:
                                revert with 'NH{q', 50
                            _1593 = mem[(32 * idx) + _891 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_891]:
                                revert with 'NH{q', 50
                            _1638 = mem[(32 * idx + 1) + _891 + 32]
                            if mem[_889] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_889] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1593)
                                mem[mem[64] + 36] = address(_1638)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1582))
                                call address(_1582).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1593), address(_1638), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_889]:
                                    revert with 'NH{q', 50
                                _1685 = mem[(32 * idx + 1) + _889 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_891]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_891]:
                                    revert with 'NH{q', 50
                                _1724 = mem[(32 * idx + 2) + _891 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _891 + 44 len 20]
                                mem[mem[64] + 36] = address(_1724)
                                require ext_code.size(address(_1685))
                                staticcall address(_1685).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1724)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1741 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1747 = mem[_1741]
                                require mem[_1741] == mem[_1741 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1593)
                                mem[mem[64] + 36] = address(_1638)
                                mem[mem[64] + 68] = address(_1747)
                                require ext_code.size(address(_1582))
                                call address(_1582).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1593), address(_1638), address(_1747)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1567 = mem[_889]
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = 6
                    mem[_889 + 32] = address(stor6.field_0)
                    idx = _889 + 32
                    s = 0
                    while _889 + (32 * stor6.length) > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _1319 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_1319] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_889]:
                                revert with 'NH{q', 50
                            _1584 = mem[(32 * idx) + _889 + 32]
                            if idx >= mem[_1319]:
                                revert with 'NH{q', 50
                            _1594 = mem[(32 * idx) + _1319 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1319]:
                                revert with 'NH{q', 50
                            _1640 = mem[(32 * idx + 1) + _1319 + 32]
                            if mem[_889] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_889] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1594)
                                mem[mem[64] + 36] = address(_1640)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1584))
                                call address(_1584).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1594), address(_1640), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_889]:
                                    revert with 'NH{q', 50
                                _1686 = mem[(32 * idx + 1) + _889 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1319]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1319]:
                                    revert with 'NH{q', 50
                                _1726 = mem[(32 * idx + 2) + _1319 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1319 + 44 len 20]
                                mem[mem[64] + 36] = address(_1726)
                                require ext_code.size(address(_1686))
                                staticcall address(_1686).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1726)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1748 = mem[_1742]
                                require mem[_1742] == mem[_1742 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1594)
                                mem[mem[64] + 36] = address(_1640)
                                mem[mem[64] + 68] = address(_1748)
                                require ext_code.size(address(_1584))
                                call address(_1584).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1594), address(_1640), address(_1748)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_1319 + 32] = address(stor5.field_0)
                        idx = _1319 + 32
                        s = 0
                        while _1319 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1854 = mem[_889]
                        idx = 0
                        while idx < _1854:
                            if idx >= mem[_889]:
                                revert with 'NH{q', 50
                            _1862 = mem[(32 * idx) + _889 + 32]
                            if idx >= mem[_1319]:
                                revert with 'NH{q', 50
                            _1870 = mem[(32 * idx) + _1319 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1319]:
                                revert with 'NH{q', 50
                            _1878 = mem[(32 * idx + 1) + _1319 + 32]
                            if mem[_889] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_889] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1870)
                                mem[mem[64] + 36] = address(_1878)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1862))
                                call address(_1862).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1870), address(_1878), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_889]:
                                    revert with 'NH{q', 50
                                _1894 = mem[(32 * idx + 1) + _889 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1319]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1319]:
                                    revert with 'NH{q', 50
                                _1914 = mem[(32 * idx + 2) + _1319 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1319 + 44 len 20]
                                mem[mem[64] + 36] = address(_1914)
                                require ext_code.size(address(_1894))
                                staticcall address(_1894).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1914)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1926 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1930 = mem[_1926]
                                require mem[_1926] == mem[_1926 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1870)
                                mem[mem[64] + 36] = address(_1878)
                                mem[mem[64] + 68] = address(_1930)
                                require ext_code.size(address(_1862))
                                call address(_1862).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1870), address(_1878), address(_1930)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1854 = mem[_889]
                            idx = idx + 1
                            continue 
    else:
        mem[0] = 6
        mem[128] = address(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor6.length) + (32 * stor5.length) + 160
        mem[(32 * stor6.length) + 128] = stor5.length
        if not stor5.length:
            if stor5.length < 2:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor6.length != stor5.length - 1:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            idx = 0
            s = msg.value
            while idx < stor6.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _658 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _663 = mem[(32 * idx) + (32 * stor6.length) + 160]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _677 = mem[(32 * idx + 1) + (32 * stor6.length) + 160]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_663)
                mem[mem[64] + 68] = address(_677)
                require ext_code.size(address(_658))
                staticcall address(_658).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_663), address(_677)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _714 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_714] == mem[_714]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_714]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _681 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_681] == mem[_681]
            if msg.value + (_718 * stor6.length) <= mem[_681]:
                call stor2 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _721 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_718 * stor6.length)
                    _746 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_746 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _755 = mem[_746]
                    mem[_721 + 100 len ceil32(mem[_746])] = mem[_746 + 32 len ceil32(mem[_746])]
                    if ceil32(_755) <= _755:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _721 + _755 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _994 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_994 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_994 + 32] == bool(mem[_994 + 32])
                                if not mem[_994 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_721 + _755 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _721 + _755 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _1000 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1000 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1000 + 32] == bool(mem[_1000 + 32])
                                if not mem[_1000 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    _716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_716] = return_data.size
                    mem[_716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _722 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_718 * stor6.length)
                    _749 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_749 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _756 = mem[_749]
                    mem[_722 + 100 len ceil32(mem[_749])] = mem[_749 + 32 len ceil32(mem[_749])]
                    if ceil32(_756) <= _756:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _722 + _756 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _996 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_996 + 32] == bool(mem[_996 + 32])
                                if not mem[_996 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_722 + _756 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _722 + _756 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _1001 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1001 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1001 + 32] == bool(mem[_1001 + 32])
                                if not mem[_1001 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= stor6.length:
                    revert with 'NH{q', 50
                if 0 >= stor5.length:
                    revert with 'NH{q', 50
                if 1 >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                mem[mem[64] + 4] = address(stor5.field_0)
                mem[mem[64] + 36] = address(stor5.field_256)
                require ext_code.size(address(stor6.field_0))
                staticcall address(stor6.field_0).0xe98a5b85 with:
                        gas gas_remaining wei
                       args address(stor5.field_0), address(stor5.field_256)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_733] == mem[_733 + 12 len 20]
                mem[mem[64] + 4] = mem[_733 + 12 len 20]
                mem[mem[64] + 36] = msg.value
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.value
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _852 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_852] == bool(mem[_852])
                if not mem[_852]:
                    revert with 'NH{q', 1
                _890 = mem[64]
                mem[64] = mem[64] + (32 * stor6.length) + 32
                mem[_890] = stor6.length
                if not stor6.length:
                    _893 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_893] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_890]:
                                revert with 'NH{q', 50
                            _978 = mem[(32 * idx) + _890 + 32]
                            if idx >= mem[_893]:
                                revert with 'NH{q', 50
                            _984 = mem[(32 * idx) + _893 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_893]:
                                revert with 'NH{q', 50
                            _1061 = mem[(32 * idx + 1) + _893 + 32]
                            if mem[_890] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_890] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_984)
                                mem[mem[64] + 36] = address(_1061)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_978))
                                call address(_978).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_984), address(_1061), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_890]:
                                    revert with 'NH{q', 50
                                _1136 = mem[(32 * idx + 1) + _890 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_893]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_893]:
                                    revert with 'NH{q', 50
                                _1184 = mem[(32 * idx + 2) + _893 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _893 + 44 len 20]
                                mem[mem[64] + 36] = address(_1184)
                                require ext_code.size(address(_1136))
                                staticcall address(_1136).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1184)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1201 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1212 = mem[_1201]
                                require mem[_1201] == mem[_1201 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_984)
                                mem[mem[64] + 36] = address(_1061)
                                mem[mem[64] + 68] = address(_1212)
                                require ext_code.size(address(_978))
                                call address(_978).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_984), address(_1061), address(_1212)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_893 + 32] = address(stor5.field_0)
                        idx = _893 + 32
                        s = 0
                        while _893 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1569 = mem[_890]
                        idx = 0
                        while idx < _1569:
                            if idx >= mem[_890]:
                                revert with 'NH{q', 50
                            _1586 = mem[(32 * idx) + _890 + 32]
                            if idx >= mem[_893]:
                                revert with 'NH{q', 50
                            _1595 = mem[(32 * idx) + _893 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_893]:
                                revert with 'NH{q', 50
                            _1642 = mem[(32 * idx + 1) + _893 + 32]
                            if mem[_890] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_890] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1595)
                                mem[mem[64] + 36] = address(_1642)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1586))
                                call address(_1586).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1595), address(_1642), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_890]:
                                    revert with 'NH{q', 50
                                _1687 = mem[(32 * idx + 1) + _890 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_893]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_893]:
                                    revert with 'NH{q', 50
                                _1728 = mem[(32 * idx + 2) + _893 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _893 + 44 len 20]
                                mem[mem[64] + 36] = address(_1728)
                                require ext_code.size(address(_1687))
                                staticcall address(_1687).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1728)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1743 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1749 = mem[_1743]
                                require mem[_1743] == mem[_1743 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1595)
                                mem[mem[64] + 36] = address(_1642)
                                mem[mem[64] + 68] = address(_1749)
                                require ext_code.size(address(_1586))
                                call address(_1586).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1595), address(_1642), address(_1749)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1569 = mem[_890]
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = 6
                    mem[_890 + 32] = address(stor6.field_0)
                    idx = _890 + 32
                    s = 0
                    while _890 + (32 * stor6.length) > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _1320 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_1320] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_890]:
                                revert with 'NH{q', 50
                            _1588 = mem[(32 * idx) + _890 + 32]
                            if idx >= mem[_1320]:
                                revert with 'NH{q', 50
                            _1596 = mem[(32 * idx) + _1320 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1320]:
                                revert with 'NH{q', 50
                            _1644 = mem[(32 * idx + 1) + _1320 + 32]
                            if mem[_890] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_890] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1596)
                                mem[mem[64] + 36] = address(_1644)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1588))
                                call address(_1588).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1596), address(_1644), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_890]:
                                    revert with 'NH{q', 50
                                _1688 = mem[(32 * idx + 1) + _890 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1320]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1320]:
                                    revert with 'NH{q', 50
                                _1730 = mem[(32 * idx + 2) + _1320 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1320 + 44 len 20]
                                mem[mem[64] + 36] = address(_1730)
                                require ext_code.size(address(_1688))
                                staticcall address(_1688).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1730)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1750 = mem[_1744]
                                require mem[_1744] == mem[_1744 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1596)
                                mem[mem[64] + 36] = address(_1644)
                                mem[mem[64] + 68] = address(_1750)
                                require ext_code.size(address(_1588))
                                call address(_1588).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1596), address(_1644), address(_1750)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_1320 + 32] = address(stor5.field_0)
                        idx = _1320 + 32
                        s = 0
                        while _1320 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1855 = mem[_890]
                        idx = 0
                        while idx < _1855:
                            if idx >= mem[_890]:
                                revert with 'NH{q', 50
                            _1864 = mem[(32 * idx) + _890 + 32]
                            if idx >= mem[_1320]:
                                revert with 'NH{q', 50
                            _1871 = mem[(32 * idx) + _1320 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1320]:
                                revert with 'NH{q', 50
                            _1880 = mem[(32 * idx + 1) + _1320 + 32]
                            if mem[_890] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_890] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1871)
                                mem[mem[64] + 36] = address(_1880)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1864))
                                call address(_1864).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1871), address(_1880), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_890]:
                                    revert with 'NH{q', 50
                                _1895 = mem[(32 * idx + 1) + _890 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1320]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1320]:
                                    revert with 'NH{q', 50
                                _1916 = mem[(32 * idx + 2) + _1320 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1320 + 44 len 20]
                                mem[mem[64] + 36] = address(_1916)
                                require ext_code.size(address(_1895))
                                staticcall address(_1895).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1916)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1927 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1931 = mem[_1927]
                                require mem[_1927] == mem[_1927 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1871)
                                mem[mem[64] + 36] = address(_1880)
                                mem[mem[64] + 68] = address(_1931)
                                require ext_code.size(address(_1864))
                                call address(_1864).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1871), address(_1880), address(_1931)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1855 = mem[_890]
                            idx = idx + 1
                            continue 
        else:
            mem[0] = 5
            mem[(32 * stor6.length) + 160] = address(stor5.field_0)
            idx = (32 * stor6.length) + 160
            s = 0
            while (32 * stor6.length) + (32 * stor5.length) + 128 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor5.length < 2:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor6.length != stor5.length - 1:
                revert with 0, 'BOGRouterV2: INVALID_PATH'
            idx = 0
            s = msg.value
            while idx < stor6.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1329 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _1336 = mem[(32 * idx) + (32 * stor6.length) + 160]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[(32 * stor6.length) + 128]:
                    revert with 'NH{q', 50
                _1356 = mem[(32 * idx + 1) + (32 * stor6.length) + 160]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_1336)
                mem[mem[64] + 68] = address(_1356)
                require ext_code.size(address(_1329))
                staticcall address(_1329).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_1336), address(_1356)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1399] == mem[_1399]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_1399]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1361 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1361] == mem[_1361]
            if msg.value + (_1401 * stor6.length) <= mem[_1361]:
                call stor2 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _1402 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_1401 * stor6.length)
                    _1436 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1436 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1443 = mem[_1436]
                    mem[_1402 + 100 len ceil32(mem[_1436])] = mem[_1436 + 32 len ceil32(mem[_1436])]
                    if ceil32(_1443) <= _1443:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1402 + _1443 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _1600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1600 + 32] == bool(mem[_1600 + 32])
                                if not mem[_1600 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_1402 + _1443 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1402 + _1443 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _1604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1604 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1604 + 32] == bool(mem[_1604 + 32])
                                if not mem[_1604 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    _1400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1400] = return_data.size
                    mem[_1400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 'NH{q', 1
                    _1403 = mem[64]
                    mem[mem[64] + 36] = address(arg1)
                    mem[mem[64] + 68] = msg.value + (_1401 * stor6.length)
                    _1439 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1439 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1444 = mem[_1439]
                    mem[_1403 + 100 len ceil32(mem[_1439])] = mem[_1439 + 32 len ceil32(mem[_1439])]
                    if ceil32(_1444) <= _1444:
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1403 + _1444 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _1602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1602 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1602 + 32] == bool(mem[_1602 + 32])
                                if not mem[_1602 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[_1403 + _1444 + 100] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1403 + _1444 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            _1605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1605 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1605 + 32] == bool(mem[_1605 + 32])
                                if not mem[_1605 + 32]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= stor6.length:
                    revert with 'NH{q', 50
                if 0 >= stor5.length:
                    revert with 'NH{q', 50
                if 1 >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                mem[mem[64] + 4] = address(stor5.field_0)
                mem[mem[64] + 36] = address(stor5.field_256)
                require ext_code.size(address(stor6.field_0))
                staticcall address(stor6.field_0).0xe98a5b85 with:
                        gas gas_remaining wei
                       args address(stor5.field_0), address(stor5.field_256)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1423] == mem[_1423 + 12 len 20]
                mem[mem[64] + 4] = mem[_1423 + 12 len 20]
                mem[mem[64] + 36] = msg.value
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.value
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1504] == bool(mem[_1504])
                if not mem[_1504]:
                    revert with 'NH{q', 1
                _1527 = mem[64]
                mem[64] = mem[64] + (32 * stor6.length) + 32
                mem[_1527] = stor6.length
                if not stor6.length:
                    _1528 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_1528] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_1527]:
                                revert with 'NH{q', 50
                            _1590 = mem[(32 * idx) + _1527 + 32]
                            if idx >= mem[_1528]:
                                revert with 'NH{q', 50
                            _1597 = mem[(32 * idx) + _1528 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1528]:
                                revert with 'NH{q', 50
                            _1646 = mem[(32 * idx + 1) + _1528 + 32]
                            if mem[_1527] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_1527] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1597)
                                mem[mem[64] + 36] = address(_1646)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1590))
                                call address(_1590).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1597), address(_1646), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1527]:
                                    revert with 'NH{q', 50
                                _1689 = mem[(32 * idx + 1) + _1527 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1528]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1528]:
                                    revert with 'NH{q', 50
                                _1732 = mem[(32 * idx + 2) + _1528 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1528 + 44 len 20]
                                mem[mem[64] + 36] = address(_1732)
                                require ext_code.size(address(_1689))
                                staticcall address(_1689).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1732)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1745 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1751 = mem[_1745]
                                require mem[_1745] == mem[_1745 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1597)
                                mem[mem[64] + 36] = address(_1646)
                                mem[mem[64] + 68] = address(_1751)
                                require ext_code.size(address(_1590))
                                call address(_1590).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1597), address(_1646), address(_1751)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_1528 + 32] = address(stor5.field_0)
                        idx = _1528 + 32
                        s = 0
                        while _1528 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1856 = mem[_1527]
                        idx = 0
                        while idx < _1856:
                            if idx >= mem[_1527]:
                                revert with 'NH{q', 50
                            _1866 = mem[(32 * idx) + _1527 + 32]
                            if idx >= mem[_1528]:
                                revert with 'NH{q', 50
                            _1872 = mem[(32 * idx) + _1528 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1528]:
                                revert with 'NH{q', 50
                            _1882 = mem[(32 * idx + 1) + _1528 + 32]
                            if mem[_1527] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_1527] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1872)
                                mem[mem[64] + 36] = address(_1882)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1866))
                                call address(_1866).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1872), address(_1882), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1527]:
                                    revert with 'NH{q', 50
                                _1896 = mem[(32 * idx + 1) + _1527 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1528]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1528]:
                                    revert with 'NH{q', 50
                                _1918 = mem[(32 * idx + 2) + _1528 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1528 + 44 len 20]
                                mem[mem[64] + 36] = address(_1918)
                                require ext_code.size(address(_1896))
                                staticcall address(_1896).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1918)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1928 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1932 = mem[_1928]
                                require mem[_1928] == mem[_1928 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1872)
                                mem[mem[64] + 36] = address(_1882)
                                mem[mem[64] + 68] = address(_1932)
                                require ext_code.size(address(_1866))
                                call address(_1866).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1872), address(_1882), address(_1932)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1856 = mem[_1527]
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = 6
                    mem[_1527 + 32] = address(stor6.field_0)
                    idx = _1527 + 32
                    s = 0
                    while _1527 + (32 * stor6.length) > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _1764 = mem[64]
                    mem[64] = mem[64] + (32 * stor5.length) + 32
                    mem[_1764] = stor5.length
                    if not stor5.length:
                        idx = 0
                        while idx < stor6.length:
                            if idx >= mem[_1527]:
                                revert with 'NH{q', 50
                            _1868 = mem[(32 * idx) + _1527 + 32]
                            if idx >= mem[_1764]:
                                revert with 'NH{q', 50
                            _1873 = mem[(32 * idx) + _1764 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1764]:
                                revert with 'NH{q', 50
                            _1884 = mem[(32 * idx + 1) + _1764 + 32]
                            if mem[_1527] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_1527] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1873)
                                mem[mem[64] + 36] = address(_1884)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1868))
                                call address(_1868).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1873), address(_1884), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1527]:
                                    revert with 'NH{q', 50
                                _1897 = mem[(32 * idx + 1) + _1527 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1764]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1764]:
                                    revert with 'NH{q', 50
                                _1920 = mem[(32 * idx + 2) + _1764 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1764 + 44 len 20]
                                mem[mem[64] + 36] = address(_1920)
                                require ext_code.size(address(_1897))
                                staticcall address(_1897).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1920)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1929 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1933 = mem[_1929]
                                require mem[_1929] == mem[_1929 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1873)
                                mem[mem[64] + 36] = address(_1884)
                                mem[mem[64] + 68] = address(_1933)
                                require ext_code.size(address(_1868))
                                call address(_1868).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1873), address(_1884), address(_1933)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 5
                        mem[_1764 + 32] = address(stor5.field_0)
                        idx = _1764 + 32
                        s = 0
                        while _1764 + (32 * stor5.length) > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _1964 = mem[_1527]
                        idx = 0
                        while idx < _1964:
                            if idx >= mem[_1527]:
                                revert with 'NH{q', 50
                            _1966 = mem[(32 * idx) + _1527 + 32]
                            if idx >= mem[_1764]:
                                revert with 'NH{q', 50
                            _1968 = mem[(32 * idx) + _1764 + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_1764]:
                                revert with 'NH{q', 50
                            _1970 = mem[(32 * idx + 1) + _1764 + 32]
                            if mem[_1527] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[_1527] - 1:
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1968)
                                mem[mem[64] + 36] = address(_1970)
                                mem[mem[64] + 68] = address(arg1)
                                require ext_code.size(address(_1966))
                                call address(_1966).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1968), address(_1970), address(arg1)
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1527]:
                                    revert with 'NH{q', 50
                                _1974 = mem[(32 * idx + 1) + _1527 + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_1764]:
                                    revert with 'NH{q', 50
                                if idx > -3:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[_1764]:
                                    revert with 'NH{q', 50
                                _1979 = mem[(32 * idx + 2) + _1764 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx + 1) + _1764 + 44 len 20]
                                mem[mem[64] + 36] = address(_1979)
                                require ext_code.size(address(_1974))
                                staticcall address(_1974).0xe98a5b85 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_1979)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1982 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1983 = mem[_1982]
                                require mem[_1982] == mem[_1982 + 12 len 20]
                                mem[mem[64]] = 0xe65add9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_1968)
                                mem[mem[64] + 36] = address(_1970)
                                mem[mem[64] + 68] = address(_1983)
                                require ext_code.size(address(_1966))
                                call address(_1966).execute(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(_1968), address(_1970), address(_1983)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1964 = mem[_1527]
                            idx = idx + 1
                            continue 
}



}
