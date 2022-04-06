contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor2;
uint8 stor3; offset 160
address stor3;

function owner() {
    return owner
}

function sub_280b1ac9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(address(stor3.field_0))
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x35ad6158(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x35ad6158(?????):
                if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(stor3.field_0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x57aa758e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor2 = arg1
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                            require not msg.value
                            return owner
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        emit OwnershipTransferred(owner, 0);
                        owner = 0
            else:
                require calldata.size - 4 >= 224
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                require not uint8(stor3.field_160)
                require not stor2
                mem[128] = 2
                mem[64] = 224
                mem[160] = address(arg2)
                mem[192] = address(arg3)
                idx = 0
                while idx < arg5:
                    _259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_259] = 26
                    mem[_259 + 32] = 'SafeMath: division by zero'
                    if not arg5:
                        _265 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _265 + 68] = mem[idx + _259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_265 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _265 + -mem[64] + 100
                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 164
                    while s < mem[128]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = address(stor3.field_0)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg7 / arg5 wei
                         gas gas_remaining wei
                        args arg6, 128, address(stor3.field_0), block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).isBlacklisted(address rg1) with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    mem[mem[64] + 4] = address(arg4)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).isSniper(address rg1) with:
                            gas gas_remaining wei
                           args address(arg4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_334] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_334] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_334] >= 40 * arg5 * arg6 / 100
                        else:
                            _304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_304] == bool(mem[_304])
                            require not mem[_304]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_356] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_356] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_356] >= 40 * arg5 * arg6 / 100
                    else:
                        _286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _290 = mem[_286]
                        require mem[_286] == bool(mem[_286])
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            require not _290
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _357 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_357] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_357] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_357] >= 40 * arg5 * arg6 / 100
                        else:
                            _319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_319] == bool(mem[_319])
                            require not _290
                            require not mem[_319]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _384 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_384] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_384] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_384] >= 40 * arg5 * arg6 / 100
                else:
                    _269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _273 = mem[_269]
                    require mem[_269] == bool(mem[_269])
                    mem[mem[64] + 4] = address(arg4)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).isSniper(address rg1) with:
                            gas gas_remaining wei
                           args address(arg4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            require not _273
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_358] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_358] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_358] >= 40 * arg5 * arg6 / 100
                        else:
                            _320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_320] == bool(mem[_320])
                            require not _273
                            require not mem[_320]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_385] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_385] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_385] >= 40 * arg5 * arg6 / 100
                    else:
                        _302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _306 = mem[_302]
                        require mem[_302] == bool(mem[_302])
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            require not _273
                            require not _306
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_386] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_386] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_386] >= 40 * arg5 * arg6 / 100
                        else:
                            _336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_336] == bool(mem[_336])
                            require not _273
                            require not _306
                            require not mem[_336]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _414 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_414] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_414] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_414] >= 40 * arg5 * arg6 / 100
                stor2 = 1
        else:
            if lockXJK() == uint32(call.func_hash) >> 224:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uint8(stor3.field_160) = 1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x12feb19b(?????):
                    if unknown_0x1efc0bbb(?????) == uint32(call.func_hash) >> 224:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        uint8(stor3.field_160) = 0
                    if uint32(call.func_hash) >> 224 != unknown_0x280b1ac9(?????):
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    selfdestruct(address(stor3.field_0))
                require calldata.size - 4 >= 224
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                require not uint8(stor3.field_160)
                require not stor2
                mem[128] = 2
                mem[64] = 224
                mem[160] = address(arg2)
                mem[192] = address(arg3)
                idx = 0
                while idx < arg5:
                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 164
                    while s < mem[128]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = address(arg4)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg7 wei
                         gas gas_remaining wei
                        args arg6, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _501 = mem[_500]
                    require mem[_500] <= test266151307()
                    require _500 + mem[_500] + 31 < _500 + return_data.size
                    _502 = mem[_500 + mem[_500]]
                    if mem[_500 + mem[_500]] > test266151307():
                        revert with 0, 65
                    if _500 + ceil32(return_data.size) + ceil32(32 * mem[_500 + mem[_500]]) + 1 > test266151307() or ceil32(32 * mem[_500 + mem[_500]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _500 + ceil32(return_data.size) + ceil32(32 * mem[_500 + mem[_500]]) + 1
                    mem[_500 + ceil32(return_data.size)] = _502
                    require return_data.size >= _501 + (32 * _502) + 32
                    t = _500 + _501 + 32
                    u = _500 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _502:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).isBlacklisted(address rg1) with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    mem[mem[64] + 4] = address(arg4)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).isSniper(address rg1) with:
                            gas gas_remaining wei
                           args address(arg4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_333] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_333] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_333] >= 40 * arg5 * arg6 / 100
                        else:
                            _303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_303] == bool(mem[_303])
                            require not mem[_303]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_353] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_353] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_353] >= 40 * arg5 * arg6 / 100
                    else:
                        _284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _289 = mem[_284]
                        require mem[_284] == bool(mem[_284])
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            require not _289
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_354] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_354] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_354] >= 40 * arg5 * arg6 / 100
                        else:
                            _317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_317] == bool(mem[_317])
                            require not _289
                            require not mem[_317]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_380] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_380] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_380] >= 40 * arg5 * arg6 / 100
                else:
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _272 = mem[_268]
                    require mem[_268] == bool(mem[_268])
                    mem[mem[64] + 4] = address(arg4)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).isSniper(address rg1) with:
                            gas gas_remaining wei
                           args address(arg4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            require not _272
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_355] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_355] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_355] >= 40 * arg5 * arg6 / 100
                        else:
                            _318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_318] == bool(mem[_318])
                            require not _272
                            require not mem[_318]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _381 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_381] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_381] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_381] >= 40 * arg5 * arg6 / 100
                    else:
                        _301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _305 = mem[_301]
                        require mem[_301] == bool(mem[_301])
                        mem[mem[64] + 4] = address(arg4)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).isBot(address rg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            require not _272
                            require not _305
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_382] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_382] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_382] >= 40 * arg5 * arg6 / 100
                        else:
                            _335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_335] == bool(mem[_335])
                            require not _272
                            require not _305
                            require not mem[_335]
                            mem[mem[64] + 4] = address(arg4)
                            require ext_code.size(address(arg3))
                            staticcall address(arg3).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg4)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not arg5:
                                require mem[_410] >= 0
                            else:
                                if arg5 and arg6 > -1 / arg5:
                                    revert with 0, 17
                                if not arg5:
                                    revert with 0, 18
                                if arg5 * arg6 / arg5 != arg6:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg5 * arg6 / 100:
                                    require mem[_410] >= 0
                                else:
                                    if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                                        revert with 0, 17
                                    if not arg5 * arg6 / 100:
                                        revert with 0, 18
                                    if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require mem[_410] >= 40 * arg5 * arg6 / 100
                stor2 = 1
}

