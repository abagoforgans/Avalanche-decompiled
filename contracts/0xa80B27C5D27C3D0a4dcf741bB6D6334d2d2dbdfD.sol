contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_45] == mem[_45 + 18 len 14]
            _56 = mem[_45 + 32]
            require mem[_45 + 32] == mem[_45 + 50 len 14]
            require mem[_45 + 64] == mem[_45 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = mem[_45 + 18 len 14]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _56)
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 32
        _37 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _37:
            _69 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_69 + 50 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _36 + (64 * _37) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[var17001] = (32 * arg1.length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_96] == mem[_96 + 18 len 14]
        _99 = mem[_96 + 32]
        require mem[_96 + 32] == mem[_96 + 50 len 14]
        require mem[_96 + 64] == mem[_96 + 92 len 4]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + 128]] = mem[_96 + 18 len 14]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _99)
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    _90 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _90:
        _105 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_105 + 50 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _89 + (64 * _90) + -mem[64] + 64
}

function sub_70638f59(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 >= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0
        mem[64] = ceil32(return_data.size) + 128
        mem[ceil32(return_data.size) + 128] = 32
        mem[ceil32(return_data.size) + 160] = 0
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 192
        while idx < mem[ceil32(return_data.size) + 96]:
            _119 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_119 + 44 len 20]
            mem[t + 64] = mem[_119 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len ceil32(return_data.size) + -mem[64] + 192
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg2 >= arg3:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg3
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
        if not arg3:
            if arg2 > -arg3 - 1:
                revert with 'NH{q', 17
            if var149002 >= arg2 + arg3:
                mem[ceil32(return_data.size) + (32 * arg3) + 128] = 32
                mem[ceil32(return_data.size) + (32 * arg3) + 160] = arg3
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * arg3) + 192
                while idx < mem[ceil32(return_data.size) + 96]:
                    _943 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_943 + 44 len 20]
                    mem[t + 64] = mem[_943 + 76 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (129 * arg3) + -mem[64] + 192
            mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
            mem[var159003] = var159001
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[ceil32(return_data.size) + (32 * arg3) + 132 len var163001 + -ceil32(return_data.size) + -(32 * arg3) - 132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var167002 - var167001 >= 32
            # nil
        else:
            mem[64] = ceil32(return_data.size) + (32 * arg3) + 224
            mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 192] = 0
            mem[var55001] = ceil32(return_data.size) + (32 * arg3) + 128
            s = var55001
            idx = var55002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
                mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
                mem[ceil32(return_data.size) + (32 * arg3) + 192] = 0
                mem[s + 32] = ceil32(return_data.size) + (32 * arg3) + 128
                s = s + 32
                idx = idx - 1
                continue 
            if arg2 > -arg3 - 1:
                revert with 'NH{q', 17
            if var156002 >= arg2 + arg3:
                _1055 = mem[64]
                mem[mem[64]] = 32
                _1061 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 64
                while idx < _1061:
                    _1169 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_1169 + 44 len 20]
                    mem[t + 64] = mem[_1169 + 76 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _1055 + (96 * _1061) + -mem[64] + 64
            mem[mem[64]] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
            mem[var166003] = var166001
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len var170001 + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var174002 - var174001 >= 32
            # nil
    else:
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            if arg2 > -ext_call.return_data[0] + arg2 - 1:
                revert with 'NH{q', 17
            if var156002 >= ext_call.return_data[0]:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 32
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192
                while idx < mem[ceil32(return_data.size) + 96]:
                    _942 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_942 + 44 len 20]
                    mem[t + 64] = mem[_942 + 76 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + (96 * ext_call.return_data[0]) + (-96 * arg2) + -mem[64] + 192
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
            mem[var166003] = var166001
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 132 len var170001 + -ceil32(return_data.size) + -(32 * ext_call.return_data[0] - arg2) - 132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var174002 - var174001 >= 32
            # nil
        else:
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
            mem[var62001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = var62001
            idx = var62002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            if arg2 > -ext_call.return_data[0] + arg2 - 1:
                revert with 'NH{q', 17
            if var163002 >= ext_call.return_data[0]:
                _1054 = mem[64]
                mem[mem[64]] = 32
                _1059 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 64
                while idx < _1059:
                    _1168 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_1168 + 44 len 20]
                    mem[t + 64] = mem[_1168 + 76 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _1054 + (96 * _1059) + -mem[64] + 64
            mem[mem[64]] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
            mem[var173003] = var173001
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len var177001 + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var181002 - var181001 >= 32
            # nil
}

function sub_3ad1987c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if arg2.length / 68 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length / 68
    if not arg2.length / 68:
        revert with 'NH{q', 18
    mem[64] = (32 * arg2.length / 68) + 224
    mem[(32 * arg2.length / 68) + 128] = 0
    mem[(32 * arg2.length / 68) + 160] = 0
    mem[(32 * arg2.length / 68) + 192] = 96
    mem[var33001] = (32 * arg2.length / 68) + 128
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg2.length / 68) + 128] = 0
        mem[(32 * arg2.length / 68) + 160] = 0
        mem[(32 * arg2.length / 68) + 192] = 96
        mem[s + 32] = (32 * arg2.length / 68) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if not arg2.length / 68:
        revert with 'NH{q', 18
    idx = 0
    while idx < arg2.length / 68:
        mem[mem[64] + 4] = address(arg1)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _317 = mem[_315]
        require mem[_315] == mem[_315]
        if idx and 68 > -1 / idx:
            revert with 'NH{q', 17
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 and 68 > -1 / idx + 1:
            revert with 'NH{q', 17
        require 68 * idx <= (68 * idx) + 68
        require (68 * idx) + 68 <= arg2.length
        mem[mem[64] len 68] = call.data[arg2 + (68 * idx) + 36 len 68]
        mem[mem[64] + 68] = 0
        call address(arg1) with:
           funct call.data[arg2 + (68 * idx) + 36 len 4]
             gas gas_remaining / arg2.length / 68 wei
            args call.data[arg2 + (68 * idx) + 40 len 64]
        if not return_data.size:
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = 0
            if ext_call.success:
                mem[mem[64] + 4] = address(arg1)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                _365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_365] == mem[_365]
                if mem[_365] < _317:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = mem[_365] - _317
            else:
                if mem[96] < 68:
                    _337 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_337] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _337
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = 5
                    mem[_356 + 32] = 'error'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _356
                else:
                    _335 = mem[100]
                    mem[100] = mem[96] - 4
                    _336 = mem[100]
                    require mem[100] >= 32
                    _341 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _355 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 'NH{q', 65
                    _369 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_369] = mem[mem[132] + 132]
                    require _341 + _355 + 164 <= _336 + 132
                    s = 0
                    while s < _355:
                        mem[_369 + s + 32] = mem[_341 + s + 164]
                        s = s + 32
                        continue 
                    if ceil32(_355) <= _355:
                        mem[100] = _335
                        if idx >= mem[96 len 4], Mask(224, 32, _335) >> 32:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 64] = _369
                        if idx >= mem[96 len 4], Mask(224, 32, _335) >> 32:
                            revert with 'NH{q', 50
                        if not mem[_369]:
                            _438 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_438] = 5
                            mem[_438 + 32] = 'error'
                            if idx >= mem[96 len 4], Mask(224, 32, _335) >> 32:
                                revert with 'NH{q', 50
                            mem[mem[(32 * idx) + 128] + 64] = _438
                    else:
                        mem[_369 + _355 + 32] = 0
                        mem[100] = _335
                        if idx >= mem[96 len 4], Mask(224, 32, _335) >> 32:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 64] = _369
                        if idx >= mem[96 len 4], Mask(224, 32, _335) >> 32:
                            revert with 'NH{q', 50
                        if not mem[_369]:
                            _449 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_449] = 5
                            mem[_449 + 32] = 'error'
                            if idx >= mem[96 len 4], Mask(224, 32, _335) >> 32:
                                revert with 'NH{q', 50
                            mem[mem[(32 * idx) + 128] + 64] = _449
        else:
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_326] = return_data.size
            mem[_326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = 0
            if ext_call.success:
                mem[mem[64] + 4] = address(arg1)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_366] == mem[_366]
                if mem[_366] < _317:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = mem[_366] - _317
            else:
                if return_data.size < 68:
                    _340 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_340] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _340
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_359] = 5
                    mem[_359 + 32] = 'error'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _359
                else:
                    _338 = Mask(224, 0, return_data.size), mem[_326 + 32 len 4]
                    mem[_326 + 4] = return_data.size - 4
                    require return_data.size - 4 >= 32
                    _343 = mem[_326 + 36]
                    require mem[_326 + 36] <= test266151307()
                    require _326 + mem[_326 + 36] + 67 < _326 + return_data.size + 32
                    _358 = mem[_326 + mem[_326 + 36] + 36]
                    if mem[_326 + mem[_326 + 36] + 36] > test266151307():
                        revert with 'NH{q', 65
                    _370 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_326 + mem[_326 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_326 + mem[_326 + 36] + 36])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_326 + mem[_326 + 36] + 36])) + 1
                    mem[_370] = _358
                    require _343 + _358 + 68 <= return_data.size + 32
                    s = 0
                    while s < _358:
                        mem[_370 + s + 32] = mem[_326 + _343 + s + 68]
                        s = s + 32
                        continue 
                    if ceil32(_358) <= _358:
                        mem[_326 + 4] = _338
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 64] = _370
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if not _358:
                            _443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_443] = 5
                            mem[_443 + 32] = 'error'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[(32 * idx) + 128] + 64] = _443
                    else:
                        mem[_370 + _358 + 32] = 0
                        mem[_326 + 4] = _338
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 64] = _370
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if not _358:
                            _452 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_452] = 5
                            mem[_452 + 32] = 'error'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[(32 * idx) + 128] + 64] = _452
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _312 = mem[64]
    mem[mem[64]] = 32
    _313 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _313:
        mem[u] = t + -_312 - 64
        _413 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_413 + 32]
        _437 = mem[_413 + 64]
        mem[t + 64] = 96
        _454 = mem[_437]
        mem[t + 96] = mem[_437]
        v = 0
        while v < _454:
            mem[t + v + 128] = mem[_437 + v + 32]
            v = v + 32
            continue 
        if ceil32(_454) > _454:
            mem[t + _454 + 128] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_454) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
