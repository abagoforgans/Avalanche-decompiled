contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function tokenBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if not address(cd[((32 * idx) + arg2 + 36)]):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = eth.balance(arg1)
            else:
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if not ext_code.size(cd[((32 * idx) + arg2 + 36)]):
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 0
                else:
                    _92 = mem[64]
                    mem[mem[64] + 36] = arg1
                    _93 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_93 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_93 + 36 len 28]
                    _100 = mem[_93]
                    s = 0
                    while s < _100:
                        mem[s + _92 + 68] = mem[_93 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_100) <= _100:
                        staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _100 + _92 + -mem[64] + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[128]
                        else:
                            _170 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_170] = return_data.size
                            mem[_170 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[_170 + 32]
                    else:
                        mem[_92 + _100 + 68] = 0
                        staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _100 + _92 + -mem[64] + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[128]
                        else:
                            _174 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_174] = return_data.size
                            mem[_174 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[_174 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if not address(cd[((32 * idx) + arg2 + 36)]):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = eth.balance(arg1)
            else:
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if not ext_code.size(cd[((32 * idx) + arg2 + 36)]):
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 0
                else:
                    _96 = mem[64]
                    mem[mem[64] + 36] = arg1
                    _97 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_97 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_97 + 36 len 28]
                    _101 = mem[_97]
                    s = 0
                    while s < _101:
                        mem[s + _96 + 68] = mem[_97 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_101) <= _101:
                        staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _101 + _96 + -mem[64] + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[128]
                        else:
                            _172 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_172] = return_data.size
                            mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[_172 + 32]
                    else:
                        mem[_96 + _101 + 68] = 0
                        staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _101 + _96 + -mem[64] + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[128]
                        else:
                            _175 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_175] = return_data.size
                            mem[_175 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = mem[_175 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function balancesOneByOne(address arg1, address[][] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)] == address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] < calldata.size + -cd[(arg1 + (32 * idx) + 36)] + -arg1 - 67
            require cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)] <= test266151307()
            require cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 68 <= calldata.size - (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)])
            _240 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
            mem[_240] = cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]
            mem[_240 + 32 len 32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]] = call.data[cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 68 len 32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]]
            mem[_240 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32] = 0
            if cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)] > test266151307():
                revert with 0, 65
            _242 = mem[64]
            mem[mem[64]] = cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]
            mem[64] = mem[64] + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
            if not cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]:
                s = 0
                while s < cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]:
                    if s >= mem[_240]:
                        revert with 0, 50
                    if not mem[(32 * s) + _240 + 44 len 20]:
                        _450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_450] = 0
                        mem[_450 + 32] = eth.balance(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                        if s >= mem[_242]:
                            revert with 0, 50
                        mem[(32 * s) + _242 + 32] = _450
                    else:
                        _452 = mem[64]
                        mem[64] = mem[64] + 64
                        if s >= mem[_240]:
                            revert with 0, 50
                        mem[_452] = mem[(32 * s) + _240 + 44 len 20]
                        if s >= mem[_240]:
                            revert with 0, 50
                        _462 = mem[(32 * s) + _240 + 32]
                        if not ext_code.size(mem[(32 * s) + _240 + 32]):
                            mem[_452 + 32] = 0
                        else:
                            _472 = mem[64]
                            mem[mem[64] + 36] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                            _473 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_473 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_473 + 36 len 28]
                            _479 = mem[_473]
                            idx = 0
                            while idx < _479:
                                mem[idx + _472 + 68] = mem[_473 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_479) <= _479:
                                staticcall address(_462).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _479 + _472 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_452 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_452 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_452 + 32] = mem[128]
                                else:
                                    _680 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_680] = return_data.size
                                    mem[_680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_452 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_452 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_452 + 32] = mem[_680 + 32]
                            else:
                                mem[_472 + _479 + 68] = 0
                                staticcall address(_462).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _479 + _472 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_452 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_452 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_452 + 32] = mem[128]
                                else:
                                    _689 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_689] = return_data.size
                                    mem[_689 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_452 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_452 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_452 + 32] = mem[_689 + 32]
                        if s >= mem[_242]:
                            revert with 0, 50
                        mem[(32 * s) + _242 + 32] = _452
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_442] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                mem[_442 + 32] = _242
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _442
            else:
                mem[64] = _242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 96
                mem[_242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32] = 0
                mem[_242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 64] = 0
                mem[_242 + 32] = _242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
                t = _242 + 32
                s = cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]
                while s - 1:
                    mem[64] = mem[64] + 64
                    mem[_242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32] = 0
                    mem[_242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 64] = 0
                    mem[t + 32] = _242 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                _647 = mem[_240]
                s = 0
                while s < _647:
                    if s >= mem[_240]:
                        revert with 0, 50
                    if not mem[(32 * s) + _240 + 44 len 20]:
                        _668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_668] = 0
                        mem[_668 + 32] = eth.balance(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                        if s >= mem[_242]:
                            revert with 0, 50
                        mem[(32 * s) + _242 + 32] = _668
                    else:
                        _670 = mem[64]
                        mem[64] = mem[64] + 64
                        if s >= mem[_240]:
                            revert with 0, 50
                        mem[_670] = mem[(32 * s) + _240 + 44 len 20]
                        if s >= mem[_240]:
                            revert with 0, 50
                        _690 = mem[(32 * s) + _240 + 32]
                        if not ext_code.size(mem[(32 * s) + _240 + 32]):
                            mem[_670 + 32] = 0
                        else:
                            _701 = mem[64]
                            mem[mem[64] + 36] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                            _702 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_702 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_702 + 36 len 28]
                            _713 = mem[_702]
                            idx = 0
                            while idx < _713:
                                mem[idx + _701 + 68] = mem[_702 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_713) <= _713:
                                staticcall address(_690).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _713 + _701 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_670 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_670 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_670 + 32] = mem[128]
                                else:
                                    _845 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_845] = return_data.size
                                    mem[_845 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_670 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_670 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_670 + 32] = mem[_845 + 32]
                            else:
                                mem[_701 + _713 + 68] = 0
                                staticcall address(_690).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _713 + _701 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_670 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_670 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_670 + 32] = mem[128]
                                else:
                                    _851 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_851] = return_data.size
                                    mem[_851 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_670 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_670 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_670 + 32] = mem[_851 + 32]
                        if s >= mem[_242]:
                            revert with 0, 50
                        mem[(32 * s) + _242 + 32] = _670
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _654 = mem[64]
                mem[64] = mem[64] + 64
                mem[_654] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                mem[_654 + 32] = _242
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _654
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _220 = mem[64]
        mem[mem[64]] = 32
        _221 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _221:
            mem[u] = t + -_220 - 64
            _438 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _440 = mem[_438 + 32]
            mem[t + 32] = 64
            _441 = mem[_440]
            mem[t + 64] = mem[_440]
            w = t + 96
            v = 0
            x = _440 + 32
            while v < _441:
                _650 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_650 + 32]
                w = w + 64
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (64 * _441) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 96
        mem[128] = (32 * arg1.length) + 128
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)] == address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 99
            require cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] < calldata.size + -cd[(arg1 + (32 * idx) + 36)] + -arg1 - 67
            require cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)] <= test266151307()
            require cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 68 <= calldata.size - (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)])
            _525 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
            mem[_525] = cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]
            mem[_525 + 32 len 32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]] = call.data[cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 68 len 32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]]
            mem[_525 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32] = 0
            if cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)] > test266151307():
                revert with 0, 65
            _531 = mem[64]
            mem[mem[64]] = cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]
            mem[64] = mem[64] + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
            if not cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]:
                s = 0
                while s < cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]:
                    if s >= mem[_525]:
                        revert with 0, 50
                    if not mem[(32 * s) + _525 + 44 len 20]:
                        _675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_675] = 0
                        mem[_675 + 32] = eth.balance(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                        if s >= mem[_531]:
                            revert with 0, 50
                        mem[(32 * s) + _531 + 32] = _675
                    else:
                        _677 = mem[64]
                        mem[64] = mem[64] + 64
                        if s >= mem[_525]:
                            revert with 0, 50
                        mem[_677] = mem[(32 * s) + _525 + 44 len 20]
                        if s >= mem[_525]:
                            revert with 0, 50
                        _691 = mem[(32 * s) + _525 + 32]
                        if not ext_code.size(mem[(32 * s) + _525 + 32]):
                            mem[_677 + 32] = 0
                        else:
                            _705 = mem[64]
                            mem[mem[64] + 36] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                            _706 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_706 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_706 + 36 len 28]
                            _714 = mem[_706]
                            idx = 0
                            while idx < _714:
                                mem[idx + _705 + 68] = mem[_706 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_714) <= _714:
                                staticcall address(_691).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _714 + _705 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_677 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_677 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_677 + 32] = mem[128]
                                else:
                                    _847 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_847] = return_data.size
                                    mem[_847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_677 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_677 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_677 + 32] = mem[_847 + 32]
                            else:
                                mem[_705 + _714 + 68] = 0
                                staticcall address(_691).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _714 + _705 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_677 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_677 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_677 + 32] = mem[128]
                                else:
                                    _852 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_852] = return_data.size
                                    mem[_852 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_677 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_677 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_677 + 32] = mem[_852 + 32]
                        if s >= mem[_531]:
                            revert with 0, 50
                        mem[(32 * s) + _531 + 32] = _677
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_661] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                mem[_661 + 32] = _531
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _661
            else:
                mem[64] = _531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 96
                mem[_531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32] = 0
                mem[_531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 64] = 0
                mem[_531 + 32] = _531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
                t = _531 + 32
                s = cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]
                while s - 1:
                    mem[64] = mem[64] + 64
                    mem[_531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32] = 0
                    mem[_531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 64] = 0
                    mem[t + 32] = _531 + (32 * cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 68)] + 36)]) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                _829 = mem[_525]
                s = 0
                while s < _829:
                    if s >= mem[_525]:
                        revert with 0, 50
                    if not mem[(32 * s) + _525 + 44 len 20]:
                        _841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_841] = 0
                        mem[_841 + 32] = eth.balance(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                        if s >= mem[_531]:
                            revert with 0, 50
                        mem[(32 * s) + _531 + 32] = _841
                    else:
                        _843 = mem[64]
                        mem[64] = mem[64] + 64
                        if s >= mem[_525]:
                            revert with 0, 50
                        mem[_843] = mem[(32 * s) + _525 + 44 len 20]
                        if s >= mem[_525]:
                            revert with 0, 50
                        _853 = mem[(32 * s) + _525 + 32]
                        if not ext_code.size(mem[(32 * s) + _525 + 32]):
                            mem[_843 + 32] = 0
                        else:
                            _862 = mem[64]
                            mem[mem[64] + 36] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                            _863 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_863 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_863 + 36 len 28]
                            _870 = mem[_863]
                            idx = 0
                            while idx < _870:
                                mem[idx + _862 + 68] = mem[_863 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_870) <= _870:
                                staticcall address(_853).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _870 + _862 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_843 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_843 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_843 + 32] = mem[128]
                                else:
                                    _939 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_939] = return_data.size
                                    mem[_939 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_843 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_843 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_843 + 32] = mem[_939 + 32]
                            else:
                                mem[_862 + _870 + 68] = 0
                                staticcall address(_853).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _870 + _862 + -mem[64] + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[_843 + 32] = 0
                                    else:
                                        if mem[96] != 32:
                                            mem[_843 + 32] = 0
                                        else:
                                            require mem[96] >= 32
                                            mem[_843 + 32] = mem[128]
                                else:
                                    _941 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_941] = return_data.size
                                    mem[_941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[_843 + 32] = 0
                                    else:
                                        if return_data.size != 32:
                                            mem[_843 + 32] = 0
                                        else:
                                            require return_data.size >= 32
                                            mem[_843 + 32] = mem[_941 + 32]
                        if s >= mem[_531]:
                            revert with 0, 50
                        mem[(32 * s) + _531 + 32] = _843
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _835 = mem[64]
                mem[64] = mem[64] + 64
                mem[_835] = address(cd[(cd[(arg1 + (32 * idx) + 36)] + arg1 + 36)])
                mem[_835 + 32] = _531
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _835
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _455 = mem[64]
        mem[mem[64]] = 32
        _461 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _461:
            mem[u] = t + -_455 - 64
            _657 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _659 = mem[_657 + 32]
            mem[t + 32] = 64
            _660 = mem[_659]
            mem[t + 64] = mem[_659]
            w = t + 96
            v = 0
            x = _659 + 32
            while v < _660:
                _831 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_831 + 32]
                w = w + 64
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (64 * _660) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