function lockXJK() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 1
}

function unlockXJK() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCounterABDX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(stor3.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_35ad6158(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require not uint8(stor3.field_160)
    require not stor2
    mem[96] = 2
    mem[64] = 192
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    idx = 0
    while idx < arg5:
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 26
        mem[_122 + 32] = 'SafeMath: division by zero'
        if not arg5:
            _125 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _125 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_125 + 94] = 0
            revert with memory
              from mem[64]
               len _125 + -mem[64] + 100
        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = address(stor3.field_0)
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg7 / arg5 wei
             gas gas_remaining wei
            args arg6, 128, address(stor3.field_0), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = address(arg4)
    require ext_code.size(address(arg3))
    staticcall address(arg3).isBlacklisted(address rg1) with:
            gas gas_remaining wei
           args address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        mem[mem[64] + 4] = address(arg4)
        require ext_code.size(address(arg3))
        staticcall address(arg3).isSniper(address rg1) with:
                gas gas_remaining wei
               args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_160] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_160] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_160] >= 40 * arg5 * arg6 / 100
            else:
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_145] == bool(mem[_145])
                require not mem[_145]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_170] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_170] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_170] >= 40 * arg5 * arg6 / 100
        else:
            _136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _138 = mem[_136]
            require mem[_136] == bool(mem[_136])
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require not _138
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_171] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_171] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_171] >= 40 * arg5 * arg6 / 100
            else:
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_152] == bool(mem[_152])
                require not _138
                require not mem[_152]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_184] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_184] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_184] >= 40 * arg5 * arg6 / 100
    else:
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _129 = mem[_127]
        require mem[_127] == bool(mem[_127])
        mem[mem[64] + 4] = address(arg4)
        require ext_code.size(address(arg3))
        staticcall address(arg3).isSniper(address rg1) with:
                gas gas_remaining wei
               args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require not _129
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_172] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_172] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_172] >= 40 * arg5 * arg6 / 100
            else:
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_153] == bool(mem[_153])
                require not _129
                require not mem[_153]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _185 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_185] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_185] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_185] >= 40 * arg5 * arg6 / 100
        else:
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _146 = mem[_144]
            require mem[_144] == bool(mem[_144])
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require not _129
                require not _146
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_186] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_186] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_186] >= 40 * arg5 * arg6 / 100
            else:
                _161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_161] == bool(mem[_161])
                require not _129
                require not _146
                require not mem[_161]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_200] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_200] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_200] >= 40 * arg5 * arg6 / 100
    stor2 = 1
}

