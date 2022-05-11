contract main {




// =====================  Runtime code  =====================


#
#  - sub_37b0df58(?)
#
const sub_5f9d4d2e(?) = 0x65285e9dfab318f57051ab2b139cccf232945451

const sub_dac4e0e9(?) = 0x65285e9dfab318f57051ab2b139cccf232945451

const aaveLendingAddr = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c


address stor1;

function sub_5ccaebad(?) {
    mem[96] = 0x7e92807200000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.getRoutes() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 30 len 2]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _5 > test266151307():
        revert with 0, 65
    _40 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _74 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 158 len 2]
            require ext_code.size(stor1)
            staticcall stor1.0x426bfa4d with:
                    gas gas_remaining wei
                   args (_74 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_40]:
                revert with 0, 50
            mem[(32 * idx) + _40 + 32] = mem[_83]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 64
        _81 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _81:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_73 + 32] = (32 * _81) + 96
        _99 = mem[_40]
        mem[_73 + (32 * _81) + 96] = mem[_40]
        s = 0
        s = _40 + 32
        t = _73 + (32 * _81) + 128
        while _5 < _99:
            mem[t] = mem[s]
            s = _5 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[_40 + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _77 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 158 len 2]
            require ext_code.size(stor1)
            staticcall stor1.0x426bfa4d with:
                    gas gas_remaining wei
                   args (_77 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_40]:
                revert with 0, 50
            mem[(32 * idx) + _40 + 32] = mem[_84]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _76 = mem[64]
        mem[mem[64]] = 64
        _82 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _82:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_76 + 32] = (32 * _82) + 96
        _100 = mem[_40]
        mem[_76 + (32 * _82) + 96] = mem[_40]
        s = 0
        s = _40 + 32
        t = _76 + (32 * _82) + 128
        while _5 < _100:
            mem[t] = mem[s]
            s = _5 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_1f3f6ff9(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'array-lengths-not-same'
    if var53001 < 1:
        revert with 0, 17
    if var57002 < var57001:
        if var85001 < var59001:
            revert with 0, 17
        if var91001 < 1:
            revert with 0, 17
        if var95002 >= var95001:
            if var77001 == -1:
                revert with 0, 17
            # nil
        else:
            if 1 > !var99002:
                revert with 0, 17
            if var103001 >= ('cd', 4).length:
                revert with 0, 50
            if var103003 >= ('cd', 4).length:
                revert with 0, 50
            if mem[(32 * var103003) + 140 len 20] <= mem[(32 * var103001) + 140 len 20]:
                if var103003 == -1:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var103003:
                    revert with 0, 17
                if var103003 + 1 >= ('cd', 4).length:
                    revert with 0, 50
                if var103003 >= ('cd', 4).length:
                    revert with 0, 50
                if 1 > !var103003:
                    revert with 0, 17
                if var103003 + 1 >= ('cd', 36).length:
                    revert with 0, 50
                if var103003 >= ('cd', 36).length:
                    revert with 0, 50
                if var103003 >= ('cd', 4).length:
                    revert with 0, 50
                if 1 > !var103003:
                    revert with 0, 17
                if var103003 + 1 >= ('cd', 4).length:
                    revert with 0, 50
                if var103003 >= ('cd', 36).length:
                    revert with 0, 50
                if 1 > !var103003:
                    revert with 0, 17
                if var103003 + 1 >= ('cd', 36).length:
                    revert with 0, 50
                if var103003 == -1:
                    revert with 0, 17
                # nil
    else:
        if var62001 < 1:
            revert with 0, 17
        if var66002 < var66001:
            if 1 > !var70002:
                revert with 0, 17
            idx = var72003 + 1
            s = var72006
            while idx < ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                if mem[(32 * s) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'non-unique-tokens'
                if s == -1:
                    revert with 0, 17
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if s + 1 < ('cd', 4).length - 1:
                    if 1 > !(s + 1):
                        revert with 0, 17
                    idx = s + 2
                    s = s + 1
                    continue 
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.getRoutes() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _2819 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 129
                _2826 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
                require _2819 + (32 * _2826) + 32 <= return_data.size
                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _2819 + 130
                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130
                idx = 0
                while idx < _2826:
                    require mem[s] == mem[s + 30 len 2]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _3231 = mem[64]
                mem[mem[64]] = 7
                mem[64] = mem[64] + 256
                mem[_3231 + 32 len 224] = call.data[calldata.size len 224]
                idx = 0
                while idx < _2826:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2] != 1:
                        revert with 0, 'invalid-route'
                    _4056 = mem[96]
                    s = 0
                    while s < _4056:
                        if s >= mem[96]:
                            revert with 0, 50
                        _4065 = mem[(32 * s) + 128]
                        if s >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * s) + 128])
                        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4095 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 320
                        require mem[_4095 + 160] == bool(mem[_4095 + 160])
                        require mem[_4095 + 192] == bool(mem[_4095 + 192])
                        require mem[_4095 + 224] == bool(mem[_4095 + 224])
                        _4157 = mem[_4095 + 256]
                        require mem[_4095 + 256] == bool(mem[_4095 + 256])
                        require mem[_4095 + 288] == bool(mem[_4095 + 288])
                        if s >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * s) + 128])
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _4187 = mem[_4181]
                        require mem[_4181] == mem[_4181 + 12 len 20]
                        require mem[_4181 + 32] == mem[_4181 + 44 len 20]
                        require mem[_4181 + 64] == mem[_4181 + 76 len 20]
                        if _4157:
                            if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _4237 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = mem[_4181 + 12 len 20]
                            require ext_code.size(address(_4065))
                            staticcall address(_4065).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_4187)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4248 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4248] >= _4237:
                                if s == -1:
                                    revert with 0, 17
                                _4056 = mem[96]
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        _4056 = mem[96]
                        idx = idx + 1
                        continue 
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                        revert with 0, 50
                    if 0 >= mem[_3231]:
                        revert with 0, 50
                    mem[_3231 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3645 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] > test266151307():
                    revert with 0, 65
                _3648 = mem[64]
                mem[mem[64]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
                mem[64] = mem[64] + (32 * _3645) + 32
                if not _3645:
                    _4054 = mem[_3231]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < _4054:
                        if idx >= mem[_3231]:
                            revert with 0, 50
                        if 0 == mem[(32 * idx) + _3231 + 62 len 2]:
                            if idx == -1:
                                revert with 0, 17
                            _4054 = mem[_3231]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_3231]:
                            revert with 0, 50
                        _4075 = mem[(32 * idx) + _3231 + 32]
                        mem[mem[64] + 4] = mem[(32 * idx) + _3231 + 62 len 2]
                        require ext_code.size(stor1)
                        staticcall stor1.0x426bfa4d with:
                                gas gas_remaining wei
                               args (_4075 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4117 = mem[_4099]
                        if t > mem[_4099]:
                            if idx >= mem[_3231]:
                                revert with 0, 50
                            if 0 >= mem[_3648]:
                                revert with 0, 50
                            mem[_3648 + 32] = mem[(32 * idx) + _3231 + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            _4054 = mem[_3231]
                            idx = idx + 1
                            s = 1
                            t = _4117
                            continue 
                        if t != mem[_4099]:
                            if idx == -1:
                                revert with 0, 17
                            _4054 = mem[_3231]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_3231]:
                            revert with 0, 50
                        if uint16(s) >= mem[_3648]:
                            revert with 0, 50
                        mem[(32 * uint16(s)) + _3648 + 32] = mem[(32 * idx) + _3231 + 62 len 2]
                        if uint16(s) == 65535:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        _4054 = mem[_3231]
                        idx = idx + 1
                        s = uint16(s) + 1
                        t = t
                        continue 
                    if uint16(s) > test266151307():
                        revert with 0, 65
                    _4061 = mem[64]
                    mem[mem[64]] = uint16(s)
                    mem[64] = mem[64] + (32 * uint16(s)) + 32
                    if not uint16(s):
                        u = 0
                        while u < uint16(s):
                            if u >= mem[_3648]:
                                revert with 0, 50
                            if u >= mem[_4061]:
                                revert with 0, 50
                            mem[(32 * u) + _4061 + 32] = mem[(32 * u) + _3648 + 62 len 2]
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            continue 
                        _4486 = mem[64]
                        mem[mem[64]] = 64
                        _4499 = mem[_4061]
                        mem[mem[64] + 64] = mem[_4061]
                        idx = 0
                        s = _4061 + 32
                        u = mem[64] + 96
                        while idx < _4499:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_4486 + 32] = t
                        return memory
                          from mem[64]
                           len _4486 + (32 * _4499) + -mem[64] + 96
                    mem[_4061 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_3648]:
                            revert with 0, 50
                        if u >= mem[_4061]:
                            revert with 0, 50
                        mem[(32 * u) + _4061 + 32] = mem[(32 * u) + _3648 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _4489 = mem[64]
                    mem[mem[64]] = 64
                    _4500 = mem[_4061]
                    mem[mem[64] + 64] = mem[_4061]
                    idx = 0
                    s = _4061 + 32
                    u = mem[64] + 96
                    while idx < _4500:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_4489 + 32] = t
                    return memory
                      from mem[64]
                       len _4489 + (32 * _4500) + -mem[64] + 96
                mem[_3648 + 32 len 32 * _3645] = call.data[calldata.size len 32 * _3645]
                _4055 = mem[_3231]
                idx = 0
                s = 0
                t = -1
                while idx < _4055:
                    if idx >= mem[_3231]:
                        revert with 0, 50
                    if 0 == mem[(32 * idx) + _3231 + 62 len 2]:
                        if idx == -1:
                            revert with 0, 17
                        _4055 = mem[_3231]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_3231]:
                        revert with 0, 50
                    _4077 = mem[(32 * idx) + _3231 + 32]
                    mem[mem[64] + 4] = mem[(32 * idx) + _3231 + 62 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_4077 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4119 = mem[_4103]
                    if t > mem[_4103]:
                        if idx >= mem[_3231]:
                            revert with 0, 50
                        if 0 >= mem[_3648]:
                            revert with 0, 50
                        mem[_3648 + 32] = mem[(32 * idx) + _3231 + 62 len 2]
                        if idx == -1:
                            revert with 0, 17
                        _4055 = mem[_3231]
                        idx = idx + 1
                        s = 1
                        t = _4119
                        continue 
                    if t != mem[_4103]:
                        if idx == -1:
                            revert with 0, 17
                        _4055 = mem[_3231]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_3231]:
                        revert with 0, 50
                    if uint16(s) >= mem[_3648]:
                        revert with 0, 50
                    mem[(32 * uint16(s)) + _3648 + 32] = mem[(32 * idx) + _3231 + 62 len 2]
                    if uint16(s) == 65535:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _4055 = mem[_3231]
                    idx = idx + 1
                    s = uint16(s) + 1
                    t = t
                    continue 
                if uint16(s) > test266151307():
                    revert with 0, 65
                _4063 = mem[64]
                mem[mem[64]] = uint16(s)
                mem[64] = mem[64] + (32 * uint16(s)) + 32
                if not uint16(s):
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_3648]:
                            revert with 0, 50
                        if u >= mem[_4063]:
                            revert with 0, 50
                        mem[(32 * u) + _4063 + 32] = mem[(32 * u) + _3648 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _4492 = mem[64]
                    mem[mem[64]] = 64
                    _4501 = mem[_4063]
                    mem[mem[64] + 64] = mem[_4063]
                    idx = 0
                    s = _4063 + 32
                    u = mem[64] + 96
                    while idx < _4501:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_4492 + 32] = t
                    return memory
                      from mem[64]
                       len _4492 + (32 * _4501) + -mem[64] + 96
                mem[_4063 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                u = 0
                while u < uint16(s):
                    if u >= mem[_3648]:
                        revert with 0, 50
                    if u >= mem[_4063]:
                        revert with 0, 50
                    mem[(32 * u) + _4063 + 32] = mem[(32 * u) + _3648 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _4495 = mem[64]
                mem[mem[64]] = 64
                _4502 = mem[_4063]
                mem[mem[64] + 64] = mem[_4063]
                idx = 0
                s = _4063 + 32
                u = mem[64] + 96
                while idx < _4502:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_4495 + 32] = t
                return memory
                  from mem[64]
                   len _4495 + (32 * _4502) + -mem[64] + 96
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x7e92807200000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.getRoutes() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1567 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 129
        _1570 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]) + 99
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 98]
        require _1567 + (32 * _1570) + 32 <= return_data.size
        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _1567 + 130
        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130
        idx = 0
        while idx < _1570:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _1866 = mem[64]
        mem[mem[64]] = 7
        mem[64] = mem[64] + 256
        mem[_1866 + 32 len 224] = call.data[calldata.size len 224]
        idx = 0
        while idx < _1570:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2] != 1:
                revert with 0, 'invalid-route'
            _2461 = mem[96]
            s = 0
            while s < _2461:
                if s >= mem[96]:
                    revert with 0, 50
                _2470 = mem[(32 * s) + 128]
                if s >= mem[96]:
                    revert with 0, 50
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * s) + 128])
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                require mem[_2502 + 160] == bool(mem[_2502 + 160])
                require mem[_2502 + 192] == bool(mem[_2502 + 192])
                require mem[_2502 + 224] == bool(mem[_2502 + 224])
                _2564 = mem[_2502 + 256]
                require mem[_2502 + 256] == bool(mem[_2502 + 256])
                require mem[_2502 + 288] == bool(mem[_2502 + 288])
                if s >= mem[96]:
                    revert with 0, 50
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * s) + 128])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2591 = mem[_2588]
                require mem[_2588] == mem[_2588 + 12 len 20]
                require mem[_2588 + 32] == mem[_2588 + 44 len 20]
                require mem[_2588 + 64] == mem[_2588 + 76 len 20]
                if _2564:
                    if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _2640 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 4] = mem[_2588 + 12 len 20]
                    require ext_code.size(address(_2470))
                    staticcall address(_2470).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_2591)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2656 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2656] >= _2640:
                        if s == -1:
                            revert with 0, 17
                        _2461 = mem[96]
                        s = s + 1
                        continue 
                if idx == -1:
                    revert with 0, 17
                _2461 = mem[96]
                idx = idx + 1
                continue 
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]:
                revert with 0, 50
            if 0 >= mem[_1866]:
                revert with 0, 50
            mem[_1866 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 2]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] > test266151307():
            revert with 0, 65
        _2168 = mem[64]
        mem[mem[64]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98]
        mem[64] = mem[64] + (32 * _2165) + 32
        if not _2165:
            _2459 = mem[_1866]
            idx = 0
            s = 0
            t = -1
            while idx < _2459:
                if idx >= mem[_1866]:
                    revert with 0, 50
                if 0 == mem[(32 * idx) + _1866 + 62 len 2]:
                    if idx == -1:
                        revert with 0, 17
                    _2459 = mem[_1866]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[_1866]:
                    revert with 0, 50
                _2479 = mem[(32 * idx) + _1866 + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + _1866 + 62 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x426bfa4d with:
                        gas gas_remaining wei
                       args (_2479 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2524 = mem[_2509]
                if t > mem[_2509]:
                    if idx >= mem[_1866]:
                        revert with 0, 50
                    if 0 >= mem[_2168]:
                        revert with 0, 50
                    mem[_2168 + 32] = mem[(32 * idx) + _1866 + 62 len 2]
                    if idx == -1:
                        revert with 0, 17
                    _2459 = mem[_1866]
                    idx = idx + 1
                    s = 1
                    t = _2524
                    continue 
                if t != mem[_2509]:
                    if idx == -1:
                        revert with 0, 17
                    _2459 = mem[_1866]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[_1866]:
                    revert with 0, 50
                if uint16(s) >= mem[_2168]:
                    revert with 0, 50
                mem[(32 * uint16(s)) + _2168 + 32] = mem[(32 * idx) + _1866 + 62 len 2]
                if uint16(s) == 65535:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _2459 = mem[_1866]
                idx = idx + 1
                s = uint16(s) + 1
                t = t
                continue 
            if uint16(s) > test266151307():
                revert with 0, 65
            _2466 = mem[64]
            mem[mem[64]] = uint16(s)
            mem[64] = mem[64] + (32 * uint16(s)) + 32
            if not uint16(s):
                u = 0
                while u < uint16(s):
                    if u >= mem[_2168]:
                        revert with 0, 50
                    if u >= mem[_2466]:
                        revert with 0, 50
                    mem[(32 * u) + _2466 + 32] = mem[(32 * u) + _2168 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _2775 = mem[64]
                mem[mem[64]] = 64
                _2789 = mem[_2466]
                mem[mem[64] + 64] = mem[_2466]
                idx = 0
                s = _2466 + 32
                u = mem[64] + 96
                while idx < _2789:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_2775 + 32] = t
                return memory
                  from mem[64]
                   len _2775 + (32 * _2789) + -mem[64] + 96
            mem[_2466 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
            u = 0
            while u < uint16(s):
                if u >= mem[_2168]:
                    revert with 0, 50
                if u >= mem[_2466]:
                    revert with 0, 50
                mem[(32 * u) + _2466 + 32] = mem[(32 * u) + _2168 + 62 len 2]
                if u == -1:
                    revert with 0, 17
                u = u + 1
                continue 
            _2778 = mem[64]
            mem[mem[64]] = 64
            _2790 = mem[_2466]
            mem[mem[64] + 64] = mem[_2466]
            idx = 0
            s = _2466 + 32
            u = mem[64] + 96
            while idx < _2790:
                mem[u] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_2778 + 32] = t
            return memory
              from mem[64]
               len _2778 + (32 * _2790) + -mem[64] + 96
        mem[_2168 + 32 len 32 * _2165] = call.data[calldata.size len 32 * _2165]
        _2460 = mem[_1866]
        idx = 0
        s = 0
        t = -1
        while idx < _2460:
            if idx >= mem[_1866]:
                revert with 0, 50
            if 0 == mem[(32 * idx) + _1866 + 62 len 2]:
                if idx == -1:
                    revert with 0, 17
                _2460 = mem[_1866]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_1866]:
                revert with 0, 50
            _2481 = mem[(32 * idx) + _1866 + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _1866 + 62 len 2]
            require ext_code.size(stor1)
            staticcall stor1.0x426bfa4d with:
                    gas gas_remaining wei
                   args (_2481 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2526 = mem[_2513]
            if t > mem[_2513]:
                if idx >= mem[_1866]:
                    revert with 0, 50
                if 0 >= mem[_2168]:
                    revert with 0, 50
                mem[_2168 + 32] = mem[(32 * idx) + _1866 + 62 len 2]
                if idx == -1:
                    revert with 0, 17
                _2460 = mem[_1866]
                idx = idx + 1
                s = 1
                t = _2526
                continue 
            if t != mem[_2513]:
                if idx == -1:
                    revert with 0, 17
                _2460 = mem[_1866]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_1866]:
                revert with 0, 50
            if uint16(s) >= mem[_2168]:
                revert with 0, 50
            mem[(32 * uint16(s)) + _2168 + 32] = mem[(32 * idx) + _1866 + 62 len 2]
            if uint16(s) == 65535:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _2460 = mem[_1866]
            idx = idx + 1
            s = uint16(s) + 1
            t = t
            continue 
        if uint16(s) > test266151307():
            revert with 0, 65
        _2468 = mem[64]
        mem[mem[64]] = uint16(s)
        mem[64] = mem[64] + (32 * uint16(s)) + 32
        if not uint16(s):
            u = 0
            while u < uint16(s):
                if u >= mem[_2168]:
                    revert with 0, 50
                if u >= mem[_2468]:
                    revert with 0, 50
                mem[(32 * u) + _2468 + 32] = mem[(32 * u) + _2168 + 62 len 2]
                if u == -1:
                    revert with 0, 17
                u = u + 1
                continue 
            _2781 = mem[64]
            mem[mem[64]] = 64
            _2791 = mem[_2468]
            mem[mem[64] + 64] = mem[_2468]
            idx = 0
            s = _2468 + 32
            u = mem[64] + 96
            while idx < _2791:
                mem[u] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_2781 + 32] = t
            return memory
              from mem[64]
               len _2781 + (32 * _2791) + -mem[64] + 96
        mem[_2468 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
        u = 0
        while u < uint16(s):
            if u >= mem[_2168]:
                revert with 0, 50
            if u >= mem[_2468]:
                revert with 0, 50
            mem[(32 * u) + _2468 + 32] = mem[(32 * u) + _2168 + 62 len 2]
            if u == -1:
                revert with 0, 17
            u = u + 1
            continue 
        _2784 = mem[64]
        mem[mem[64]] = 64
        _2792 = mem[_2468]
        mem[mem[64] + 64] = mem[_2468]
        idx = 0
        s = _2468 + 32
        u = mem[64] + 96
        while idx < _2792:
            mem[u] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_2784 + 32] = t
        return memory
          from mem[64]
           len _2784 + (32 * _2792) + -mem[64] + 96
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x5f9d4d2e(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x5f9d4d2e(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 0x65285e9dfab318f57051ab2b139cccf232945451
        if unknown_0xdac4e0e9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 0x65285e9dfab318f57051ab2b139cccf232945451
        require unknown_0xf3365153(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        return 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
    if unknown_0x1f3f6ff9(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
            revert with 0, 65
        mem[128] = ('cd', 4).length
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        s = cd[4] + 36
        t = 160
        idx = 0
        while idx < ('cd', 4).length:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        idx = 0
        s = cd[36] + 36
        t = ceil32(32 * ('cd', 4).length) + 161
        while idx < ('cd', 36).length:
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'array-lengths-not-same'
        if var56001 < 1:
            revert with 0, 17
        if var60002 < var60001:
            if var88001 < var62001:
                revert with 0, 17
            if var94001 < 1:
                revert with 0, 17
            if var98002 >= var98001:
                if var80001 == -1:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var102002:
                    revert with 0, 17
                if var106001 >= ('cd', 4).length:
                    revert with 0, 50
                if var106003 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[(32 * var106003) + 172 len 20] <= mem[(32 * var106001) + 172 len 20]:
                    if var106003 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var106003:
                        revert with 0, 17
                    if var106003 + 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if var106003 >= ('cd', 4).length:
                        revert with 0, 50
                    if 1 > !var106003:
                        revert with 0, 17
                    if var106003 + 1 >= ('cd', 36).length:
                        revert with 0, 50
                    if var106003 >= ('cd', 36).length:
                        revert with 0, 50
                    if var106003 >= ('cd', 4).length:
                        revert with 0, 50
                    if 1 > !var106003:
                        revert with 0, 17
                    if var106003 + 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if var106003 >= ('cd', 36).length:
                        revert with 0, 50
                    if 1 > !var106003:
                        revert with 0, 17
                    if var106003 + 1 >= ('cd', 36).length:
                        revert with 0, 50
                    if var106003 == -1:
                        revert with 0, 17
                    # nil
        else:
            if var65001 < 1:
                revert with 0, 17
            if var69002 < var69001:
                if 1 > !var73002:
                    revert with 0, 17
                idx = var75003 + 1
                s = var75006
                while idx < ('cd', 4).length:
                    if s >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[(32 * s) + 172 len 20] == mem[(32 * idx) + 172 len 20]:
                        revert with 0, 'non-unique-tokens'
                    if s == -1:
                        revert with 0, 17
                    if ('cd', 4).length < 1:
                        revert with 0, 17
                    if s + 1 < ('cd', 4).length - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor1)
                    staticcall stor1.getRoutes() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _8330 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] <= test266151307()
                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 161
                    _8357 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 131 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 131
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]
                    require _8330 + (32 * _8357) + 32 <= return_data.size
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _8330 + 162
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                    idx = 0
                    while idx < _8357:
                        require mem[s] == mem[s + 30 len 2]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    _9274 = mem[64]
                    mem[mem[64]] = 7
                    mem[64] = mem[64] + 256
                    mem[_9274 + 32 len 224] = call.data[calldata.size len 224]
                    idx = 0
                    while idx < _8357:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 192 len 2] != 1:
                            revert with 0, 'invalid-route'
                        _11755 = mem[128]
                        s = 0
                        while s < _11755:
                            if s >= mem[128]:
                                revert with 0, 50
                            _11774 = mem[(32 * s) + 160]
                            if s >= mem[128]:
                                revert with 0, 50
                            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * s) + 160])
                            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11836 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 320
                            require mem[_11836 + 160] == bool(mem[_11836 + 160])
                            require mem[_11836 + 192] == bool(mem[_11836 + 192])
                            require mem[_11836 + 224] == bool(mem[_11836 + 224])
                            _12032 = mem[_11836 + 256]
                            require mem[_11836 + 256] == bool(mem[_11836 + 256])
                            require mem[_11836 + 288] == bool(mem[_11836 + 288])
                            if s >= mem[128]:
                                revert with 0, 50
                            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * s) + 160])
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _12168 = mem[_12156]
                            require mem[_12156] == mem[_12156 + 12 len 20]
                            require mem[_12156 + 32] == mem[_12156 + 44 len 20]
                            require mem[_12156 + 64] == mem[_12156 + 76 len 20]
                            if _12032:
                                if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                    revert with 0, 50
                                _12314 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[mem[64] + 4] = mem[_12156 + 12 len 20]
                                require ext_code.size(address(_11774))
                                staticcall address(_11774).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_12168)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12351 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12351] >= _12314:
                                    if s == -1:
                                        revert with 0, 17
                                    _11755 = mem[128]
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 0, 17
                            _11755 = mem[128]
                            idx = idx + 1
                            continue 
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]:
                            revert with 0, 50
                        if 0 >= mem[_9274]:
                            revert with 0, 50
                        mem[_9274 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 192 len 2]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _10354 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] > test266151307():
                        revert with 0, 65
                    _10375 = mem[64]
                    mem[mem[64]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    mem[64] = mem[64] + (32 * _10354) + 32
                    if not _10354:
                        _11753 = mem[_9274]
                        idx = 0
                        s = 0
                        t = -1
                        while idx < _11753:
                            if idx >= mem[_9274]:
                                revert with 0, 50
                            if 0 == mem[(32 * idx) + _9274 + 62 len 2]:
                                if idx == -1:
                                    revert with 0, 17
                                _11753 = mem[_9274]
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if idx >= mem[_9274]:
                                revert with 0, 50
                            _11796 = mem[(32 * idx) + _9274 + 32]
                            mem[mem[64] + 4] = mem[(32 * idx) + _9274 + 62 len 2]
                            require ext_code.size(stor1)
                            staticcall stor1.0x426bfa4d with:
                                    gas gas_remaining wei
                                   args (_11796 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11876 = mem[_11844]
                            if t > mem[_11844]:
                                if idx >= mem[_9274]:
                                    revert with 0, 50
                                if 0 >= mem[_10375]:
                                    revert with 0, 50
                                mem[_10375 + 32] = mem[(32 * idx) + _9274 + 62 len 2]
                                if idx == -1:
                                    revert with 0, 17
                                _11753 = mem[_9274]
                                idx = idx + 1
                                s = 1
                                t = _11876
                                continue 
                            if t != mem[_11844]:
                                if idx == -1:
                                    revert with 0, 17
                                _11753 = mem[_9274]
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if idx >= mem[_9274]:
                                revert with 0, 50
                            if uint16(s) >= mem[_10375]:
                                revert with 0, 50
                            mem[(32 * uint16(s)) + _10375 + 32] = mem[(32 * idx) + _9274 + 62 len 2]
                            if uint16(s) == 65535:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            _11753 = mem[_9274]
                            idx = idx + 1
                            s = uint16(s) + 1
                            t = t
                            continue 
                        if uint16(s) > test266151307():
                            revert with 0, 65
                        _11770 = mem[64]
                        mem[mem[64]] = uint16(s)
                        mem[64] = mem[64] + (32 * uint16(s)) + 32
                        if not uint16(s):
                            u = 0
                            while u < uint16(s):
                                if u >= mem[_10375]:
                                    revert with 0, 50
                                if u >= mem[_11770]:
                                    revert with 0, 50
                                mem[(32 * u) + _11770 + 32] = mem[(32 * u) + _10375 + 62 len 2]
                                if u == -1:
                                    revert with 0, 17
                                u = u + 1
                                continue 
                            _13135 = mem[64]
                            mem[mem[64]] = 64
                            _13172 = mem[_11770]
                            mem[mem[64] + 64] = mem[_11770]
                            idx = 0
                            s = _11770 + 32
                            u = mem[64] + 96
                            while idx < _13172:
                                mem[u] = mem[s + 30 len 2]
                                idx = idx + 1
                                s = s + 32
                                u = u + 32
                                continue 
                            mem[_13135 + 32] = t
                            return memory
                              from mem[64]
                               len _13135 + (32 * _13172) + -mem[64] + 96
                        mem[_11770 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                        u = 0
                        while u < uint16(s):
                            if u >= mem[_10375]:
                                revert with 0, 50
                            if u >= mem[_11770]:
                                revert with 0, 50
                            mem[(32 * u) + _11770 + 32] = mem[(32 * u) + _10375 + 62 len 2]
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            continue 
                        _13138 = mem[64]
                        mem[mem[64]] = 64
                        _13173 = mem[_11770]
                        mem[mem[64] + 64] = mem[_11770]
                        idx = 0
                        s = _11770 + 32
                        u = mem[64] + 96
                        while idx < _13173:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_13138 + 32] = t
                        return memory
                          from mem[64]
                           len _13138 + (32 * _13173) + -mem[64] + 96
                    mem[_10375 + 32 len 32 * _10354] = call.data[calldata.size len 32 * _10354]
                    _11754 = mem[_9274]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < _11754:
                        if idx >= mem[_9274]:
                            revert with 0, 50
                        if 0 == mem[(32 * idx) + _9274 + 62 len 2]:
                            if idx == -1:
                                revert with 0, 17
                            _11754 = mem[_9274]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_9274]:
                            revert with 0, 50
                        _11798 = mem[(32 * idx) + _9274 + 32]
                        mem[mem[64] + 4] = mem[(32 * idx) + _9274 + 62 len 2]
                        require ext_code.size(stor1)
                        staticcall stor1.0x426bfa4d with:
                                gas gas_remaining wei
                               args (_11798 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11878 = mem[_11848]
                        if t > mem[_11848]:
                            if idx >= mem[_9274]:
                                revert with 0, 50
                            if 0 >= mem[_10375]:
                                revert with 0, 50
                            mem[_10375 + 32] = mem[(32 * idx) + _9274 + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            _11754 = mem[_9274]
                            idx = idx + 1
                            s = 1
                            t = _11878
                            continue 
                        if t != mem[_11848]:
                            if idx == -1:
                                revert with 0, 17
                            _11754 = mem[_9274]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_9274]:
                            revert with 0, 50
                        if uint16(s) >= mem[_10375]:
                            revert with 0, 50
                        mem[(32 * uint16(s)) + _10375 + 32] = mem[(32 * idx) + _9274 + 62 len 2]
                        if uint16(s) == 65535:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        _11754 = mem[_9274]
                        idx = idx + 1
                        s = uint16(s) + 1
                        t = t
                        continue 
                    if uint16(s) > test266151307():
                        revert with 0, 65
                    _11772 = mem[64]
                    mem[mem[64]] = uint16(s)
                    mem[64] = mem[64] + (32 * uint16(s)) + 32
                    if not uint16(s):
                        u = 0
                        while u < uint16(s):
                            if u >= mem[_10375]:
                                revert with 0, 50
                            if u >= mem[_11772]:
                                revert with 0, 50
                            mem[(32 * u) + _11772 + 32] = mem[(32 * u) + _10375 + 62 len 2]
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            continue 
                        _13141 = mem[64]
                        mem[mem[64]] = 64
                        _13174 = mem[_11772]
                        mem[mem[64] + 64] = mem[_11772]
                        idx = 0
                        s = _11772 + 32
                        u = mem[64] + 96
                        while idx < _13174:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_13141 + 32] = t
                        return memory
                          from mem[64]
                           len _13141 + (32 * _13174) + -mem[64] + 96
                    mem[_11772 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_10375]:
                            revert with 0, 50
                        if u >= mem[_11772]:
                            revert with 0, 50
                        mem[(32 * u) + _11772 + 32] = mem[(32 * u) + _10375 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _13144 = mem[64]
                    mem[mem[64]] = 64
                    _13175 = mem[_11772]
                    mem[mem[64] + 64] = mem[_11772]
                    idx = 0
                    s = _11772 + 32
                    u = mem[64] + 96
                    while idx < _13175:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_13144 + 32] = t
                    return memory
                      from mem[64]
                       len _13144 + (32 * _13175) + -mem[64] + 96
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = 0x7e92807200000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            staticcall stor1.getRoutes() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4724 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] <= test266151307()
            require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 161
            _4735 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 131 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 131
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]
            require _4724 + (32 * _4735) + 32 <= return_data.size
            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _4724 + 162
            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
            idx = 0
            while idx < _4735:
                require mem[s] == mem[s + 30 len 2]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _5479 = mem[64]
            mem[mem[64]] = 7
            mem[64] = mem[64] + 256
            mem[_5479 + 32 len 224] = call.data[calldata.size len 224]
            idx = 0
            while idx < _4735:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 192 len 2] != 1:
                    revert with 0, 'invalid-route'
                _7190 = mem[128]
                s = 0
                while s < _7190:
                    if s >= mem[128]:
                        revert with 0, 50
                    _7201 = mem[(32 * s) + 160]
                    if s >= mem[128]:
                        revert with 0, 50
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * s) + 160])
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    require mem[_7247 + 160] == bool(mem[_7247 + 160])
                    require mem[_7247 + 192] == bool(mem[_7247 + 192])
                    require mem[_7247 + 224] == bool(mem[_7247 + 224])
                    _7427 = mem[_7247 + 256]
                    require mem[_7247 + 256] == bool(mem[_7247 + 256])
                    require mem[_7247 + 288] == bool(mem[_7247 + 288])
                    if s >= mem[128]:
                        revert with 0, 50
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * s) + 160])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _7558 = mem[_7549]
                    require mem[_7549] == mem[_7549 + 12 len 20]
                    require mem[_7549 + 32] == mem[_7549 + 44 len 20]
                    require mem[_7549 + 64] == mem[_7549 + 76 len 20]
                    if _7427:
                        if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        _7693 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 161]
                        mem[mem[64] + 4] = mem[_7549 + 12 len 20]
                        require ext_code.size(address(_7201))
                        staticcall address(_7201).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7558)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7737 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7737] >= _7693:
                            if s == -1:
                                revert with 0, 17
                            _7190 = mem[128]
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    _7190 = mem[128]
                    idx = idx + 1
                    continue 
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]:
                    revert with 0, 50
                if 0 >= mem[_5479]:
                    revert with 0, 50
                mem[_5479 + 32] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 192 len 2]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _6238 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] > test266151307():
                revert with 0, 65
            _6245 = mem[64]
            mem[mem[64]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
            mem[64] = mem[64] + (32 * _6238) + 32
            if not _6238:
                _7188 = mem[_5479]
                idx = 0
                s = 0
                t = -1
                while idx < _7188:
                    if idx >= mem[_5479]:
                        revert with 0, 50
                    if 0 == mem[(32 * idx) + _5479 + 62 len 2]:
                        if idx == -1:
                            revert with 0, 17
                        _7188 = mem[_5479]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_5479]:
                        revert with 0, 50
                    _7214 = mem[(32 * idx) + _5479 + 32]
                    mem[mem[64] + 4] = mem[(32 * idx) + _5479 + 62 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_7214 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7291 = mem[_7260]
                    if t > mem[_7260]:
                        if idx >= mem[_5479]:
                            revert with 0, 50
                        if 0 >= mem[_6245]:
                            revert with 0, 50
                        mem[_6245 + 32] = mem[(32 * idx) + _5479 + 62 len 2]
                        if idx == -1:
                            revert with 0, 17
                        _7188 = mem[_5479]
                        idx = idx + 1
                        s = 1
                        t = _7291
                        continue 
                    if t != mem[_7260]:
                        if idx == -1:
                            revert with 0, 17
                        _7188 = mem[_5479]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_5479]:
                        revert with 0, 50
                    if uint16(s) >= mem[_6245]:
                        revert with 0, 50
                    mem[(32 * uint16(s)) + _6245 + 32] = mem[(32 * idx) + _5479 + 62 len 2]
                    if uint16(s) == 65535:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _7188 = mem[_5479]
                    idx = idx + 1
                    s = uint16(s) + 1
                    t = t
                    continue 
                if uint16(s) > test266151307():
                    revert with 0, 65
                _7197 = mem[64]
                mem[mem[64]] = uint16(s)
                mem[64] = mem[64] + (32 * uint16(s)) + 32
                if not uint16(s):
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_6245]:
                            revert with 0, 50
                        if u >= mem[_7197]:
                            revert with 0, 50
                        mem[(32 * u) + _7197 + 32] = mem[(32 * u) + _6245 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _8152 = mem[64]
                    mem[mem[64]] = 64
                    _8180 = mem[_7197]
                    mem[mem[64] + 64] = mem[_7197]
                    idx = 0
                    s = _7197 + 32
                    u = mem[64] + 96
                    while idx < _8180:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_8152 + 32] = t
                    return memory
                      from mem[64]
                       len _8152 + (32 * _8180) + -mem[64] + 96
                mem[_7197 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                u = 0
                while u < uint16(s):
                    if u >= mem[_6245]:
                        revert with 0, 50
                    if u >= mem[_7197]:
                        revert with 0, 50
                    mem[(32 * u) + _7197 + 32] = mem[(32 * u) + _6245 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _8155 = mem[64]
                mem[mem[64]] = 64
                _8181 = mem[_7197]
                mem[mem[64] + 64] = mem[_7197]
                idx = 0
                s = _7197 + 32
                u = mem[64] + 96
                while idx < _8181:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_8155 + 32] = t
                return memory
                  from mem[64]
                   len _8155 + (32 * _8181) + -mem[64] + 96
            mem[_6245 + 32 len 32 * _6238] = call.data[calldata.size len 32 * _6238]
            _7189 = mem[_5479]
            idx = 0
            s = 0
            t = -1
            while idx < _7189:
                if idx >= mem[_5479]:
                    revert with 0, 50
                if 0 == mem[(32 * idx) + _5479 + 62 len 2]:
                    if idx == -1:
                        revert with 0, 17
                    _7189 = mem[_5479]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[_5479]:
                    revert with 0, 50
                _7216 = mem[(32 * idx) + _5479 + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + _5479 + 62 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x426bfa4d with:
                        gas gas_remaining wei
                       args (_7216 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7293 = mem[_7264]
                if t > mem[_7264]:
                    if idx >= mem[_5479]:
                        revert with 0, 50
                    if 0 >= mem[_6245]:
                        revert with 0, 50
                    mem[_6245 + 32] = mem[(32 * idx) + _5479 + 62 len 2]
                    if idx == -1:
                        revert with 0, 17
                    _7189 = mem[_5479]
                    idx = idx + 1
                    s = 1
                    t = _7293
                    continue 
                if t != mem[_7264]:
                    if idx == -1:
                        revert with 0, 17
                    _7189 = mem[_5479]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[_5479]:
                    revert with 0, 50
                if uint16(s) >= mem[_6245]:
                    revert with 0, 50
                mem[(32 * uint16(s)) + _6245 + 32] = mem[(32 * idx) + _5479 + 62 len 2]
                if uint16(s) == 65535:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                _7189 = mem[_5479]
                idx = idx + 1
                s = uint16(s) + 1
                t = t
                continue 
            if uint16(s) > test266151307():
                revert with 0, 65
            _7199 = mem[64]
            mem[mem[64]] = uint16(s)
            mem[64] = mem[64] + (32 * uint16(s)) + 32
            if not uint16(s):
                u = 0
                while u < uint16(s):
                    if u >= mem[_6245]:
                        revert with 0, 50
                    if u >= mem[_7199]:
                        revert with 0, 50
                    mem[(32 * u) + _7199 + 32] = mem[(32 * u) + _6245 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _8158 = mem[64]
                mem[mem[64]] = 64
                _8182 = mem[_7199]
                mem[mem[64] + 64] = mem[_7199]
                idx = 0
                s = _7199 + 32
                u = mem[64] + 96
                while idx < _8182:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_8158 + 32] = t
                return memory
                  from mem[64]
                   len _8158 + (32 * _8182) + -mem[64] + 96
            mem[_7199 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
            u = 0
            while u < uint16(s):
                if u >= mem[_6245]:
                    revert with 0, 50
                if u >= mem[_7199]:
                    revert with 0, 50
                mem[(32 * u) + _7199 + 32] = mem[(32 * u) + _6245 + 62 len 2]
                if u == -1:
                    revert with 0, 17
                u = u + 1
                continue 
            _8161 = mem[64]
            mem[mem[64]] = 64
            _8183 = mem[_7199]
            mem[mem[64] + 64] = mem[_7199]
            idx = 0
            s = _7199 + 32
            u = mem[64] + 96
            while idx < _8183:
                mem[u] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_8161 + 32] = t
            return memory
              from mem[64]
               len _8161 + (32 * _8183) + -mem[64] + 96
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x37b0df58(?????):
            require unknown_0x5ccaebad(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            mem[128] = 0x7e92807200000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            staticcall stor1.getRoutes() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _10 = mem[128]
            require mem[128] <= test266151307()
            require return_data.size + 128 > mem[128] + 159
            _13 = mem[mem[128] + 128]
            if mem[mem[128] + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[128] + 128]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[128] + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128] + 128]) + 129
            mem[ceil32(return_data.size) + 128] = mem[mem[128] + 128]
            require _10 + (32 * _13) + 32 <= return_data.size
            s = _10 + 160
            t = ceil32(return_data.size) + 160
            idx = 0
            while idx < _13:
                require mem[s] == mem[s + 30 len 2]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if _13 > test266151307():
                revert with 0, 65
            _448 = mem[64]
            mem[mem[64]] = _13
            mem[64] = mem[64] + (32 * _13) + 32
            if not _13:
                idx = 0
                while idx < _13:
                    if idx >= mem[ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    _882 = mem[(32 * idx) + ceil32(return_data.size) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 190 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_882 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _896 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_448]:
                        revert with 0, 50
                    mem[(32 * idx) + _448 + 32] = mem[_896]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _881 = mem[64]
                mem[mem[64]] = 64
                _891 = mem[ceil32(return_data.size) + 128]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 128]
                idx = 0
                s = ceil32(return_data.size) + 160
                t = mem[64] + 96
                while idx < _891:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_881 + 32] = (32 * _891) + 96
                _1309 = mem[_448]
                mem[_881 + (32 * _891) + 96] = mem[_448]
                s = 0
                s = _448 + 32
                t = _881 + (32 * _891) + 128
                while _13 < _1309:
                    mem[t] = mem[s]
                    s = _13 + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[_448 + 32 len 32 * _13] = call.data[calldata.size len 32 * _13]
                idx = 0
                while idx < _13:
                    if idx >= mem[ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    _885 = mem[(32 * idx) + ceil32(return_data.size) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 190 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_885 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _897 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_448]:
                        revert with 0, 50
                    mem[(32 * idx) + _448 + 32] = mem[_897]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _884 = mem[64]
                mem[mem[64]] = 64
                _892 = mem[ceil32(return_data.size) + 128]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 128]
                idx = 0
                s = ceil32(return_data.size) + 160
                t = mem[64] + 96
                while idx < _892:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_884 + 32] = (32 * _892) + 96
                _1310 = mem[_448]
                mem[_884 + (32 * _892) + 96] = mem[_448]
                s = 0
                s = _448 + 32
                t = _884 + (32 * _892) + 128
                while _13 < _1310:
                    mem[t] = mem[s]
                    s = _13 + 1
                    s = s + 32
                    t = t + 32
                    continue 
            return memory
              from mem[64]
               len t - mem[64]
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
            revert with 0, 65
        mem[128] = ('cd', 4).length
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        s = cd[4] + 36
        t = 160
        idx = 0
        while idx < ('cd', 4).length:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        idx = 0
        s = cd[36] + 36
        t = ceil32(32 * ('cd', 4).length) + 161
        while idx < ('cd', 36).length:
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = 0x7e92807200000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.getRoutes() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _909 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 130 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 161
        _912 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 131 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]) + 131
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 130]
        require _909 + (32 * _912) + 32 <= return_data.size
        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _909 + 162
        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
        idx = 0
        while idx < _912:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if _912 > test266151307():
            revert with 0, 65
        _1308 = mem[64]
        mem[mem[64]] = _912
        mem[64] = mem[64] + (32 * _912) + 32
        if not _912:
            idx = 0
            while idx < _912:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]:
                    revert with 0, 50
                _1706 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 192 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x426bfa4d with:
                        gas gas_remaining wei
                       args (_1706 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_1308]:
                    revert with 0, 50
                mem[(32 * idx) + _1308 + 32] = mem[_1722]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if mem[128] != mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 'array-lengths-not-same'
            if var82001 < 1:
                revert with 0, 17
            if var86002 < var86001:
                if var114001 < var88001:
                    revert with 0, 17
                if var120001 < 1:
                    revert with 0, 17
                if var124002 >= var124001:
                    if var106001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var128002:
                        revert with 0, 17
                    # nil
            else:
                if var91001 < 1:
                    revert with 0, 17
                if var95002 < var95001:
                    if 1 > !var99002:
                        revert with 0, 17
                    idx = var101003 + 1
                    s = var101006
                    while idx < mem[128]:
                        if s >= mem[128]:
                            revert with 0, 50
                        if mem[(32 * s) + 172 len 20] == mem[(32 * idx) + 172 len 20]:
                            revert with 0, 'non-unique-tokens'
                        if s == -1:
                            revert with 0, 17
                        if mem[128] < 1:
                            revert with 0, 17
                        if s + 1 < mem[128] - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        mem[mem[64]] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor1)
                        staticcall stor1.getRoutes() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10514 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10534 = mem[_10514]
                        require mem[_10514] <= test266151307()
                        require _10514 + return_data.size > _10514 + mem[_10514] + 31
                        _10573 = mem[_10514 + mem[_10514]]
                        if mem[_10514 + mem[_10514]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_10514 + mem[_10514]]) + 1 < 0 or _10514 + ceil32(return_data.size) + ceil32(32 * mem[_10514 + mem[_10514]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _10514 + ceil32(return_data.size) + ceil32(32 * mem[_10514 + mem[_10514]]) + 1
                        mem[_10514 + ceil32(return_data.size)] = _10573
                        require _10534 + (32 * _10573) + 32 <= return_data.size
                        s = _10514 + _10534 + 32
                        t = _10514 + ceil32(return_data.size) + 32
                        idx = 0
                        while idx < _10573:
                            require mem[s] == mem[s + 30 len 2]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        _11788 = mem[64]
                        mem[mem[64]] = 7
                        mem[64] = mem[64] + 256
                        mem[_11788 + 32 len 224] = call.data[calldata.size len 224]
                        idx = 0
                        while idx < _10573:
                            if idx >= mem[_10514 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if mem[(32 * idx) + _10514 + ceil32(return_data.size) + 62 len 2] != 1:
                                revert with 0, 'invalid-route'
                            _14395 = mem[128]
                            s = 0
                            while s < _14395:
                                if s >= mem[128]:
                                    revert with 0, 50
                                _14423 = mem[(32 * s) + 160]
                                if s >= mem[128]:
                                    revert with 0, 50
                                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * s) + 160])
                                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14490 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 320
                                require mem[_14490 + 160] == bool(mem[_14490 + 160])
                                require mem[_14490 + 192] == bool(mem[_14490 + 192])
                                require mem[_14490 + 224] == bool(mem[_14490 + 224])
                                _14661 = mem[_14490 + 256]
                                require mem[_14490 + 256] == bool(mem[_14490 + 256])
                                require mem[_14490 + 288] == bool(mem[_14490 + 288])
                                if s >= mem[128]:
                                    revert with 0, 50
                                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * s) + 160])
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14756 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _14774 = mem[_14756]
                                require mem[_14756] == mem[_14756 + 12 len 20]
                                require mem[_14756 + 32] == mem[_14756 + 44 len 20]
                                require mem[_14756 + 64] == mem[_14756 + 76 len 20]
                                if _14661:
                                    if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _14923 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = mem[_14756 + 12 len 20]
                                    require ext_code.size(address(_14423))
                                    staticcall address(_14423).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_14774)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14961 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_14961] >= _14923:
                                        if s == -1:
                                            revert with 0, 17
                                        _14395 = mem[128]
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 0, 17
                                _14395 = mem[128]
                                idx = idx + 1
                                continue 
                            if idx >= mem[_10514 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if 0 >= mem[_11788]:
                                revert with 0, 50
                            mem[_11788 + 32] = mem[(32 * idx) + _10514 + ceil32(return_data.size) + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _13148 = mem[_10514 + ceil32(return_data.size)]
                        if mem[_10514 + ceil32(return_data.size)] > test266151307():
                            revert with 0, 65
                        _13158 = mem[64]
                        mem[mem[64]] = mem[_10514 + ceil32(return_data.size)]
                        mem[64] = mem[64] + (32 * _13148) + 32
                        if not _13148:
                            _14393 = mem[_11788]
                            idx = 0
                            s = 0
                            t = -1
                            while idx < _14393:
                                if idx >= mem[_11788]:
                                    revert with 0, 50
                                if 0 == mem[(32 * idx) + _11788 + 62 len 2]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14393 = mem[_11788]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11788]:
                                    revert with 0, 50
                                _14459 = mem[(32 * idx) + _11788 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx) + _11788 + 62 len 2]
                                require ext_code.size(stor1)
                                staticcall stor1.0x426bfa4d with:
                                        gas gas_remaining wei
                                       args (_14459 << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14502 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14540 = mem[_14502]
                                if t > mem[_14502]:
                                    if idx >= mem[_11788]:
                                        revert with 0, 50
                                    if 0 >= mem[_13158]:
                                        revert with 0, 50
                                    mem[_13158 + 32] = mem[(32 * idx) + _11788 + 62 len 2]
                                    if idx == -1:
                                        revert with 0, 17
                                    _14393 = mem[_11788]
                                    idx = idx + 1
                                    s = 1
                                    t = _14540
                                    continue 
                                if t != mem[_14502]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14393 = mem[_11788]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11788]:
                                    revert with 0, 50
                                if uint16(s) >= mem[_13158]:
                                    revert with 0, 50
                                mem[(32 * uint16(s)) + _13158 + 32] = mem[(32 * idx) + _11788 + 62 len 2]
                                if uint16(s) == 65535:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                _14393 = mem[_11788]
                                idx = idx + 1
                                s = uint16(s) + 1
                                t = t
                                continue 
                        else:
                            mem[_13158 + 32 len 32 * _13148] = call.data[calldata.size len 32 * _13148]
                            _14394 = mem[_11788]
                            idx = 0
                            s = 0
                            t = -1
                            while idx < _14394:
                                if idx >= mem[_11788]:
                                    revert with 0, 50
                                if 0 == mem[(32 * idx) + _11788 + 62 len 2]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14394 = mem[_11788]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11788]:
                                    revert with 0, 50
                                _14461 = mem[(32 * idx) + _11788 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx) + _11788 + 62 len 2]
                                require ext_code.size(stor1)
                                staticcall stor1.0x426bfa4d with:
                                        gas gas_remaining wei
                                       args (_14461 << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14506 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14542 = mem[_14506]
                                if t > mem[_14506]:
                                    if idx >= mem[_11788]:
                                        revert with 0, 50
                                    if 0 >= mem[_13158]:
                                        revert with 0, 50
                                    mem[_13158 + 32] = mem[(32 * idx) + _11788 + 62 len 2]
                                    if idx == -1:
                                        revert with 0, 17
                                    _14394 = mem[_11788]
                                    idx = idx + 1
                                    s = 1
                                    t = _14542
                                    continue 
                                if t != mem[_14506]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14394 = mem[_11788]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11788]:
                                    revert with 0, 50
                                if uint16(s) >= mem[_13158]:
                                    revert with 0, 50
                                mem[(32 * uint16(s)) + _13158 + 32] = mem[(32 * idx) + _11788 + 62 len 2]
                                if uint16(s) == 65535:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                _14394 = mem[_11788]
                                idx = idx + 1
                                s = uint16(s) + 1
                                t = t
                                continue 
                        if uint16(s) > test266151307():
                            revert with 0, 65
                        # nil
                    revert with 0, 50
                mem[mem[64]] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.getRoutes() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6251 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6267 = mem[_6251]
                require mem[_6251] <= test266151307()
                require _6251 + return_data.size > _6251 + mem[_6251] + 31
                _6287 = mem[_6251 + mem[_6251]]
                if mem[_6251 + mem[_6251]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_6251 + mem[_6251]]) + 1 < 0 or _6251 + ceil32(return_data.size) + ceil32(32 * mem[_6251 + mem[_6251]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _6251 + ceil32(return_data.size) + ceil32(32 * mem[_6251 + mem[_6251]]) + 1
                mem[_6251 + ceil32(return_data.size)] = _6287
                require _6267 + (32 * _6287) + 32 <= return_data.size
                s = _6251 + _6267 + 32
                t = _6251 + ceil32(return_data.size) + 32
                idx = 0
                while idx < _6287:
                    require mem[s] == mem[s + 30 len 2]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _7210 = mem[64]
                mem[mem[64]] = 7
                mem[64] = mem[64] + 256
                mem[_7210 + 32 len 224] = call.data[calldata.size len 224]
                idx = 0
                while idx < _6287:
                    if idx >= mem[_6251 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _6251 + ceil32(return_data.size) + 62 len 2] != 1:
                        revert with 0, 'invalid-route'
                    _9237 = mem[128]
                    s = 0
                    while s < _9237:
                        if s >= mem[128]:
                            revert with 0, 50
                        _9258 = mem[(32 * s) + 160]
                        if s >= mem[128]:
                            revert with 0, 50
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * s) + 160])
                        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 320
                        require mem[_9330 + 160] == bool(mem[_9330 + 160])
                        require mem[_9330 + 192] == bool(mem[_9330 + 192])
                        require mem[_9330 + 224] == bool(mem[_9330 + 224])
                        _9537 = mem[_9330 + 256]
                        require mem[_9330 + 256] == bool(mem[_9330 + 256])
                        require mem[_9330 + 288] == bool(mem[_9330 + 288])
                        if s >= mem[128]:
                            revert with 0, 50
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * s) + 160])
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _9652 = mem[_9644]
                        require mem[_9644] == mem[_9644 + 12 len 20]
                        require mem[_9644 + 32] == mem[_9644 + 44 len 20]
                        require mem[_9644 + 64] == mem[_9644 + 76 len 20]
                        if _9537:
                            if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            _9801 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[mem[64] + 4] = mem[_9644 + 12 len 20]
                            require ext_code.size(address(_9258))
                            staticcall address(_9258).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_9652)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_9842] >= _9801:
                                if s == -1:
                                    revert with 0, 17
                                _9237 = mem[128]
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        _9237 = mem[128]
                        idx = idx + 1
                        continue 
                    if idx >= mem[_6251 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if 0 >= mem[_7210]:
                        revert with 0, 50
                    mem[_7210 + 32] = mem[(32 * idx) + _6251 + ceil32(return_data.size) + 62 len 2]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _8165 = mem[_6251 + ceil32(return_data.size)]
                if mem[_6251 + ceil32(return_data.size)] > test266151307():
                    revert with 0, 65
                _8172 = mem[64]
                mem[mem[64]] = mem[_6251 + ceil32(return_data.size)]
                mem[64] = mem[64] + (32 * _8165) + 32
                if not _8165:
                    _9235 = mem[_7210]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < _9235:
                        if idx >= mem[_7210]:
                            revert with 0, 50
                        if 0 == mem[(32 * idx) + _7210 + 62 len 2]:
                            if idx == -1:
                                revert with 0, 17
                            _9235 = mem[_7210]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_7210]:
                            revert with 0, 50
                        _9290 = mem[(32 * idx) + _7210 + 32]
                        mem[mem[64] + 4] = mem[(32 * idx) + _7210 + 62 len 2]
                        require ext_code.size(stor1)
                        staticcall stor1.0x426bfa4d with:
                                gas gas_remaining wei
                               args (_9290 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9386 = mem[_9349]
                        if t > mem[_9349]:
                            if idx >= mem[_7210]:
                                revert with 0, 50
                            if 0 >= mem[_8172]:
                                revert with 0, 50
                            mem[_8172 + 32] = mem[(32 * idx) + _7210 + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            _9235 = mem[_7210]
                            idx = idx + 1
                            s = 1
                            t = _9386
                            continue 
                        if t != mem[_9349]:
                            if idx == -1:
                                revert with 0, 17
                            _9235 = mem[_7210]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_7210]:
                            revert with 0, 50
                        if uint16(s) >= mem[_8172]:
                            revert with 0, 50
                        mem[(32 * uint16(s)) + _8172 + 32] = mem[(32 * idx) + _7210 + 62 len 2]
                        if uint16(s) == 65535:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        _9235 = mem[_7210]
                        idx = idx + 1
                        s = uint16(s) + 1
                        t = t
                        continue 
                    if uint16(s) > test266151307():
                        revert with 0, 65
                    _9254 = mem[64]
                    mem[mem[64]] = uint16(s)
                    mem[64] = mem[64] + (32 * uint16(s)) + 32
                    if not uint16(s):
                        u = 0
                        while u < uint16(s):
                            if u >= mem[_8172]:
                                revert with 0, 50
                            if u >= mem[_9254]:
                                revert with 0, 50
                            mem[(32 * u) + _9254 + 32] = mem[(32 * u) + _8172 + 62 len 2]
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            continue 
                        _10380 = mem[64]
                        mem[mem[64]] = 128
                        _10398 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                        u = mem[64] + 160
                        while idx < _10398:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_10380 + 32] = (32 * _10398) + 160
                        _11784 = mem[_1308]
                        mem[_10380 + (32 * _10398) + 160] = mem[_1308]
                        mem[_10380 + (32 * _10398) + 192 len 32 * _11784] = mem[_1308 + 32 len 32 * _11784]
                        idx = _11784
                        s = _1308 + (32 * _11784) + 32
                        mem[_10380 + 64] = (32 * _10398) + (32 * _11784) + 192
                        _13154 = mem[_9254]
                        mem[_10380 + (32 * _10398) + (32 * _11784) + 192] = mem[_9254]
                        idx = 0
                        s = _9254 + 32
                        u = _10380 + (32 * _10398) + (32 * _11784) + 224
                        while idx < _13154:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_10380 + 96] = t
                        return memory
                          from mem[64]
                           len _10380 + (32 * _10398) + (32 * _11784) + (32 * _13154) + -mem[64] + 224
                    mem[_9254 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_8172]:
                            revert with 0, 50
                        if u >= mem[_9254]:
                            revert with 0, 50
                        mem[(32 * u) + _9254 + 32] = mem[(32 * u) + _8172 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _10381 = mem[64]
                    mem[mem[64]] = 128
                    _10399 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                    u = mem[64] + 160
                    while idx < _10399:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _10399) + 160
                    _11785 = mem[_1308]
                    mem[mem[64] + (32 * _10399) + 160] = mem[_1308]
                    mem[mem[64] + (32 * _10399) + 192 len 32 * _11785] = mem[_1308 + 32 len 32 * _11785]
                    var129001 = _11785
                    var129002 = _1308 + (32 * _11785) + 32
                    mem[mem[64] + 64] = (32 * _10399) + (32 * _11785) + 192
                    _13155 = mem[_9254]
                    mem[mem[64] + (32 * _10399) + (32 * _11785) + 192] = mem[_9254]
                    idx = 0
                    s = _9254 + 32
                    u = mem[64] + (32 * _10399) + (32 * _11785) + 224
                    while idx < _13155:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10381 + 96] = t
                    return memory
                      from mem[64]
                       len _10381 + (32 * _10399) + (32 * _11785) + (32 * _13155) + -mem[64] + 224
                mem[_8172 + 32 len 32 * _8165] = call.data[calldata.size len 32 * _8165]
                _9236 = mem[_7210]
                idx = 0
                s = 0
                t = -1
                while idx < _9236:
                    if idx >= mem[_7210]:
                        revert with 0, 50
                    if 0 == mem[(32 * idx) + _7210 + 62 len 2]:
                        if idx == -1:
                            revert with 0, 17
                        _9236 = mem[_7210]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_7210]:
                        revert with 0, 50
                    _9292 = mem[(32 * idx) + _7210 + 32]
                    mem[mem[64] + 4] = mem[(32 * idx) + _7210 + 62 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_9292 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9388 = mem[_9353]
                    if t > mem[_9353]:
                        if idx >= mem[_7210]:
                            revert with 0, 50
                        if 0 >= mem[_8172]:
                            revert with 0, 50
                        mem[_8172 + 32] = mem[(32 * idx) + _7210 + 62 len 2]
                        if idx == -1:
                            revert with 0, 17
                        _9236 = mem[_7210]
                        idx = idx + 1
                        s = 1
                        t = _9388
                        continue 
                    if t != mem[_9353]:
                        if idx == -1:
                            revert with 0, 17
                        _9236 = mem[_7210]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_7210]:
                        revert with 0, 50
                    if uint16(s) >= mem[_8172]:
                        revert with 0, 50
                    mem[(32 * uint16(s)) + _8172 + 32] = mem[(32 * idx) + _7210 + 62 len 2]
                    if uint16(s) == 65535:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _9236 = mem[_7210]
                    idx = idx + 1
                    s = uint16(s) + 1
                    t = t
                    continue 
                if uint16(s) > test266151307():
                    revert with 0, 65
                _9256 = mem[64]
                mem[mem[64]] = uint16(s)
                mem[64] = mem[64] + (32 * uint16(s)) + 32
                if not uint16(s):
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_8172]:
                            revert with 0, 50
                        if u >= mem[_9256]:
                            revert with 0, 50
                        mem[(32 * u) + _9256 + 32] = mem[(32 * u) + _8172 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _10382 = mem[64]
                    mem[mem[64]] = 128
                    _10400 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                    u = mem[64] + 160
                    while idx < _10400:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10382 + 32] = (32 * _10400) + 160
                    _11786 = mem[_1308]
                    mem[_10382 + (32 * _10400) + 160] = mem[_1308]
                    mem[_10382 + (32 * _10400) + 192 len 32 * _11786] = mem[_1308 + 32 len 32 * _11786]
                    idx = _11786
                    s = _1308 + (32 * _11786) + 32
                    mem[_10382 + 64] = (32 * _10400) + (32 * _11786) + 192
                    _13156 = mem[_9256]
                    mem[_10382 + (32 * _10400) + (32 * _11786) + 192] = mem[_9256]
                    idx = 0
                    s = _9256 + 32
                    u = _10382 + (32 * _10400) + (32 * _11786) + 224
                    while idx < _13156:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10382 + 96] = t
                    return memory
                      from mem[64]
                       len _10382 + (32 * _10400) + (32 * _11786) + (32 * _13156) + -mem[64] + 224
                mem[_9256 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                u = 0
                while u < uint16(s):
                    if u >= mem[_8172]:
                        revert with 0, 50
                    if u >= mem[_9256]:
                        revert with 0, 50
                    mem[(32 * u) + _9256 + 32] = mem[(32 * u) + _8172 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _10383 = mem[64]
                mem[mem[64]] = 128
                _10401 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                u = mem[64] + 160
                while idx < _10401:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_10383 + 32] = (32 * _10401) + 160
                _11787 = mem[_1308]
                mem[_10383 + (32 * _10401) + 160] = mem[_1308]
                mem[_10383 + (32 * _10401) + 192 len 32 * _11787] = mem[_1308 + 32 len 32 * _11787]
                var130001 = _11787
                var130002 = _1308 + (32 * _11787) + 32
                mem[_10383 + 64] = (32 * _10401) + (32 * _11787) + 192
                _13157 = mem[_9256]
                mem[_10383 + (32 * _10401) + (32 * _11787) + 192] = mem[_9256]
                idx = 0
                s = _9256 + 32
                u = _10383 + (32 * _10401) + (32 * _11787) + 224
                while idx < _13157:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_10383 + 96] = t
                return memory
                  from mem[64]
                   len _10383 + (32 * _10401) + (32 * _11787) + (32 * _13157) + -mem[64] + 224
        else:
            mem[_1308 + 32 len 32 * _912] = call.data[calldata.size len 32 * _912]
            idx = 0
            while idx < _912:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]:
                    revert with 0, 50
                _1708 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 192 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x426bfa4d with:
                        gas gas_remaining wei
                       args (_1708 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_1308]:
                    revert with 0, 50
                mem[(32 * idx) + _1308 + 32] = mem[_1724]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if mem[128] != mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 'array-lengths-not-same'
            if var83001 < 1:
                revert with 0, 17
            if var87002 < var87001:
                if var115001 < var89001:
                    revert with 0, 17
                if var121001 < 1:
                    revert with 0, 17
                if var125002 >= var125001:
                    if var107001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var129002:
                        revert with 0, 17
                    # nil
            else:
                if var92001 < 1:
                    revert with 0, 17
                if var96002 < var96001:
                    if 1 > !var100002:
                        revert with 0, 17
                    idx = var102003 + 1
                    s = var102006
                    while idx < mem[128]:
                        if s >= mem[128]:
                            revert with 0, 50
                        if mem[(32 * s) + 172 len 20] == mem[(32 * idx) + 172 len 20]:
                            revert with 0, 'non-unique-tokens'
                        if s == -1:
                            revert with 0, 17
                        if mem[128] < 1:
                            revert with 0, 17
                        if s + 1 < mem[128] - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        mem[mem[64]] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor1)
                        staticcall stor1.getRoutes() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10515 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10537 = mem[_10515]
                        require mem[_10515] <= test266151307()
                        require _10515 + return_data.size > _10515 + mem[_10515] + 31
                        _10574 = mem[_10515 + mem[_10515]]
                        if mem[_10515 + mem[_10515]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_10515 + mem[_10515]]) + 1 < 0 or _10515 + ceil32(return_data.size) + ceil32(32 * mem[_10515 + mem[_10515]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _10515 + ceil32(return_data.size) + ceil32(32 * mem[_10515 + mem[_10515]]) + 1
                        mem[_10515 + ceil32(return_data.size)] = _10574
                        require _10537 + (32 * _10574) + 32 <= return_data.size
                        s = _10515 + _10537 + 32
                        t = _10515 + ceil32(return_data.size) + 32
                        idx = 0
                        while idx < _10574:
                            require mem[s] == mem[s + 30 len 2]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        _11794 = mem[64]
                        mem[mem[64]] = 7
                        mem[64] = mem[64] + 256
                        mem[_11794 + 32 len 224] = call.data[calldata.size len 224]
                        idx = 0
                        while idx < _10574:
                            if idx >= mem[_10515 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if mem[(32 * idx) + _10515 + ceil32(return_data.size) + 62 len 2] != 1:
                                revert with 0, 'invalid-route'
                            _14398 = mem[128]
                            s = 0
                            while s < _14398:
                                if s >= mem[128]:
                                    revert with 0, 50
                                _14432 = mem[(32 * s) + 160]
                                if s >= mem[128]:
                                    revert with 0, 50
                                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * s) + 160])
                                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14497 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 320
                                require mem[_14497 + 160] == bool(mem[_14497 + 160])
                                require mem[_14497 + 192] == bool(mem[_14497 + 192])
                                require mem[_14497 + 224] == bool(mem[_14497 + 224])
                                _14669 = mem[_14497 + 256]
                                require mem[_14497 + 256] == bool(mem[_14497 + 256])
                                require mem[_14497 + 288] == bool(mem[_14497 + 288])
                                if s >= mem[128]:
                                    revert with 0, 50
                                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                        gas gas_remaining wei
                                       args address(mem[(32 * s) + 160])
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14758 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _14777 = mem[_14758]
                                require mem[_14758] == mem[_14758 + 12 len 20]
                                require mem[_14758 + 32] == mem[_14758 + 44 len 20]
                                require mem[_14758 + 64] == mem[_14758 + 76 len 20]
                                if _14669:
                                    if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _14931 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = mem[_14758 + 12 len 20]
                                    require ext_code.size(address(_14432))
                                    staticcall address(_14432).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(_14777)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14964 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_14964] >= _14931:
                                        if s == -1:
                                            revert with 0, 17
                                        _14398 = mem[128]
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 0, 17
                                _14398 = mem[128]
                                idx = idx + 1
                                continue 
                            if idx >= mem[_10515 + ceil32(return_data.size)]:
                                revert with 0, 50
                            if 0 >= mem[_11794]:
                                revert with 0, 50
                            mem[_11794 + 32] = mem[(32 * idx) + _10515 + ceil32(return_data.size) + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _13151 = mem[_10515 + ceil32(return_data.size)]
                        if mem[_10515 + ceil32(return_data.size)] > test266151307():
                            revert with 0, 65
                        _13167 = mem[64]
                        mem[mem[64]] = mem[_10515 + ceil32(return_data.size)]
                        mem[64] = mem[64] + (32 * _13151) + 32
                        if not _13151:
                            _14396 = mem[_11794]
                            idx = 0
                            s = 0
                            t = -1
                            while idx < _14396:
                                if idx >= mem[_11794]:
                                    revert with 0, 50
                                if 0 == mem[(32 * idx) + _11794 + 62 len 2]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14396 = mem[_11794]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11794]:
                                    revert with 0, 50
                                _14465 = mem[(32 * idx) + _11794 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx) + _11794 + 62 len 2]
                                require ext_code.size(stor1)
                                staticcall stor1.0x426bfa4d with:
                                        gas gas_remaining wei
                                       args (_14465 << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14512 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14547 = mem[_14512]
                                if t > mem[_14512]:
                                    if idx >= mem[_11794]:
                                        revert with 0, 50
                                    if 0 >= mem[_13167]:
                                        revert with 0, 50
                                    mem[_13167 + 32] = mem[(32 * idx) + _11794 + 62 len 2]
                                    if idx == -1:
                                        revert with 0, 17
                                    _14396 = mem[_11794]
                                    idx = idx + 1
                                    s = 1
                                    t = _14547
                                    continue 
                                if t != mem[_14512]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14396 = mem[_11794]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11794]:
                                    revert with 0, 50
                                if uint16(s) >= mem[_13167]:
                                    revert with 0, 50
                                mem[(32 * uint16(s)) + _13167 + 32] = mem[(32 * idx) + _11794 + 62 len 2]
                                if uint16(s) == 65535:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                _14396 = mem[_11794]
                                idx = idx + 1
                                s = uint16(s) + 1
                                t = t
                                continue 
                        else:
                            mem[_13167 + 32 len 32 * _13151] = call.data[calldata.size len 32 * _13151]
                            _14397 = mem[_11794]
                            idx = 0
                            s = 0
                            t = -1
                            while idx < _14397:
                                if idx >= mem[_11794]:
                                    revert with 0, 50
                                if 0 == mem[(32 * idx) + _11794 + 62 len 2]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14397 = mem[_11794]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11794]:
                                    revert with 0, 50
                                _14467 = mem[(32 * idx) + _11794 + 32]
                                mem[mem[64] + 4] = mem[(32 * idx) + _11794 + 62 len 2]
                                require ext_code.size(stor1)
                                staticcall stor1.0x426bfa4d with:
                                        gas gas_remaining wei
                                       args (_14467 << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14516 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14549 = mem[_14516]
                                if t > mem[_14516]:
                                    if idx >= mem[_11794]:
                                        revert with 0, 50
                                    if 0 >= mem[_13167]:
                                        revert with 0, 50
                                    mem[_13167 + 32] = mem[(32 * idx) + _11794 + 62 len 2]
                                    if idx == -1:
                                        revert with 0, 17
                                    _14397 = mem[_11794]
                                    idx = idx + 1
                                    s = 1
                                    t = _14549
                                    continue 
                                if t != mem[_14516]:
                                    if idx == -1:
                                        revert with 0, 17
                                    _14397 = mem[_11794]
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= mem[_11794]:
                                    revert with 0, 50
                                if uint16(s) >= mem[_13167]:
                                    revert with 0, 50
                                mem[(32 * uint16(s)) + _13167 + 32] = mem[(32 * idx) + _11794 + 62 len 2]
                                if uint16(s) == 65535:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                _14397 = mem[_11794]
                                idx = idx + 1
                                s = uint16(s) + 1
                                t = t
                                continue 
                        if uint16(s) > test266151307():
                            revert with 0, 65
                        # nil
                    revert with 0, 50
                mem[mem[64]] = 0x7e92807200000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.getRoutes() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6253 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6269 = mem[_6253]
                require mem[_6253] <= test266151307()
                require _6253 + return_data.size > _6253 + mem[_6253] + 31
                _6290 = mem[_6253 + mem[_6253]]
                if mem[_6253 + mem[_6253]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_6253 + mem[_6253]]) + 1 < 0 or _6253 + ceil32(return_data.size) + ceil32(32 * mem[_6253 + mem[_6253]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _6253 + ceil32(return_data.size) + ceil32(32 * mem[_6253 + mem[_6253]]) + 1
                mem[_6253 + ceil32(return_data.size)] = _6290
                require _6269 + (32 * _6290) + 32 <= return_data.size
                s = _6253 + _6269 + 32
                t = _6253 + ceil32(return_data.size) + 32
                idx = 0
                while idx < _6290:
                    require mem[s] == mem[s + 30 len 2]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _7212 = mem[64]
                mem[mem[64]] = 7
                mem[64] = mem[64] + 256
                mem[_7212 + 32 len 224] = call.data[calldata.size len 224]
                idx = 0
                while idx < _6290:
                    if idx >= mem[_6253 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _6253 + ceil32(return_data.size) + 62 len 2] != 1:
                        revert with 0, 'invalid-route'
                    _9240 = mem[128]
                    s = 0
                    while s < _9240:
                        if s >= mem[128]:
                            revert with 0, 50
                        _9266 = mem[(32 * s) + 160]
                        if s >= mem[128]:
                            revert with 0, 50
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * s) + 160])
                        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 320
                        require mem[_9340 + 160] == bool(mem[_9340 + 160])
                        require mem[_9340 + 192] == bool(mem[_9340 + 192])
                        require mem[_9340 + 224] == bool(mem[_9340 + 224])
                        _9544 = mem[_9340 + 256]
                        require mem[_9340 + 256] == bool(mem[_9340 + 256])
                        require mem[_9340 + 288] == bool(mem[_9340 + 288])
                        if s >= mem[128]:
                            revert with 0, 50
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * s) + 160])
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _9654 = mem[_9647]
                        require mem[_9647] == mem[_9647 + 12 len 20]
                        require mem[_9647 + 32] == mem[_9647 + 44 len 20]
                        require mem[_9647 + 64] == mem[_9647 + 76 len 20]
                        if _9544:
                            if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            _9809 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[mem[64] + 4] = mem[_9647 + 12 len 20]
                            require ext_code.size(address(_9266))
                            staticcall address(_9266).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_9654)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_9855] >= _9809:
                                if s == -1:
                                    revert with 0, 17
                                _9240 = mem[128]
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        _9240 = mem[128]
                        idx = idx + 1
                        continue 
                    if idx >= mem[_6253 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if 0 >= mem[_7212]:
                        revert with 0, 50
                    mem[_7212 + 32] = mem[(32 * idx) + _6253 + ceil32(return_data.size) + 62 len 2]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _8168 = mem[_6253 + ceil32(return_data.size)]
                if mem[_6253 + ceil32(return_data.size)] > test266151307():
                    revert with 0, 65
                _8176 = mem[64]
                mem[mem[64]] = mem[_6253 + ceil32(return_data.size)]
                mem[64] = mem[64] + (32 * _8168) + 32
                if not _8168:
                    _9238 = mem[_7212]
                    idx = 0
                    s = 0
                    t = -1
                    while idx < _9238:
                        if idx >= mem[_7212]:
                            revert with 0, 50
                        if 0 == mem[(32 * idx) + _7212 + 62 len 2]:
                            if idx == -1:
                                revert with 0, 17
                            _9238 = mem[_7212]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_7212]:
                            revert with 0, 50
                        _9297 = mem[(32 * idx) + _7212 + 32]
                        mem[mem[64] + 4] = mem[(32 * idx) + _7212 + 62 len 2]
                        require ext_code.size(stor1)
                        staticcall stor1.0x426bfa4d with:
                                gas gas_remaining wei
                               args (_9297 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9358 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9391 = mem[_9358]
                        if t > mem[_9358]:
                            if idx >= mem[_7212]:
                                revert with 0, 50
                            if 0 >= mem[_8176]:
                                revert with 0, 50
                            mem[_8176 + 32] = mem[(32 * idx) + _7212 + 62 len 2]
                            if idx == -1:
                                revert with 0, 17
                            _9238 = mem[_7212]
                            idx = idx + 1
                            s = 1
                            t = _9391
                            continue 
                        if t != mem[_9358]:
                            if idx == -1:
                                revert with 0, 17
                            _9238 = mem[_7212]
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= mem[_7212]:
                            revert with 0, 50
                        if uint16(s) >= mem[_8176]:
                            revert with 0, 50
                        mem[(32 * uint16(s)) + _8176 + 32] = mem[(32 * idx) + _7212 + 62 len 2]
                        if uint16(s) == 65535:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        _9238 = mem[_7212]
                        idx = idx + 1
                        s = uint16(s) + 1
                        t = t
                        continue 
                    if uint16(s) > test266151307():
                        revert with 0, 65
                    _9262 = mem[64]
                    mem[mem[64]] = uint16(s)
                    mem[64] = mem[64] + (32 * uint16(s)) + 32
                    if not uint16(s):
                        u = 0
                        while u < uint16(s):
                            if u >= mem[_8176]:
                                revert with 0, 50
                            if u >= mem[_9262]:
                                revert with 0, 50
                            mem[(32 * u) + _9262 + 32] = mem[(32 * u) + _8176 + 62 len 2]
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            continue 
                        _10385 = mem[64]
                        mem[mem[64]] = 128
                        _10405 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                        u = mem[64] + 160
                        while idx < _10405:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _10405) + 160
                        _11790 = mem[_1308]
                        mem[mem[64] + (32 * _10405) + 160] = mem[_1308]
                        mem[mem[64] + (32 * _10405) + 192 len 32 * _11790] = mem[_1308 + 32 len 32 * _11790]
                        idx = _11790
                        s = _1308 + (32 * _11790) + 32
                        mem[mem[64] + 64] = (32 * _10405) + (32 * _11790) + 192
                        _13163 = mem[_9262]
                        mem[mem[64] + (32 * _10405) + (32 * _11790) + 192] = mem[_9262]
                        idx = 0
                        s = _9262 + 32
                        u = mem[64] + (32 * _10405) + (32 * _11790) + 224
                        while idx < _13163:
                            mem[u] = mem[s + 30 len 2]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        mem[_10385 + 96] = t
                        return memory
                          from mem[64]
                           len _10385 + (32 * _10405) + (32 * _11790) + (32 * _13163) + -mem[64] + 224
                    mem[_9262 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_8176]:
                            revert with 0, 50
                        if u >= mem[_9262]:
                            revert with 0, 50
                        mem[(32 * u) + _9262 + 32] = mem[(32 * u) + _8176 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _10386 = mem[64]
                    mem[mem[64]] = 128
                    _10406 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                    u = mem[64] + 160
                    while idx < _10406:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10386 + 32] = (32 * _10406) + 160
                    _11791 = mem[_1308]
                    mem[_10386 + (32 * _10406) + 160] = mem[_1308]
                    mem[_10386 + (32 * _10406) + 192 len 32 * _11791] = mem[_1308 + 32 len 32 * _11791]
                    var130001 = _11791
                    var130002 = _1308 + (32 * _11791) + 32
                    mem[_10386 + 64] = (32 * _10406) + (32 * _11791) + 192
                    _13164 = mem[_9262]
                    mem[_10386 + (32 * _10406) + (32 * _11791) + 192] = mem[_9262]
                    idx = 0
                    s = _9262 + 32
                    u = _10386 + (32 * _10406) + (32 * _11791) + 224
                    while idx < _13164:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10386 + 96] = t
                    return memory
                      from mem[64]
                       len _10386 + (32 * _10406) + (32 * _11791) + (32 * _13164) + -mem[64] + 224
                mem[_8176 + 32 len 32 * _8168] = call.data[calldata.size len 32 * _8168]
                _9239 = mem[_7212]
                idx = 0
                s = 0
                t = -1
                while idx < _9239:
                    if idx >= mem[_7212]:
                        revert with 0, 50
                    if 0 == mem[(32 * idx) + _7212 + 62 len 2]:
                        if idx == -1:
                            revert with 0, 17
                        _9239 = mem[_7212]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_7212]:
                        revert with 0, 50
                    _9299 = mem[(32 * idx) + _7212 + 32]
                    mem[mem[64] + 4] = mem[(32 * idx) + _7212 + 62 len 2]
                    require ext_code.size(stor1)
                    staticcall stor1.0x426bfa4d with:
                            gas gas_remaining wei
                           args (_9299 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9362 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9393 = mem[_9362]
                    if t > mem[_9362]:
                        if idx >= mem[_7212]:
                            revert with 0, 50
                        if 0 >= mem[_8176]:
                            revert with 0, 50
                        mem[_8176 + 32] = mem[(32 * idx) + _7212 + 62 len 2]
                        if idx == -1:
                            revert with 0, 17
                        _9239 = mem[_7212]
                        idx = idx + 1
                        s = 1
                        t = _9393
                        continue 
                    if t != mem[_9362]:
                        if idx == -1:
                            revert with 0, 17
                        _9239 = mem[_7212]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if idx >= mem[_7212]:
                        revert with 0, 50
                    if uint16(s) >= mem[_8176]:
                        revert with 0, 50
                    mem[(32 * uint16(s)) + _8176 + 32] = mem[(32 * idx) + _7212 + 62 len 2]
                    if uint16(s) == 65535:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    _9239 = mem[_7212]
                    idx = idx + 1
                    s = uint16(s) + 1
                    t = t
                    continue 
                if uint16(s) > test266151307():
                    revert with 0, 65
                _9264 = mem[64]
                mem[mem[64]] = uint16(s)
                mem[64] = mem[64] + (32 * uint16(s)) + 32
                if uint16(s):
                    mem[_9264 + 32 len 32 * uint16(s)] = call.data[calldata.size len 32 * uint16(s)]
                    u = 0
                    while u < uint16(s):
                        if u >= mem[_8176]:
                            revert with 0, 50
                        if u >= mem[_9264]:
                            revert with 0, 50
                        mem[(32 * u) + _9264 + 32] = mem[(32 * u) + _8176 + 62 len 2]
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        continue 
                    _10388 = mem[64]
                    mem[mem[64]] = 128
                    _10408 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                    u = mem[64] + 160
                    while idx < _10408:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10388 + 32] = (32 * _10408) + 160
                    _11793 = mem[_1308]
                    mem[_10388 + (32 * _10408) + 160] = mem[_1308]
                    mem[_10388 + (32 * _10408) + 192 len 32 * _11793] = mem[_1308 + 32 len 32 * _11793]
                    mem[_10388 + 64] = (32 * _10408) + (32 * _11793) + 192
                    _13166 = mem[_9264]
                    mem[_10388 + (32 * _10408) + (32 * _11793) + 192] = mem[_9264]
                    idx = 0
                    s = _9264 + 32
                    u = _10388 + (32 * _10408) + (32 * _11793) + 224
                    while idx < _13166:
                        mem[u] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[_10388 + 96] = t
                    return memory
                      from mem[64]
                       len _10388 + (32 * _10408) + (32 * _11793) + (32 * _13166) + -mem[64] + 224
                u = 0
                while u < uint16(s):
                    if u >= mem[_8176]:
                        revert with 0, 50
                    if u >= mem[_9264]:
                        revert with 0, 50
                    mem[(32 * u) + _9264 + 32] = mem[(32 * u) + _8176 + 62 len 2]
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    continue 
                _10387 = mem[64]
                mem[mem[64]] = 128
                _10407 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 162
                u = mem[64] + 160
                while idx < _10407:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _10407) + 160
                _11792 = mem[_1308]
                mem[mem[64] + (32 * _10407) + 160] = mem[_1308]
                mem[mem[64] + (32 * _10407) + 192 len 32 * _11792] = mem[_1308 + 32 len 32 * _11792]
                idx = _11792
                s = _1308 + (32 * _11792) + 32
                mem[mem[64] + 64] = (32 * _10407) + (32 * _11792) + 192
                _13165 = mem[_9264]
                mem[mem[64] + (32 * _10407) + (32 * _11792) + 192] = mem[_9264]
                idx = 0
                s = _9264 + 32
                u = mem[64] + (32 * _10407) + (32 * _11792) + 224
                while idx < _13165:
                    mem[u] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[_10387 + 96] = t
                return memory
                  from mem[64]
                   len _10387 + (32 * _10407) + (32 * _11792) + (32 * _13165) + -mem[64] + 224
}



}
