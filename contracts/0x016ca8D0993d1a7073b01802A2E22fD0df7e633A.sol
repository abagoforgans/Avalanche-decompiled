contract main {




// =====================  Runtime code  =====================


const nativeToken = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address sub_b729cbebAddress;

function sub_b729cbeb(?) payable {
    return sub_b729cbebAddress
}

function _fallback() payable {
    revert
}

function sub_9f9c6cf7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == address(cd[36])
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _86 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_86):
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = eth.balance(cd[36])
            else:
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(_86))
                staticcall address(_86).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = mem[_95]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _93 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _93:
            _124 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_124 + 32]
            mem[t + 64] = mem[_124 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _88 + (96 * _93) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[var27001] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _149 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_149):
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = eth.balance(cd[36])
        else:
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(_149))
            staticcall address(_149).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = mem[_158]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _151 = mem[64]
    mem[mem[64]] = 32
    _156 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _156:
        _167 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_167 + 32]
        mem[t + 64] = mem[_167 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _151 + (96 * _156) + -mem[64] + 64
}

function sub_56da4705(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 64
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 161 < 160 or ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 161 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 161
    mem[160] = cd[(cd[4] + ('cd', 4).length + 4)]
    require calldata.size >= cd[4] + ('cd', 4).length + (96 * cd[(cd[4] + ('cd', 4).length + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4).length + 36
    t = 192
    while idx < cd[(cd[4] + ('cd', 4).length + 4)]:
        require calldata.size - s >= 96
        _800 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_800] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_800 + 32] = cd[(s + 32)]
        mem[_800 + 64] = cd[(s + 64)]
        mem[t] = _800
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[96] = 160
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[0] + 4)] > test266151307():
        revert with 0, 65
    _801 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 1
    mem[_801] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[0] + (96 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 36
    t = _801 + 32
    while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require calldata.size - s >= 96
        _1597 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_1597] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_1597 + 32] = cd[(s + 32)]
        mem[_1597 + 64] = cd[(s + 64)]
        mem[t] = _1597
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[128] = _801
    require cd[36] == address(cd[36])
    require cd[68] == bool(cd[68])
    require cd[100] == bool(cd[100])
    _1598 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1598] = 0
    mem[_1598 + 32] = 96
    mem[_1598 + 64] = 96
    _1599 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1599 + 32] = 96
    mem[_1599 + 64] = 96
    mem[_1599] = 1
    if not cd[68]:
        _1603 = mem[_801]
        if mem[_801] > test266151307():
            revert with 0, 65
        _1605 = mem[64]
        mem[mem[64]] = mem[_801]
        mem[64] = mem[64] + (32 * _1603) + 32
        if not _1603:
            mem[_1599 + 64] = _1605
            idx = 0
            while idx < _1603:
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                _2399 = mem[mem[(32 * idx) + mem[128] + 32] + 64]
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if cd[100]:
                    _2414 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 44 len 20]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_2414):
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _2399 > eth.balance(cd[36]):
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _2399 < eth.balance(cd[36]):
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _2399 - eth.balance(cd[36])
                    else:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(_2414))
                        staticcall address(_2414).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_2489]
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _2399 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _2399 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _2399 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
                else:
                    _2416 = mem[mem[(32 * idx) + mem[128] + 32]]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 12 len 20]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_2416):
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _2399 > eth.balance(cd[36]):
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _2399 < eth.balance(cd[36]):
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _2399 - eth.balance(cd[36])
                    else:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(_2416))
                        staticcall address(_2416).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_2492]
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _2399 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _2399 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _2399 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2412 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_1599])
            _2423 = mem[_1599 + 32]
            mem[mem[64] + 64] = 96
            _2433 = mem[_2423]
            mem[mem[64] + 128] = mem[_2423]
            idx = 0
            s = _2423 + 32
            t = mem[64] + 160
            while idx < _2433:
                _3180 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3180 + 32]
                mem[t + 64] = mem[_3180 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            _3191 = mem[_1599 + 64]
            mem[_2412 + 96] = (96 * _2433) + 128
            _3195 = mem[_3191]
            mem[_2412 + (96 * _2433) + 160] = mem[_3191]
            idx = 0
            s = _3191 + 32
            t = _2412 + (96 * _2433) + 192
            while idx < _3195:
                _3790 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3790 + 32]
                mem[t + 64] = mem[_3790 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2412 + (96 * _2433) + (96 * _3195) + -mem[64] + 192
        mem[64] = _1605 + (32 * _1603) + 128
        mem[_1605 + (32 * _1603) + 32] = 0
        mem[_1605 + (32 * _1603) + 64] = 0
        mem[_1605 + (32 * _1603) + 96] = 0
        mem[var58001] = _1605 + (32 * _1603) + 32
        s = var58001
        idx = var58002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_1605 + (32 * _1603) + 32] = 0
            mem[_1605 + (32 * _1603) + 64] = 0
            mem[_1605 + (32 * _1603) + 96] = 0
            mem[s + 32] = _1605 + (32 * _1603) + 32
            s = s + 32
            idx = idx - 1
            continue 
        mem[_1599 + 64] = _1605
        idx = 0
        while idx < _1603:
            if idx >= mem[mem[128]]:
                revert with 0, 50
            _3807 = mem[mem[(32 * idx) + mem[128] + 32] + 64]
            if idx >= mem[mem[128]]:
                revert with 0, 50
            if cd[100]:
                _3826 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                if idx >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 44 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_3826):
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _3807 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3807 < eth.balance(cd[36]):
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3807 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_3826))
                    staticcall address(_3826).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3901 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_3901]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _3807 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3807 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3807 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
            else:
                _3828 = mem[mem[(32 * idx) + mem[128] + 32]]
                if idx >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 12 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_3828):
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _3807 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3807 < eth.balance(cd[36]):
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3807 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_3828))
                    staticcall address(_3828).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3904 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_3904]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _3807 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3807 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3807 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3824 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_1599])
        _3835 = mem[_1599 + 32]
        mem[mem[64] + 64] = 96
        _3851 = mem[_3835]
        mem[mem[64] + 128] = mem[_3835]
        idx = 0
        s = _3835 + 32
        t = mem[64] + 160
        while idx < _3851:
            _4300 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4300 + 32]
            mem[t + 64] = mem[_4300 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        _4317 = mem[_1599 + 64]
        mem[_3824 + 96] = (96 * _3851) + 128
        _4323 = mem[_4317]
        mem[_3824 + (96 * _3851) + 160] = mem[_4317]
        idx = 0
        s = _4317 + 32
        t = _3824 + (96 * _3851) + 192
        while idx < _4323:
            _4620 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4620 + 32]
            mem[t + 64] = mem[_4620 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _3824 + (96 * _3851) + (96 * _4323) + -mem[64] + 192
    _1601 = mem[mem[96]]
    if mem[mem[96]] > test266151307():
        revert with 0, 65
    _1604 = mem[64]
    mem[mem[64]] = mem[mem[96]]
    mem[64] = mem[64] + (32 * _1601) + 32
    if not _1601:
        mem[_1599 + 32] = _1604
        idx = 0
        while idx < _1601:
            if idx >= mem[mem[96]]:
                revert with 0, 50
            _2401 = mem[mem[(32 * idx) + mem[96] + 32] + 64]
            if idx >= mem[mem[96]]:
                revert with 0, 50
            if cd[100]:
                _2419 = mem[mem[(32 * idx) + mem[96] + 32] + 32]
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 32] + 32]] = mem[mem[(32 * idx) + mem[96] + 32] + 44 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_2419):
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = eth.balance(cd[36])
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _2401 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        if _2401 < eth.balance(cd[36]):
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _2401 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_2419))
                    staticcall address(_2419).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = mem[_2508]
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _2401 > mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        if _2401 < mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _2401 - mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]
            else:
                _2421 = mem[mem[(32 * idx) + mem[96] + 32]]
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 32] + 32]] = mem[mem[(32 * idx) + mem[96] + 32] + 12 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_2421):
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = eth.balance(cd[36])
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _2401 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        if _2401 < eth.balance(cd[36]):
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _2401 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_2421))
                    staticcall address(_2421).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = mem[_2511]
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _2401 > mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        if _2401 < mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 32]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _2401 - mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if cd[68]:
            _2428 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_1599])
            _2439 = mem[_1599 + 32]
            mem[mem[64] + 64] = 96
            _2454 = mem[_2439]
            mem[mem[64] + 128] = mem[_2439]
            idx = 0
            s = _2439 + 32
            t = mem[64] + 160
            while idx < _2454:
                _3184 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3184 + 32]
                mem[t + 64] = mem[_3184 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            _3192 = mem[_1599 + 64]
            mem[_2428 + 96] = (96 * _2454) + 128
            _3196 = mem[_3192]
            mem[_2428 + (96 * _2454) + 160] = mem[_3192]
            idx = 0
            s = _3192 + 32
            t = _2428 + (96 * _2454) + 192
            while idx < _3196:
                _3796 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3796 + 32]
                mem[t + 64] = mem[_3796 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2428 + (96 * _2454) + (96 * _3196) + -mem[64] + 192
        _2407 = mem[mem[128]]
        if mem[mem[128]] > test266151307():
            revert with 0, 65
        _2417 = mem[64]
        mem[mem[64]] = mem[mem[128]]
        mem[64] = mem[64] + (32 * _2407) + 32
        if not _2407:
            mem[_1599 + 64] = _2417
            idx = 0
            while idx < _2407:
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                _3194 = mem[mem[(32 * idx) + mem[128] + 32] + 64]
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if cd[100]:
                    _3203 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 44 len 20]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_3203):
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3194 > eth.balance(cd[36]):
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _3194 < eth.balance(cd[36]):
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3194 - eth.balance(cd[36])
                    else:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(_3203))
                        staticcall address(_3203).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_3282]
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3194 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _3194 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3194 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
                else:
                    _3205 = mem[mem[(32 * idx) + mem[128] + 32]]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 12 len 20]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_3205):
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3194 > eth.balance(cd[36]):
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _3194 < eth.balance(cd[36]):
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3194 - eth.balance(cd[36])
                    else:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(_3205))
                        staticcall address(_3205).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3285 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_3285]
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _3194 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            mem[_1599] = 0
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            if _3194 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                                revert with 0, 17
                            if idx >= mem[mem[_1599 + 64]]:
                                revert with 0, 50
                            mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _3194 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3201 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_1599])
            _3217 = mem[_1599 + 32]
            mem[mem[64] + 64] = 96
            _3226 = mem[_3217]
            mem[mem[64] + 128] = mem[_3217]
            idx = 0
            s = _3217 + 32
            t = mem[64] + 160
            while idx < _3226:
                _3800 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3800 + 32]
                mem[t + 64] = mem[_3800 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            _3808 = mem[_1599 + 64]
            mem[_3201 + 96] = (96 * _3226) + 128
            _3817 = mem[_3808]
            mem[_3201 + (96 * _3226) + 160] = mem[_3808]
            idx = 0
            s = _3808 + 32
            t = _3201 + (96 * _3226) + 192
            while idx < _3817:
                _4304 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_4304 + 32]
                mem[t + 64] = mem[_4304 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _3201 + (96 * _3226) + (96 * _3817) + -mem[64] + 192
        mem[64] = _2417 + (32 * _2407) + 128
        mem[_2417 + (32 * _2407) + 32] = 0
        mem[_2417 + (32 * _2407) + 64] = 0
        mem[_2417 + (32 * _2407) + 96] = 0
        mem[var64001] = _2417 + (32 * _2407) + 32
        t = var64001
        s = var64002
        while s - 1:
            mem[64] = mem[64] + 96
            mem[_2417 + (32 * _2407) + 32] = 0
            mem[_2417 + (32 * _2407) + 64] = 0
            mem[_2417 + (32 * _2407) + 96] = 0
            mem[t + 32] = _2417 + (32 * _2407) + 32
            t = t + 32
            s = s - 1
            continue 
        mem[_1599 + 64] = _2417
        s = 0
        while s < _2407:
            if s >= mem[mem[128]]:
                revert with 0, 50
            _4319 = mem[mem[(32 * s) + mem[128] + 32] + 64]
            if s >= mem[mem[128]]:
                revert with 0, 50
            if cd[100]:
                _4336 = mem[mem[(32 * s) + mem[128] + 32] + 32]
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * s) + mem[_1599 + 64] + 32]] = mem[mem[(32 * s) + mem[128] + 32] + 44 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_4336):
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4319 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4319 < eth.balance(cd[36]):
                            revert with 0, 17
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4319 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_4336))
                    staticcall address(_4336).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = mem[_4409]
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4319 > mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                        mem[_1599] = 0
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4319 < mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                            revert with 0, 17
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4319 - mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]
            else:
                _4338 = mem[mem[(32 * s) + mem[128] + 32]]
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * s) + mem[_1599 + 64] + 32]] = mem[mem[(32 * s) + mem[128] + 32] + 12 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_4338):
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4319 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4319 < eth.balance(cd[36]):
                            revert with 0, 17
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4319 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_4338))
                    staticcall address(_4338).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = mem[_4412]
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4319 > mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                        mem[_1599] = 0
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4319 < mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                            revert with 0, 17
                        if s >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4319 - mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        _4334 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_1599])
        _4349 = mem[_1599 + 32]
        mem[mem[64] + 64] = 96
        _4364 = mem[_4349]
        mem[mem[64] + 128] = mem[_4349]
        s = 0
        t = _4349 + 32
        u = mem[64] + 160
        while s < _4364:
            _4624 = mem[t]
            mem[u] = mem[mem[t] + 12 len 20]
            mem[u + 32] = mem[_4624 + 32]
            mem[u + 64] = mem[_4624 + 64]
            s = s + 1
            t = t + 32
            u = u + 96
            continue 
        _4636 = mem[_1599 + 64]
        mem[_4334 + 96] = (96 * _4364) + 128
        _4639 = mem[_4636]
        mem[_4334 + (96 * _4364) + 160] = mem[_4636]
        idx = 0
        s = _4636 + 32
        t = _4334 + (96 * _4364) + 192
        while idx < _4639:
            _4749 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4749 + 32]
            mem[t + 64] = mem[_4749 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _4334 + (96 * _4364) + (96 * _4639) + -mem[64] + 192
    mem[64] = _1604 + (32 * _1601) + 128
    mem[_1604 + (32 * _1601) + 32] = 0
    mem[_1604 + (32 * _1601) + 64] = 0
    mem[_1604 + (32 * _1601) + 96] = 0
    mem[var57001] = _1604 + (32 * _1601) + 32
    s = var57001
    idx = var57002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_1604 + (32 * _1601) + 32] = 0
        mem[_1604 + (32 * _1601) + 64] = 0
        mem[_1604 + (32 * _1601) + 96] = 0
        mem[s + 32] = _1604 + (32 * _1601) + 32
        s = s + 32
        idx = idx - 1
        continue 
    mem[_1599 + 32] = _1604
    idx = 0
    while idx < _1601:
        if idx >= mem[mem[96]]:
            revert with 0, 50
        _3810 = mem[mem[(32 * idx) + mem[96] + 32] + 64]
        if idx >= mem[mem[96]]:
            revert with 0, 50
        if cd[100]:
            _3831 = mem[mem[(32 * idx) + mem[96] + 32] + 32]
            if idx >= mem[mem[_1599 + 32]]:
                revert with 0, 50
            mem[mem[(32 * idx) + mem[_1599 + 32] + 32]] = mem[mem[(32 * idx) + mem[96] + 32] + 44 len 20]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_3831):
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = eth.balance(cd[36])
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                if _3810 > eth.balance(cd[36]):
                    mem[_1599] = 0
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _3810 < eth.balance(cd[36]):
                        revert with 0, 17
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _3810 - eth.balance(cd[36])
            else:
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(_3831))
                staticcall address(_3831).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3921 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = mem[_3921]
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                if _3810 > mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                    mem[_1599] = 0
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _3810 < mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                        revert with 0, 17
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _3810 - mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]
        else:
            _3833 = mem[mem[(32 * idx) + mem[96] + 32]]
            if idx >= mem[mem[_1599 + 32]]:
                revert with 0, 50
            mem[mem[(32 * idx) + mem[_1599 + 32] + 32]] = mem[mem[(32 * idx) + mem[96] + 32] + 12 len 20]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_3833):
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = eth.balance(cd[36])
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                if _3810 > eth.balance(cd[36]):
                    mem[_1599] = 0
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _3810 < eth.balance(cd[36]):
                        revert with 0, 17
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _3810 - eth.balance(cd[36])
            else:
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(_3833))
                staticcall address(_3833).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3924 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32] = mem[_3924]
                if idx >= mem[mem[_1599 + 32]]:
                    revert with 0, 50
                if _3810 > mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                    mem[_1599] = 0
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    if _3810 < mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]:
                        revert with 0, 17
                    if idx >= mem[mem[_1599 + 32]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 64] = _3810 - mem[mem[(32 * idx) + mem[_1599 + 32] + 32] + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if cd[68]:
        _3846 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_1599])
        _3857 = mem[_1599 + 32]
        mem[mem[64] + 64] = 96
        _3873 = mem[_3857]
        mem[mem[64] + 128] = mem[_3857]
        idx = 0
        s = _3857 + 32
        t = mem[64] + 160
        while idx < _3873:
            _4310 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4310 + 32]
            mem[t + 64] = mem[_4310 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        _4320 = mem[_1599 + 64]
        mem[_3846 + 96] = (96 * _3873) + 128
        _4329 = mem[_4320]
        mem[_3846 + (96 * _3873) + 160] = mem[_4320]
        idx = 0
        s = _4320 + 32
        t = _3846 + (96 * _3873) + 192
        while idx < _4329:
            _4628 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4628 + 32]
            mem[t + 64] = mem[_4628 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _3846 + (96 * _3873) + (96 * _4329) + -mem[64] + 192
    _3819 = mem[mem[128]]
    if mem[mem[128]] > test266151307():
        revert with 0, 65
    _3829 = mem[64]
    mem[mem[64]] = mem[mem[128]]
    mem[64] = mem[64] + (32 * _3819) + 32
    if not _3819:
        mem[_1599 + 64] = _3829
        idx = 0
        while idx < _3819:
            if idx >= mem[mem[128]]:
                revert with 0, 50
            _4322 = mem[mem[(32 * idx) + mem[128] + 32] + 64]
            if idx >= mem[mem[128]]:
                revert with 0, 50
            if cd[100]:
                _4341 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                if idx >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 44 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_4341):
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4322 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4322 < eth.balance(cd[36]):
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _4322 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_4341))
                    staticcall address(_4341).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4416 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_4416]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4322 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4322 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _4322 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
            else:
                _4343 = mem[mem[(32 * idx) + mem[128] + 32]]
                if idx >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * idx) + mem[_1599 + 64] + 32]] = mem[mem[(32 * idx) + mem[128] + 32] + 12 len 20]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_4343):
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4322 > eth.balance(cd[36]):
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4322 < eth.balance(cd[36]):
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _4322 - eth.balance(cd[36])
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(address(_4343))
                    staticcall address(_4343).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32] = mem[_4419]
                    if idx >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4322 > mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                        mem[_1599] = 0
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        if _4322 < mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]:
                            revert with 0, 17
                        if idx >= mem[mem[_1599 + 64]]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 64] = _4322 - mem[mem[(32 * idx) + mem[_1599 + 64] + 32] + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _4339 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_1599])
        _4359 = mem[_1599 + 32]
        mem[mem[64] + 64] = 96
        _4367 = mem[_4359]
        mem[mem[64] + 128] = mem[_4359]
        idx = 0
        s = _4359 + 32
        t = mem[64] + 160
        while idx < _4367:
            _4632 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4632 + 32]
            mem[t + 64] = mem[_4632 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        _4637 = mem[_1599 + 64]
        mem[_4339 + 96] = (96 * _4367) + 128
        _4641 = mem[_4637]
        mem[_4339 + (96 * _4367) + 160] = mem[_4637]
        idx = 0
        s = _4637 + 32
        t = _4339 + (96 * _4367) + 192
        while idx < _4641:
            _4753 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4753 + 32]
            mem[t + 64] = mem[_4753 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _4339 + (96 * _4367) + (96 * _4641) + -mem[64] + 192
    mem[64] = _3829 + (32 * _3819) + 128
    mem[_3829 + (32 * _3819) + 32] = 0
    mem[_3829 + (32 * _3819) + 64] = 0
    mem[_3829 + (32 * _3819) + 96] = 0
    mem[var71001] = _3829 + (32 * _3819) + 32
    t = var71001
    s = var71002
    while s - 1:
        mem[64] = mem[64] + 96
        mem[_3829 + (32 * _3819) + 32] = 0
        mem[_3829 + (32 * _3819) + 64] = 0
        mem[_3829 + (32 * _3819) + 96] = 0
        mem[t + 32] = _3829 + (32 * _3819) + 32
        t = t + 32
        s = s - 1
        continue 
    mem[_1599 + 64] = _3829
    s = 0
    while s < _3819:
        if s >= mem[mem[128]]:
            revert with 0, 50
        _4760 = mem[mem[(32 * s) + mem[128] + 32] + 64]
        if s >= mem[mem[128]]:
            revert with 0, 50
        if cd[100]:
            _4769 = mem[mem[(32 * s) + mem[128] + 32] + 32]
            if s >= mem[mem[_1599 + 64]]:
                revert with 0, 50
            mem[mem[(32 * s) + mem[_1599 + 64] + 32]] = mem[mem[(32 * s) + mem[128] + 32] + 44 len 20]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_4769):
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                if _4760 > eth.balance(cd[36]):
                    mem[_1599] = 0
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4760 < eth.balance(cd[36]):
                        revert with 0, 17
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4760 - eth.balance(cd[36])
            else:
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(_4769))
                staticcall address(_4769).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4796 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = mem[_4796]
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                if _4760 > mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                    mem[_1599] = 0
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4760 < mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                        revert with 0, 17
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4760 - mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]
        else:
            _4771 = mem[mem[(32 * s) + mem[128] + 32]]
            if s >= mem[mem[_1599 + 64]]:
                revert with 0, 50
            mem[mem[(32 * s) + mem[_1599 + 64] + 32]] = mem[mem[(32 * s) + mem[128] + 32] + 12 len 20]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(_4771):
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = eth.balance(cd[36])
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                if _4760 > eth.balance(cd[36]):
                    mem[_1599] = 0
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4760 < eth.balance(cd[36]):
                        revert with 0, 17
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4760 - eth.balance(cd[36])
            else:
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(_4771))
                staticcall address(_4771).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32] = mem[_4799]
                if s >= mem[mem[_1599 + 64]]:
                    revert with 0, 50
                if _4760 > mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                    mem[_1599] = 0
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    if _4760 < mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]:
                        revert with 0, 17
                    if s >= mem[mem[_1599 + 64]]:
                        revert with 0, 50
                    mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 64] = _4760 - mem[mem[(32 * s) + mem[_1599 + 64] + 32] + 32]
        if s == -1:
            revert with 0, 17
        s = s + 1
        continue 
    _4767 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = bool(mem[_1599])
    _4773 = mem[_1599 + 32]
    mem[mem[64] + 64] = 96
    _4778 = mem[_4773]
    mem[mem[64] + 128] = mem[_4773]
    s = 0
    t = _4773 + 32
    u = mem[64] + 160
    while s < _4778:
        _4856 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        mem[u + 32] = mem[_4856 + 32]
        mem[u + 64] = mem[_4856 + 64]
        s = s + 1
        t = t + 32
        u = u + 96
        continue 
    _4860 = mem[_1599 + 64]
    mem[_4767 + 96] = (96 * _4778) + 128
    _4861 = mem[_4860]
    mem[_4767 + (96 * _4778) + 160] = mem[_4860]
    idx = 0
    s = _4860 + 32
    t = _4767 + (96 * _4778) + 192
    while idx < _4861:
        _4867 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_4867 + 32]
        mem[t + 64] = mem[_4867 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _4767 + (96 * _4778) + (96 * _4861) + -mem[64] + 192
}



}