function sub_12feb19b(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require not uint8(stor3.field_160)
    require not stor2
    mem[96] = 2
    mem[64] = 192
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    idx = 0
    while idx < arg5:
        _121 = mem[64]
        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = 128
        _123 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < _123:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_121 + 68] = address(arg4)
        mem[_121 + 100] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
           value arg7 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _121 + (32 * _123) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _241 = mem[_240]
        require mem[_240] <= test266151307()
        require _240 + mem[_240] + 31 < _240 + return_data.size
        _242 = mem[_240 + mem[_240]]
        if mem[_240 + mem[_240]] > test266151307():
            revert with 0, 65
        if _240 + ceil32(return_data.size) + ceil32(32 * mem[_240 + mem[_240]]) + 1 > test266151307() or ceil32(32 * mem[_240 + mem[_240]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _240 + ceil32(return_data.size) + ceil32(32 * mem[_240 + mem[_240]]) + 1
        mem[_240 + ceil32(return_data.size)] = _242
        require return_data.size >= _241 + (32 * _242) + 32
        t = _240 + _241 + 32
        u = _240 + ceil32(return_data.size) + 32
        s = 0
        while s < _242:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = address(arg4)
    require ext_code.size(address(arg3))
    staticcall address(arg3).isBlacklisted(address rg1) with:
            gas gas_remaining wei
           args address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        mem[mem[64] + 4] = address(arg4)
        require ext_code.size(address(arg3))
        staticcall address(arg3).isSniper(address rg1) with:
                gas gas_remaining wei
               args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _158 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_158] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_158] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_158] >= 40 * arg5 * arg6 / 100
            else:
                _143 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_143] == bool(mem[_143])
                require not mem[_143]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_168] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_168] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_168] >= 40 * arg5 * arg6 / 100
        else:
            _133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _136 = mem[_133]
            require mem[_133] == bool(mem[_133])
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require not _136
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_169] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_169] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_169] >= 40 * arg5 * arg6 / 100
            else:
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_150] == bool(mem[_150])
                require not _136
                require not mem[_150]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_182] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_182] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_182] >= 40 * arg5 * arg6 / 100
    else:
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_126]
        require mem[_126] == bool(mem[_126])
        mem[mem[64] + 4] = address(arg4)
        require ext_code.size(address(arg3))
        staticcall address(arg3).isSniper(address rg1) with:
                gas gas_remaining wei
               args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require not _128
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_170] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_170] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_170] >= 40 * arg5 * arg6 / 100
            else:
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_151] == bool(mem[_151])
                require not _128
                require not mem[_151]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_183] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_183] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_183] >= 40 * arg5 * arg6 / 100
        else:
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _144 = mem[_142]
            require mem[_142] == bool(mem[_142])
            mem[mem[64] + 4] = address(arg4)
            require ext_code.size(address(arg3))
            staticcall address(arg3).isBot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                require not _128
                require not _144
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_184] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_184] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_184] >= 40 * arg5 * arg6 / 100
            else:
                _159 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_159] == bool(mem[_159])
                require not _128
                require not _144
                require not mem[_159]
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_198] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 100:
                        require mem[_198] >= 0
                    else:
                        if arg5 * arg6 / 100 and 40 > -1 / arg5 * arg6 / 100:
                            revert with 0, 17
                        if not arg5 * arg6 / 100:
                            revert with 0, 18
                        if 40 * arg5 * arg6 / 100 / arg5 * arg6 / 100 != 40:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_198] >= 40 * arg5 * arg6 / 100
    stor2 = 1
}



}
