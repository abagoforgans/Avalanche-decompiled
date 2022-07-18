contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b7645f4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[0] << 192, address(ext_call.return_data[0])
}

function sub_9ae1318c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return arg1 << 192, 
           address(arg2),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}

function sub_6813d44f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    mem[floor32(('cd', 4).length) + 97] = 0
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    if ('cd', 4).length != 2:
        revert with 0, 'Exactly two token addresses required'
    staticcall address(cd[36]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261] = mem[140 len 20]
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 293] = mem[172 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall ext_call.return_data[12 len 20].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return address(ext_call.return_data[0]), 
           address(cd[36]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}

function sub_49106f62(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[416]
    require mem[416] <= test266151307()
    require mem[416] + 447 < return_data.size + 416
    _7 = mem[mem[416] + 416]
    if mem[mem[416] + 416] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[416] + 416])) + 417 > test266151307() or ceil32(ceil32(mem[mem[416] + 416])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[416] + 416])) + 417
    mem[ceil32(return_data.size) + 416] = mem[mem[416] + 416]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 448 len ceil32(_7)] = mem[_6 + 448 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[256] = ceil32(return_data.size) + 416
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _183 = mem[_179]
        require mem[_179] <= test266151307()
        require _179 + mem[_179] + 31 < _179 + return_data.size
        _185 = mem[_179 + mem[_179]]
        if mem[_179 + mem[_179]] > test266151307():
            revert with 'NH{q', 65
        if _179 + ceil32(return_data.size) + ceil32(ceil32(mem[_179 + mem[_179]])) + 1 > test266151307() or ceil32(ceil32(mem[_179 + mem[_179]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _179 + ceil32(return_data.size) + ceil32(ceil32(mem[_179 + mem[_179]])) + 1
        mem[_179 + ceil32(return_data.size)] = _185
        require _183 + _185 + 32 <= return_data.size
        mem[_179 + ceil32(return_data.size) + 32 len ceil32(_185)] = mem[_179 + _183 + 32 len ceil32(_185)]
        if ceil32(_185) <= _185:
            mem[288] = _179 + ceil32(return_data.size)
            staticcall address(arg1).decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_349] == mem[_349 + 31 len 1]
            mem[320] = mem[_349 + 31 len 1]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            staticcall address(arg1).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_367] == mem[_367]
            mem[352] = mem[_367]
            mem[mem[64] + 4] = address(arg2)
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_383] == mem[_383]
            mem[384] = mem[_383]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 160
            _401 = mem[ceil32(return_data.size) + 416]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 416]
            mem[mem[64] + 224 len ceil32(_401)] = mem[ceil32(return_data.size) + 448 len ceil32(_401)]
            if ceil32(_401) <= _401:
                mem[mem[64] + 64] = ceil32(_401) + 192
                mem[mem[64] + ceil32(_401) + 224] = _185
                mem[mem[64] + ceil32(_401) + 256 len ceil32(_185)] = mem[_179 + ceil32(return_data.size) + 32 len ceil32(_185)]
                if ceil32(_185) > _185:
                    mem[mem[64] + ceil32(_401) + _185 + 256] = 0
                mem[mem[64] + 96] = mem[351 len 1]
                mem[mem[64] + 128] = mem[352]
                mem[mem[64] + 160] = mem[384]
                return 32, 160, 
                       ceil32(_401) + 192,
                       mem[mem[64] + 96 len ceil32(_401) + 128],
                       _185,
                       mem[mem[64] + ceil32(_401) + 256 len ceil32(_185)]
            mem[mem[64] + _401 + 224] = 0
            mem[mem[64] + 64] = ceil32(_401) + 192
            mem[mem[64] + ceil32(_401) + 224] = _185
            mem[mem[64] + ceil32(_401) + 256 len ceil32(_185)] = mem[_179 + ceil32(return_data.size) + 32 len ceil32(_185)]
            if ceil32(_185) > _185:
                mem[mem[64] + ceil32(_401) + _185 + 256] = 0
            mem[mem[64] + 96] = mem[351 len 1]
            mem[mem[64] + 128] = mem[352]
            mem[mem[64] + 160] = mem[384]
            return 32, 160, 
                   ceil32(_401) + 192,
                   mem[mem[64] + 96 len _401 + 128],
                   0,
                   mem[mem[64] + _401 + 256 len ceil32(_401) + ceil32(_185) - _401]
        mem[_179 + ceil32(return_data.size) + _185 + 32] = 0
        mem[288] = _179 + ceil32(return_data.size)
        staticcall address(arg1).decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_355] == mem[_355 + 31 len 1]
        mem[320] = mem[_355 + 31 len 1]
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        staticcall address(arg1).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_371] == mem[_371]
        mem[352] = mem[_371]
        mem[mem[64] + 4] = address(arg2)
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _387 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_387] == mem[_387]
        mem[384] = mem[_387]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 160
        _403 = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 224 len ceil32(_403)] = mem[ceil32(return_data.size) + 448 len ceil32(_403)]
        if ceil32(_403) <= _403:
            mem[mem[64] + 64] = ceil32(_403) + 192
            mem[mem[64] + ceil32(_403) + 224] = _185
            mem[mem[64] + ceil32(_403) + 256 len ceil32(_185)] = mem[_179 + ceil32(return_data.size) + 32 len ceil32(_185)]
            if ceil32(_185) > _185:
                mem[mem[64] + ceil32(_403) + _185 + 256] = 0
            mem[mem[64] + 96] = mem[351 len 1]
            mem[mem[64] + 128] = mem[352]
            mem[mem[64] + 160] = mem[384]
            return 32, 160, 
                   ceil32(_403) + 192,
                   mem[mem[64] + 96 len ceil32(_403) + 128],
                   _185,
                   mem[mem[64] + ceil32(_403) + 256 len ceil32(_185)]
        mem[mem[64] + _403 + 224] = 0
        mem[mem[64] + 64] = ceil32(_403) + 192
        mem[mem[64] + ceil32(_403) + 224] = _185
        mem[mem[64] + ceil32(_403) + 256 len ceil32(_185)] = mem[_179 + ceil32(return_data.size) + 32 len ceil32(_185)]
        if ceil32(_185) > _185:
            mem[mem[64] + ceil32(_403) + _185 + 256] = 0
        mem[mem[64] + 96] = mem[351 len 1]
        mem[mem[64] + 128] = mem[352]
        mem[mem[64] + 160] = mem[384]
        return 32, 160, 
               ceil32(_403) + 192,
               mem[mem[64] + 96 len _403 + 128],
               0,
               mem[mem[64] + _403 + 256 len ceil32(_403) + ceil32(_185) - _403]
    mem[ceil32(return_data.size) + _7 + 448] = 0
    mem[256] = ceil32(return_data.size) + 416
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _182 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _184 = mem[_182]
    require mem[_182] <= test266151307()
    require _182 + mem[_182] + 31 < _182 + return_data.size
    _186 = mem[_182 + mem[_182]]
    if mem[_182 + mem[_182]] > test266151307():
        revert with 'NH{q', 65
    if _182 + ceil32(return_data.size) + ceil32(ceil32(mem[_182 + mem[_182]])) + 1 > test266151307() or ceil32(ceil32(mem[_182 + mem[_182]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _182 + ceil32(return_data.size) + ceil32(ceil32(mem[_182 + mem[_182]])) + 1
    mem[_182 + ceil32(return_data.size)] = _186
    require _184 + _186 + 32 <= return_data.size
    mem[_182 + ceil32(return_data.size) + 32 len ceil32(_186)] = mem[_182 + _184 + 32 len ceil32(_186)]
    if ceil32(_186) <= _186:
        mem[288] = _182 + ceil32(return_data.size)
        staticcall address(arg1).decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_352] == mem[_352 + 31 len 1]
        mem[320] = mem[_352 + 31 len 1]
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        staticcall address(arg1).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _369 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_369] == mem[_369]
        mem[352] = mem[_369]
        mem[mem[64] + 4] = address(arg2)
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_385] == mem[_385]
        mem[384] = mem[_385]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 160
        _402 = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 224 len ceil32(_402)] = mem[ceil32(return_data.size) + 448 len ceil32(_402)]
        if ceil32(_402) <= _402:
            mem[mem[64] + 64] = ceil32(_402) + 192
            mem[mem[64] + ceil32(_402) + 224] = _186
            mem[mem[64] + ceil32(_402) + 256 len ceil32(_186)] = mem[_182 + ceil32(return_data.size) + 32 len ceil32(_186)]
            if ceil32(_186) > _186:
                mem[mem[64] + ceil32(_402) + _186 + 256] = 0
            mem[mem[64] + 96] = mem[351 len 1]
            mem[mem[64] + 128] = mem[352]
            mem[mem[64] + 160] = mem[384]
            return 32, 160, 
                   ceil32(_402) + 192,
                   mem[mem[64] + 96 len ceil32(_402) + 128],
                   _186,
                   mem[mem[64] + ceil32(_402) + 256 len ceil32(_186)]
        mem[mem[64] + _402 + 224] = 0
        mem[mem[64] + 64] = ceil32(_402) + 192
        mem[mem[64] + ceil32(_402) + 224] = _186
        mem[mem[64] + ceil32(_402) + 256 len ceil32(_186)] = mem[_182 + ceil32(return_data.size) + 32 len ceil32(_186)]
        if ceil32(_186) > _186:
            mem[mem[64] + ceil32(_402) + _186 + 256] = 0
        mem[mem[64] + 96] = mem[351 len 1]
        mem[mem[64] + 128] = mem[352]
        mem[mem[64] + 160] = mem[384]
        return 32, 160, 
               ceil32(_402) + 192,
               mem[mem[64] + 96 len _402 + 128],
               0,
               mem[mem[64] + _402 + 256 len ceil32(_402) + ceil32(_186) - _402]
    mem[_182 + ceil32(return_data.size) + _186 + 32] = 0
    mem[288] = _182 + ceil32(return_data.size)
    staticcall address(arg1).decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _356 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_356] == mem[_356 + 31 len 1]
    mem[320] = mem[_356 + 31 len 1]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = address(arg3)
    staticcall address(arg1).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _372 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_372] == mem[_372]
    mem[352] = mem[_372]
    mem[mem[64] + 4] = address(arg2)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _388 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_388] == mem[_388]
    mem[384] = mem[_388]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 160
    _404 = mem[ceil32(return_data.size) + 416]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 416]
    mem[mem[64] + 224 len ceil32(_404)] = mem[ceil32(return_data.size) + 448 len ceil32(_404)]
    if ceil32(_404) <= _404:
        mem[mem[64] + 64] = ceil32(_404) + 192
        mem[mem[64] + ceil32(_404) + 224] = _186
        mem[mem[64] + ceil32(_404) + 256 len ceil32(_186)] = mem[_182 + ceil32(return_data.size) + 32 len ceil32(_186)]
        if ceil32(_186) > _186:
            mem[mem[64] + ceil32(_404) + _186 + 256] = 0
        mem[mem[64] + 96] = mem[351 len 1]
        mem[mem[64] + 128] = mem[352]
        mem[mem[64] + 160] = mem[384]
        return 32, 160, 
               ceil32(_404) + 192,
               mem[mem[64] + 96 len ceil32(_404) + 128],
               _186,
               mem[mem[64] + ceil32(_404) + 256 len ceil32(_186)]
    mem[mem[64] + _404 + 224] = 0
    mem[mem[64] + 64] = ceil32(_404) + 192
    mem[mem[64] + ceil32(_404) + 224] = _186
    mem[mem[64] + ceil32(_404) + 256 len ceil32(_186)] = mem[_182 + ceil32(return_data.size) + 32 len ceil32(_186)]
    if ceil32(_186) > _186:
        mem[mem[64] + ceil32(_404) + _186 + 256] = 0
    mem[mem[64] + 96] = mem[351 len 1]
    mem[mem[64] + 128] = mem[352]
    mem[mem[64] + 160] = mem[384]
    return 32, 160, 
           ceil32(_404) + 192,
           mem[mem[64] + 96 len _404 + 128],
           0,
           mem[mem[64] + _404 + 256 len ceil32(_404) + ceil32(_186) - _404]
}

function sub_4efd953a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[128] = 160
    mem[320] = 0
    mem[352] = 0
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 384] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 448] = 2
    mem[(2 * ceil32(return_data.size)) + 480] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 512] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 544] = 2
    mem[64] = (2 * ceil32(return_data.size)) + 800
    mem[(2 * ceil32(return_data.size)) + 640] = 96
    mem[(2 * ceil32(return_data.size)) + 672] = 96
    mem[(2 * ceil32(return_data.size)) + 704] = 0
    mem[(2 * ceil32(return_data.size)) + 736] = 0
    mem[(2 * ceil32(return_data.size)) + 768] = 0
    mem[var78001] = (2 * ceil32(return_data.size)) + 640
    s = var78001
    idx = var78002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(2 * ceil32(return_data.size)) + 640] = 96
        mem[(2 * ceil32(return_data.size)) + 672] = 96
        mem[(2 * ceil32(return_data.size)) + 704] = 0
        mem[(2 * ceil32(return_data.size)) + 736] = 0
        mem[(2 * ceil32(return_data.size)) + 768] = 0
        mem[s + 32] = (2 * ceil32(return_data.size)) + 640
        s = s + 32
        idx = idx - 1
        continue 
    _730 = mem[(2 * ceil32(return_data.size)) + 448]
    idx = 0
    while idx < _730:
        if idx >= mem[(2 * ceil32(return_data.size)) + 448]:
            revert with 'NH{q', 50
        _735 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 480]
        _739 = mem[64]
        mem[64] = mem[64] + 160
        mem[_739] = 96
        mem[_739 + 32] = 96
        mem[_739 + 64] = 0
        mem[_739 + 96] = 0
        mem[_739 + 128] = 0
        _743 = mem[64]
        mem[64] = mem[64] + 160
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        staticcall address(_735).name() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _749 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _754 = mem[_749]
        require mem[_749] <= test266151307()
        require _749 + mem[_749] + 31 < _749 + return_data.size
        _760 = mem[_749 + mem[_749]]
        if mem[_749 + mem[_749]] > test266151307():
            revert with 'NH{q', 65
        if _749 + ceil32(return_data.size) + ceil32(ceil32(mem[_749 + mem[_749]])) + 1 > test266151307() or ceil32(ceil32(mem[_749 + mem[_749]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _749 + ceil32(return_data.size) + ceil32(ceil32(mem[_749 + mem[_749]])) + 1
        mem[_749 + ceil32(return_data.size)] = _760
        require _754 + _760 + 32 <= return_data.size
        s = 0
        while s < _760:
            mem[_749 + ceil32(return_data.size) + s + 32] = mem[_749 + _754 + s + 32]
            s = s + 32
            continue 
        if ceil32(_760) <= _760:
            mem[_743] = _749 + ceil32(return_data.size)
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            staticcall address(_735).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _972 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _981 = mem[_972]
            require mem[_972] <= test266151307()
            require _972 + mem[_972] + 31 < _972 + return_data.size
            _988 = mem[_972 + mem[_972]]
            if mem[_972 + mem[_972]] > test266151307():
                revert with 'NH{q', 65
            if _972 + ceil32(return_data.size) + ceil32(ceil32(mem[_972 + mem[_972]])) + 1 > test266151307() or ceil32(ceil32(mem[_972 + mem[_972]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _972 + ceil32(return_data.size) + ceil32(ceil32(mem[_972 + mem[_972]])) + 1
            mem[_972 + ceil32(return_data.size)] = _988
            require _981 + _988 + 32 <= return_data.size
            s = 0
            while s < _988:
                mem[_972 + ceil32(return_data.size) + s + 32] = mem[_972 + _981 + s + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                mem[_743 + 32] = _972 + ceil32(return_data.size)
                staticcall address(_735).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1133] == mem[_1133 + 31 len 1]
                mem[_743 + 64] = mem[_1133 + 31 len 1]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                staticcall address(_735).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), address(arg3)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1175] == mem[_1175]
                mem[_743 + 96] = mem[_1175]
                mem[mem[64] + 4] = address(arg2)
                staticcall address(_735).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1191] == mem[_1191]
                mem[_743 + 128] = mem[_1191]
            else:
                mem[_972 + ceil32(return_data.size) + _988 + 32] = 0
                mem[_743 + 32] = _972 + ceil32(return_data.size)
                staticcall address(_735).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1140] == mem[_1140 + 31 len 1]
                mem[_743 + 64] = mem[_1140 + 31 len 1]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                staticcall address(_735).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), address(arg3)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1179 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1179] == mem[_1179]
                mem[_743 + 96] = mem[_1179]
                mem[mem[64] + 4] = address(arg2)
                staticcall address(_735).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1195] == mem[_1195]
                mem[_743 + 128] = mem[_1195]
        else:
            mem[_749 + ceil32(return_data.size) + _760 + 32] = 0
            mem[_743] = _749 + ceil32(return_data.size)
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            staticcall address(_735).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _978 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _984 = mem[_978]
            require mem[_978] <= test266151307()
            require _978 + mem[_978] + 31 < _978 + return_data.size
            _989 = mem[_978 + mem[_978]]
            if mem[_978 + mem[_978]] > test266151307():
                revert with 'NH{q', 65
            if _978 + ceil32(return_data.size) + ceil32(ceil32(mem[_978 + mem[_978]])) + 1 > test266151307() or ceil32(ceil32(mem[_978 + mem[_978]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _978 + ceil32(return_data.size) + ceil32(ceil32(mem[_978 + mem[_978]])) + 1
            mem[_978 + ceil32(return_data.size)] = _989
            require _984 + _989 + 32 <= return_data.size
            s = 0
            while s < _989:
                mem[_978 + ceil32(return_data.size) + s + 32] = mem[_978 + _984 + s + 32]
                s = s + 32
                continue 
            if ceil32(_989) <= _989:
                mem[_743 + 32] = _978 + ceil32(return_data.size)
                staticcall address(_735).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1136] == mem[_1136 + 31 len 1]
                mem[_743 + 64] = mem[_1136 + 31 len 1]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                staticcall address(_735).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), address(arg3)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1177] == mem[_1177]
                mem[_743 + 96] = mem[_1177]
                mem[mem[64] + 4] = address(arg2)
                staticcall address(_735).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1193] == mem[_1193]
                mem[_743 + 128] = mem[_1193]
            else:
                mem[_978 + ceil32(return_data.size) + _989 + 32] = 0
                mem[_743 + 32] = _978 + ceil32(return_data.size)
                staticcall address(_735).decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1141] == mem[_1141 + 31 len 1]
                mem[_743 + 64] = mem[_1141 + 31 len 1]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                staticcall address(_735).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), address(arg3)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1180] == mem[_1180]
                mem[_743 + 96] = mem[_1180]
                mem[mem[64] + 4] = address(arg2)
                staticcall address(_735).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1196 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1196] == mem[_1196]
                mem[_743 + 128] = mem[_1196]
        if idx >= mem[(2 * ceil32(return_data.size)) + 544]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 576] = _743
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _738 = mem[64]
    mem[64] = mem[64] + 160
    mem[_738] = 0
    mem[_738 + 32] = 0
    mem[_738 + 64] = 0
    mem[_738 + 96] = 0
    mem[_738 + 128] = 0
    staticcall address(arg3).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _748 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _757 = mem[_748]
    require mem[_748] == mem[_748 + 12 len 20]
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _770 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _775 = mem[_770]
    require mem[_770] == mem[_770 + 18 len 14]
    _780 = mem[_770 + 32]
    require mem[_770 + 32] == mem[_770 + 50 len 14]
    require mem[_770 + 64] == mem[_770 + 92 len 4]
    _823 = mem[64]
    mem[64] = mem[64] + 160
    mem[_823] = address(arg1)
    mem[_823 + 32] = address(arg3)
    mem[_823 + 64] = address(_757)
    mem[_823 + 96] = Mask(112, 0, _775)
    mem[_823 + 128] = Mask(112, 0, _780)
    _824 = mem[64]
    mem[64] = mem[64] + 64
    mem[_824] = (2 * ceil32(return_data.size)) + 544
    mem[_824 + 32] = _823
    _825 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 192
    _831 = mem[(2 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 544]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 576
    t = mem[64] + (32 * _831) + 256
    u = mem[64] + 256
    while idx < _831:
        mem[u] = t + -_825 - 256
        _952 = mem[s]
        _956 = mem[mem[s]]
        mem[t] = 160
        _957 = mem[_956]
        mem[t + 160] = mem[_956]
        v = 0
        while v < _957:
            mem[t + v + 192] = mem[_956 + v + 32]
            v = v + 32
            continue 
        if ceil32(_957) <= _957:
            _1125 = mem[_952 + 32]
            mem[t + 32] = ceil32(_957) + 192
            _1139 = mem[_1125]
            mem[t + ceil32(_957) + 192] = mem[_1125]
            v = 0
            while v < _1139:
                mem[t + ceil32(_957) + v + 224] = mem[_1125 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1139) > _1139:
                mem[t + ceil32(_957) + _1139 + 224] = 0
            mem[t + 64] = mem[_952 + 95 len 1]
            mem[t + 96] = mem[_952 + 96]
            mem[t + 128] = mem[_952 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_957) + ceil32(_1139) + 224
            u = u + 32
            continue 
        mem[t + _957 + 192] = 0
        _1132 = mem[_952 + 32]
        mem[t + 32] = ceil32(_957) + 192
        _1142 = mem[_1132]
        mem[t + ceil32(_957) + 192] = mem[_1132]
        v = 0
        while v < _1142:
            mem[t + ceil32(_957) + v + 224] = mem[_1132 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1142) > _1142:
            mem[t + ceil32(_957) + _1142 + 224] = 0
        mem[t + 64] = mem[_952 + 95 len 1]
        mem[t + 96] = mem[_952 + 96]
        mem[t + 128] = mem[_952 + 128]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_957) + ceil32(_1142) + 224
        u = u + 32
        continue 
    _954 = mem[_824 + 32]
    mem[_825 + 64] = mem[mem[_824 + 32] + 12 len 20]
    mem[_825 + 96] = mem[_954 + 44 len 20]
    mem[_825 + 128] = mem[_954 + 76 len 20]
    mem[_825 + 160] = mem[_954 + 114 len 14]
    mem[_825 + 192] = mem[_954 + 146 len 14]
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_0e0d3a64(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _424 = mem[(32 * idx) + 128]
            _425 = mem[64]
            mem[64] = mem[64] + 160
            mem[_425] = 96
            mem[_425 + 32] = 96
            mem[_425 + 64] = 0
            mem[_425 + 96] = 0
            mem[_425 + 128] = 0
            _427 = mem[64]
            mem[64] = mem[64] + 160
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(_424).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _431 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _435 = mem[_431]
            require mem[_431] <= test266151307()
            require _431 + mem[_431] + 31 < _431 + return_data.size
            _441 = mem[_431 + mem[_431]]
            if mem[_431 + mem[_431]] > test266151307():
                revert with 'NH{q', 65
            if _431 + ceil32(return_data.size) + ceil32(ceil32(mem[_431 + mem[_431]])) + 1 > test266151307() or ceil32(ceil32(mem[_431 + mem[_431]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _431 + ceil32(return_data.size) + ceil32(ceil32(mem[_431 + mem[_431]])) + 1
            mem[_431 + ceil32(return_data.size)] = _441
            require _435 + _441 + 32 <= return_data.size
            s = 0
            while s < _441:
                mem[_431 + ceil32(return_data.size) + s + 32] = mem[_431 + _435 + s + 32]
                s = s + 32
                continue 
            if ceil32(_441) <= _441:
                mem[_427] = _431 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_424).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _639 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _644 = mem[_639]
                require mem[_639] <= test266151307()
                require _639 + mem[_639] + 31 < _639 + return_data.size
                _652 = mem[_639 + mem[_639]]
                if mem[_639 + mem[_639]] > test266151307():
                    revert with 'NH{q', 65
                if _639 + ceil32(return_data.size) + ceil32(ceil32(mem[_639 + mem[_639]])) + 1 > test266151307() or ceil32(ceil32(mem[_639 + mem[_639]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _639 + ceil32(return_data.size) + ceil32(ceil32(mem[_639 + mem[_639]])) + 1
                mem[_639 + ceil32(return_data.size)] = _652
                require _644 + _652 + 32 <= return_data.size
                s = 0
                while s < _652:
                    mem[_639 + ceil32(return_data.size) + s + 32] = mem[_639 + _644 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_652) <= _652:
                    mem[_427 + 32] = _639 + ceil32(return_data.size)
                    staticcall address(_424).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_840] == mem[_840 + 31 len 1]
                    mem[_427 + 64] = mem[_840 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_424).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_887] == mem[_887]
                    mem[_427 + 96] = mem[_887]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_424).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_929] == mem[_929]
                    mem[_427 + 128] = mem[_929]
                else:
                    mem[_639 + ceil32(return_data.size) + _652 + 32] = 0
                    mem[_427 + 32] = _639 + ceil32(return_data.size)
                    staticcall address(_424).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_847] == mem[_847 + 31 len 1]
                    mem[_427 + 64] = mem[_847 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_424).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_891] == mem[_891]
                    mem[_427 + 96] = mem[_891]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_424).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_933] == mem[_933]
                    mem[_427 + 128] = mem[_933]
            else:
                mem[_431 + ceil32(return_data.size) + _441 + 32] = 0
                mem[_427] = _431 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_424).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _642 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _649 = mem[_642]
                require mem[_642] <= test266151307()
                require _642 + mem[_642] + 31 < _642 + return_data.size
                _654 = mem[_642 + mem[_642]]
                if mem[_642 + mem[_642]] > test266151307():
                    revert with 'NH{q', 65
                if _642 + ceil32(return_data.size) + ceil32(ceil32(mem[_642 + mem[_642]])) + 1 > test266151307() or ceil32(ceil32(mem[_642 + mem[_642]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _642 + ceil32(return_data.size) + ceil32(ceil32(mem[_642 + mem[_642]])) + 1
                mem[_642 + ceil32(return_data.size)] = _654
                require _649 + _654 + 32 <= return_data.size
                s = 0
                while s < _654:
                    mem[_642 + ceil32(return_data.size) + s + 32] = mem[_642 + _649 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_654) <= _654:
                    mem[_427 + 32] = _642 + ceil32(return_data.size)
                    staticcall address(_424).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_843] == mem[_843 + 31 len 1]
                    mem[_427 + 64] = mem[_843 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_424).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_889] == mem[_889]
                    mem[_427 + 96] = mem[_889]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_424).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_931] == mem[_931]
                    mem[_427 + 128] = mem[_931]
                else:
                    mem[_642 + ceil32(return_data.size) + _654 + 32] = 0
                    mem[_427 + 32] = _642 + ceil32(return_data.size)
                    staticcall address(_424).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_848] == mem[_848 + 31 len 1]
                    mem[_427 + 64] = mem[_848 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_424).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_892] == mem[_892]
                    mem[_427 + 96] = mem[_892]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_424).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_934] == mem[_934]
                    mem[_427 + 128] = mem[_934]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _427
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _423 = mem[64]
        mem[mem[64]] = 32
        _426 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _426) + 64
        u = mem[64] + 64
        while idx < _426:
            mem[u] = t + -_423 - 64
            _628 = mem[s]
            _631 = mem[mem[s]]
            mem[t] = 160
            _633 = mem[_631]
            mem[t + 160] = mem[_631]
            v = 0
            while v < _633:
                mem[t + v + 192] = mem[_631 + v + 32]
                v = v + 32
                continue 
            if ceil32(_633) <= _633:
                _833 = mem[_628 + 32]
                mem[t + 32] = ceil32(_633) + 192
                _846 = mem[_833]
                mem[t + ceil32(_633) + 192] = mem[_833]
                v = 0
                while v < _846:
                    mem[t + ceil32(_633) + v + 224] = mem[_833 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_846) > _846:
                    mem[t + ceil32(_633) + _846 + 224] = 0
                mem[t + 64] = mem[_628 + 95 len 1]
                mem[t + 96] = mem[_628 + 96]
                mem[t + 128] = mem[_628 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_633) + ceil32(_846) + 224
                u = u + 32
                continue 
            mem[t + _633 + 192] = 0
            _839 = mem[_628 + 32]
            mem[t + 32] = ceil32(_633) + 192
            _850 = mem[_839]
            mem[t + ceil32(_633) + 192] = mem[_839]
            v = 0
            while v < _850:
                mem[t + ceil32(_633) + v + 224] = mem[_839 + v + 32]
                v = v + 32
                continue 
            if ceil32(_850) > _850:
                mem[t + ceil32(_633) + _850 + 224] = 0
            mem[t + 64] = mem[_628 + 95 len 1]
            mem[t + 96] = mem[_628 + 96]
            mem[t + 128] = mem[_628 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_633) + ceil32(_850) + 224
            u = u + 32
            continue 
    else:
        mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[var51001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var51001
        idx = var51002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
            mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        _821 = mem[96]
        idx = 0
        while idx < _821:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _827 = mem[(32 * idx) + 128]
            _828 = mem[64]
            mem[64] = mem[64] + 160
            mem[_828] = 96
            mem[_828 + 32] = 96
            mem[_828 + 64] = 0
            mem[_828 + 96] = 0
            mem[_828 + 128] = 0
            _830 = mem[64]
            mem[64] = mem[64] + 160
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(_827).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _849 = mem[_838]
            require mem[_838] <= test266151307()
            require _838 + mem[_838] + 31 < _838 + return_data.size
            _855 = mem[_838 + mem[_838]]
            if mem[_838 + mem[_838]] > test266151307():
                revert with 'NH{q', 65
            if _838 + ceil32(return_data.size) + ceil32(ceil32(mem[_838 + mem[_838]])) + 1 > test266151307() or ceil32(ceil32(mem[_838 + mem[_838]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _838 + ceil32(return_data.size) + ceil32(ceil32(mem[_838 + mem[_838]])) + 1
            mem[_838 + ceil32(return_data.size)] = _855
            require _849 + _855 + 32 <= return_data.size
            s = 0
            while s < _855:
                mem[_838 + ceil32(return_data.size) + s + 32] = mem[_838 + _849 + s + 32]
                _821 = mem[96]
                s = s + 32
                continue 
            if ceil32(_855) <= _855:
                mem[_830] = _838 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_827).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1010 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1014 = mem[_1010]
                require mem[_1010] <= test266151307()
                require _1010 + mem[_1010] + 31 < _1010 + return_data.size
                _1021 = mem[_1010 + mem[_1010]]
                if mem[_1010 + mem[_1010]] > test266151307():
                    revert with 'NH{q', 65
                if _1010 + ceil32(return_data.size) + ceil32(ceil32(mem[_1010 + mem[_1010]])) + 1 > test266151307() or ceil32(ceil32(mem[_1010 + mem[_1010]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1010 + ceil32(return_data.size) + ceil32(ceil32(mem[_1010 + mem[_1010]])) + 1
                mem[_1010 + ceil32(return_data.size)] = _1021
                require _1014 + _1021 + 32 <= return_data.size
                s = 0
                while s < _1021:
                    mem[_1010 + ceil32(return_data.size) + s + 32] = mem[_1010 + _1014 + s + 32]
                    _821 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1021) <= _1021:
                    mem[_830 + 32] = _1010 + ceil32(return_data.size)
                    staticcall address(_827).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1110] == mem[_1110 + 31 len 1]
                    mem[_830 + 64] = mem[_1110 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_827).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1144] == mem[_1144]
                    mem[_830 + 96] = mem[_1144]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_827).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1160] == mem[_1160]
                    mem[_830 + 128] = mem[_1160]
                else:
                    mem[_1010 + ceil32(return_data.size) + _1021 + 32] = 0
                    mem[_830 + 32] = _1010 + ceil32(return_data.size)
                    staticcall address(_827).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1117 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1117] == mem[_1117 + 31 len 1]
                    mem[_830 + 64] = mem[_1117 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_827).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1148] == mem[_1148]
                    mem[_830 + 96] = mem[_1148]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_827).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1164] == mem[_1164]
                    mem[_830 + 128] = mem[_1164]
            else:
                mem[_838 + ceil32(return_data.size) + _855 + 32] = 0
                mem[_830] = _838 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_827).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1013 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1017 = mem[_1013]
                require mem[_1013] <= test266151307()
                require _1013 + mem[_1013] + 31 < _1013 + return_data.size
                _1022 = mem[_1013 + mem[_1013]]
                if mem[_1013 + mem[_1013]] > test266151307():
                    revert with 'NH{q', 65
                if _1013 + ceil32(return_data.size) + ceil32(ceil32(mem[_1013 + mem[_1013]])) + 1 > test266151307() or ceil32(ceil32(mem[_1013 + mem[_1013]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1013 + ceil32(return_data.size) + ceil32(ceil32(mem[_1013 + mem[_1013]])) + 1
                mem[_1013 + ceil32(return_data.size)] = _1022
                require _1017 + _1022 + 32 <= return_data.size
                s = 0
                while s < _1022:
                    mem[_1013 + ceil32(return_data.size) + s + 32] = mem[_1013 + _1017 + s + 32]
                    _821 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1022) <= _1022:
                    mem[_830 + 32] = _1013 + ceil32(return_data.size)
                    staticcall address(_827).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1113] == mem[_1113 + 31 len 1]
                    mem[_830 + 64] = mem[_1113 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_827).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1146] == mem[_1146]
                    mem[_830 + 96] = mem[_1146]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_827).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1162] == mem[_1162]
                    mem[_830 + 128] = mem[_1162]
                else:
                    mem[_1013 + ceil32(return_data.size) + _1022 + 32] = 0
                    mem[_830 + 32] = _1013 + ceil32(return_data.size)
                    staticcall address(_827).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1118] == mem[_1118 + 31 len 1]
                    mem[_830 + 64] = mem[_1118 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_827).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1149] == mem[_1149]
                    mem[_830 + 96] = mem[_1149]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_827).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1165] == mem[_1165]
                    mem[_830 + 128] = mem[_1165]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _830
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            _821 = mem[96]
            idx = idx + 1
            continue 
        _826 = mem[64]
        mem[mem[64]] = 32
        _829 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _829) + 64
        u = mem[64] + 64
        while idx < _829:
            mem[u] = t + -_826 - 64
            _999 = mem[s]
            _1002 = mem[mem[s]]
            mem[t] = 160
            _1003 = mem[_1002]
            mem[t + 160] = mem[_1002]
            v = 0
            while v < _1003:
                mem[t + v + 192] = mem[_1002 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1003) <= _1003:
                _1104 = mem[_999 + 32]
                mem[t + 32] = ceil32(_1003) + 192
                _1116 = mem[_1104]
                mem[t + ceil32(_1003) + 192] = mem[_1104]
                v = 0
                while v < _1116:
                    mem[t + ceil32(_1003) + v + 224] = mem[_1104 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1116) > _1116:
                    mem[t + ceil32(_1003) + _1116 + 224] = 0
                mem[t + 64] = mem[_999 + 95 len 1]
                mem[t + 96] = mem[_999 + 96]
                mem[t + 128] = mem[_999 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1003) + ceil32(_1116) + 224
                u = u + 32
                continue 
            mem[t + _1003 + 192] = 0
            _1109 = mem[_999 + 32]
            mem[t + 32] = ceil32(_1003) + 192
            _1119 = mem[_1109]
            mem[t + ceil32(_1003) + 192] = mem[_1109]
            v = 0
            while v < _1119:
                mem[t + ceil32(_1003) + v + 224] = mem[_1109 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1119) > _1119:
                mem[t + ceil32(_1003) + _1119 + 224] = 0
            mem[t + 64] = mem[_999 + 95 len 1]
            mem[t + 96] = mem[_999 + 96]
            mem[t + 128] = mem[_999 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1003) + ceil32(_1119) + 224
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_23866426(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    mem[floor32(('cd', 4).length) + 97] = 96
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 0
    mem[floor32(('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + 257] = 0
    mem[floor32(('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + 129] = floor32(('cd', 4).length) + 161
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 321] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _551 = mem[(32 * idx) + 128]
            _553 = mem[64]
            mem[64] = mem[64] + 160
            mem[_553] = 96
            mem[_553 + 32] = 96
            mem[_553 + 64] = 0
            mem[_553 + 96] = 0
            mem[_553 + 128] = 0
            _555 = mem[64]
            mem[64] = mem[64] + 160
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(_551).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _562 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _566 = mem[_562]
            require mem[_562] <= test266151307()
            require _562 + mem[_562] + 31 < _562 + return_data.size
            _574 = mem[_562 + mem[_562]]
            if mem[_562 + mem[_562]] > test266151307():
                revert with 'NH{q', 65
            if _562 + ceil32(return_data.size) + ceil32(ceil32(mem[_562 + mem[_562]])) + 1 > test266151307() or ceil32(ceil32(mem[_562 + mem[_562]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _562 + ceil32(return_data.size) + ceil32(ceil32(mem[_562 + mem[_562]])) + 1
            mem[_562 + ceil32(return_data.size)] = _574
            require _566 + _574 + 32 <= return_data.size
            s = 0
            while s < _574:
                mem[_562 + ceil32(return_data.size) + s + 32] = mem[_562 + _566 + s + 32]
                s = s + 32
                continue 
            if ceil32(_574) <= _574:
                mem[_555] = _562 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_551).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _836 = mem[_829]
                require mem[_829] <= test266151307()
                require _829 + mem[_829] + 31 < _829 + return_data.size
                _848 = mem[_829 + mem[_829]]
                if mem[_829 + mem[_829]] > test266151307():
                    revert with 'NH{q', 65
                if _829 + ceil32(return_data.size) + ceil32(ceil32(mem[_829 + mem[_829]])) + 1 > test266151307() or ceil32(ceil32(mem[_829 + mem[_829]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _829 + ceil32(return_data.size) + ceil32(ceil32(mem[_829 + mem[_829]])) + 1
                mem[_829 + ceil32(return_data.size)] = _848
                require _836 + _848 + 32 <= return_data.size
                s = 0
                while s < _848:
                    mem[_829 + ceil32(return_data.size) + s + 32] = mem[_829 + _836 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_848) <= _848:
                    mem[_555 + 32] = _829 + ceil32(return_data.size)
                    staticcall address(_551).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1070 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1070] == mem[_1070 + 31 len 1]
                    mem[_555 + 64] = mem[_1070 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_551).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1116] == mem[_1116]
                    mem[_555 + 96] = mem[_1116]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_551).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1150 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1150] == mem[_1150]
                    mem[_555 + 128] = mem[_1150]
                else:
                    mem[_829 + ceil32(return_data.size) + _848 + 32] = 0
                    mem[_555 + 32] = _829 + ceil32(return_data.size)
                    staticcall address(_551).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1078 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1078] == mem[_1078 + 31 len 1]
                    mem[_555 + 64] = mem[_1078 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_551).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1120 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1120] == mem[_1120]
                    mem[_555 + 96] = mem[_1120]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_551).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1154 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1154] == mem[_1154]
                    mem[_555 + 128] = mem[_1154]
            else:
                mem[_562 + ceil32(return_data.size) + _574 + 32] = 0
                mem[_555] = _562 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_551).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _832 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _841 = mem[_832]
                require mem[_832] <= test266151307()
                require _832 + mem[_832] + 31 < _832 + return_data.size
                _850 = mem[_832 + mem[_832]]
                if mem[_832 + mem[_832]] > test266151307():
                    revert with 'NH{q', 65
                if _832 + ceil32(return_data.size) + ceil32(ceil32(mem[_832 + mem[_832]])) + 1 > test266151307() or ceil32(ceil32(mem[_832 + mem[_832]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _832 + ceil32(return_data.size) + ceil32(ceil32(mem[_832 + mem[_832]])) + 1
                mem[_832 + ceil32(return_data.size)] = _850
                require _841 + _850 + 32 <= return_data.size
                s = 0
                while s < _850:
                    mem[_832 + ceil32(return_data.size) + s + 32] = mem[_832 + _841 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_850) <= _850:
                    mem[_555 + 32] = _832 + ceil32(return_data.size)
                    staticcall address(_551).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1073 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1073] == mem[_1073 + 31 len 1]
                    mem[_555 + 64] = mem[_1073 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_551).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1118] == mem[_1118]
                    mem[_555 + 96] = mem[_1118]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_551).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1152] == mem[_1152]
                    mem[_555 + 128] = mem[_1152]
                else:
                    mem[_832 + ceil32(return_data.size) + _850 + 32] = 0
                    mem[_555 + 32] = _832 + ceil32(return_data.size)
                    staticcall address(_551).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1079 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1079] == mem[_1079 + 31 len 1]
                    mem[_555 + 64] = mem[_1079 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_551).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1121 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1121] == mem[_1121]
                    mem[_555 + 96] = mem[_1121]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_551).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1155] == mem[_1155]
                    mem[_555 + 128] = mem[_1155]
            if idx >= mem[floor32(('cd', 4).length) + 321]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 353] = _555
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _552 = mem[64]
        mem[64] = mem[64] + 160
        mem[_552] = 0
        mem[_552 + 32] = 0
        mem[_552 + 64] = 0
        mem[_552 + 96] = 0
        mem[_552 + 128] = 0
        if mem[96] != 2:
            revert with 0, 'Exactly two token addresses required'
        staticcall address(cd[68]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _564 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _569 = mem[_564]
        require mem[_564] == mem[_564 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _589 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_589)
        staticcall address(_569).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_589)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _602 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _608 = mem[_602]
        require mem[_602] == mem[_602 + 12 len 20]
        staticcall mem[_602 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _627 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _630 = mem[_627]
        require mem[_627] == mem[_627 + 18 len 14]
        _637 = mem[_627 + 32]
        require mem[_627 + 32] == mem[_627 + 50 len 14]
        require mem[_627 + 64] == mem[_627 + 92 len 4]
        _672 = mem[64]
        mem[64] = mem[64] + 160
        mem[_672] = address(_608)
        mem[_672 + 32] = address(cd[68])
        mem[_672 + 64] = address(_569)
        mem[_672 + 96] = Mask(112, 0, _630)
        mem[_672 + 128] = Mask(112, 0, _637)
        _674 = mem[64]
        mem[64] = mem[64] + 64
        mem[_674] = floor32(('cd', 4).length) + 321
        mem[_674 + 32] = _672
        _676 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _686 = mem[floor32(('cd', 4).length) + 321]
        mem[mem[64] + 224] = mem[floor32(('cd', 4).length) + 321]
        idx = 0
        s = floor32(('cd', 4).length) + 353
        t = mem[64] + (32 * _686) + 256
        u = mem[64] + 256
        while idx < _686:
            mem[u] = t + -_676 - 256
            _818 = mem[s]
            _822 = mem[mem[s]]
            mem[t] = 160
            _824 = mem[_822]
            mem[t + 160] = mem[_822]
            v = 0
            while v < _824:
                mem[t + v + 192] = mem[_822 + v + 32]
                v = v + 32
                continue 
            if ceil32(_824) <= _824:
                _1060 = mem[_818 + 32]
                mem[t + 32] = ceil32(_824) + 192
                _1077 = mem[_1060]
                mem[t + ceil32(_824) + 192] = mem[_1060]
                v = 0
                while v < _1077:
                    mem[t + ceil32(_824) + v + 224] = mem[_1060 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1077) > _1077:
                    mem[t + ceil32(_824) + _1077 + 224] = 0
                mem[t + 64] = mem[_818 + 95 len 1]
                mem[t + 96] = mem[_818 + 96]
                mem[t + 128] = mem[_818 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_824) + ceil32(_1077) + 224
                u = u + 32
                continue 
            mem[t + _824 + 192] = 0
            _1069 = mem[_818 + 32]
            mem[t + 32] = ceil32(_824) + 192
            _1081 = mem[_1069]
            mem[t + ceil32(_824) + 192] = mem[_1069]
            v = 0
            while v < _1081:
                mem[t + ceil32(_824) + v + 224] = mem[_1069 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1081) > _1081:
                mem[t + ceil32(_824) + _1081 + 224] = 0
            mem[t + 64] = mem[_818 + 95 len 1]
            mem[t + 96] = mem[_818 + 96]
            mem[t + 128] = mem[_818 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_824) + ceil32(_1081) + 224
            u = u + 32
            continue 
        _820 = mem[_674 + 32]
        mem[_676 + 64] = mem[mem[_674 + 32] + 12 len 20]
        mem[_676 + 96] = mem[_820 + 44 len 20]
        mem[_676 + 128] = mem[_820 + 76 len 20]
        mem[_676 + 160] = mem[_820 + 114 len 14]
        mem[_676 + 192] = mem[_820 + 146 len 14]
    else:
        mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
        mem[var56001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353
        s = var56001
        idx = var56002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
            mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353
            s = s + 32
            idx = idx - 1
            continue 
        _1048 = mem[96]
        idx = 0
        while idx < _1048:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1053 = mem[(32 * idx) + 128]
            _1055 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1055] = 96
            mem[_1055 + 32] = 96
            mem[_1055 + 64] = 0
            mem[_1055 + 96] = 0
            mem[_1055 + 128] = 0
            _1057 = mem[64]
            mem[64] = mem[64] + 160
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(_1053).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1068 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1080 = mem[_1068]
            require mem[_1068] <= test266151307()
            require _1068 + mem[_1068] + 31 < _1068 + return_data.size
            _1087 = mem[_1068 + mem[_1068]]
            if mem[_1068 + mem[_1068]] > test266151307():
                revert with 'NH{q', 65
            if _1068 + ceil32(return_data.size) + ceil32(ceil32(mem[_1068 + mem[_1068]])) + 1 > test266151307() or ceil32(ceil32(mem[_1068 + mem[_1068]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1068 + ceil32(return_data.size) + ceil32(ceil32(mem[_1068 + mem[_1068]])) + 1
            mem[_1068 + ceil32(return_data.size)] = _1087
            require _1080 + _1087 + 32 <= return_data.size
            s = 0
            while s < _1087:
                mem[_1068 + ceil32(return_data.size) + s + 32] = mem[_1068 + _1080 + s + 32]
                _1048 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1087) <= _1087:
                mem[_1057] = _1068 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_1053).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1269 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1274 = mem[_1269]
                require mem[_1269] <= test266151307()
                require _1269 + mem[_1269] + 31 < _1269 + return_data.size
                _1281 = mem[_1269 + mem[_1269]]
                if mem[_1269 + mem[_1269]] > test266151307():
                    revert with 'NH{q', 65
                if _1269 + ceil32(return_data.size) + ceil32(ceil32(mem[_1269 + mem[_1269]])) + 1 > test266151307() or ceil32(ceil32(mem[_1269 + mem[_1269]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1269 + ceil32(return_data.size) + ceil32(ceil32(mem[_1269 + mem[_1269]])) + 1
                mem[_1269 + ceil32(return_data.size)] = _1281
                require _1274 + _1281 + 32 <= return_data.size
                s = 0
                while s < _1281:
                    mem[_1269 + ceil32(return_data.size) + s + 32] = mem[_1269 + _1274 + s + 32]
                    _1048 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1281) <= _1281:
                    mem[_1057 + 32] = _1269 + ceil32(return_data.size)
                    staticcall address(_1053).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1374] == mem[_1374 + 31 len 1]
                    mem[_1057 + 64] = mem[_1374 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_1053).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1408] == mem[_1408]
                    mem[_1057 + 96] = mem[_1408]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_1053).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1424] == mem[_1424]
                    mem[_1057 + 128] = mem[_1424]
                else:
                    mem[_1269 + ceil32(return_data.size) + _1281 + 32] = 0
                    mem[_1057 + 32] = _1269 + ceil32(return_data.size)
                    staticcall address(_1053).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1381] == mem[_1381 + 31 len 1]
                    mem[_1057 + 64] = mem[_1381 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_1053).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1412] == mem[_1412]
                    mem[_1057 + 96] = mem[_1412]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_1053).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1428] == mem[_1428]
                    mem[_1057 + 128] = mem[_1428]
            else:
                mem[_1068 + ceil32(return_data.size) + _1087 + 32] = 0
                mem[_1057] = _1068 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                staticcall address(_1053).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1272 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1277 = mem[_1272]
                require mem[_1272] <= test266151307()
                require _1272 + mem[_1272] + 31 < _1272 + return_data.size
                _1282 = mem[_1272 + mem[_1272]]
                if mem[_1272 + mem[_1272]] > test266151307():
                    revert with 'NH{q', 65
                if _1272 + ceil32(return_data.size) + ceil32(ceil32(mem[_1272 + mem[_1272]])) + 1 > test266151307() or ceil32(ceil32(mem[_1272 + mem[_1272]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1272 + ceil32(return_data.size) + ceil32(ceil32(mem[_1272 + mem[_1272]])) + 1
                mem[_1272 + ceil32(return_data.size)] = _1282
                require _1277 + _1282 + 32 <= return_data.size
                s = 0
                while s < _1282:
                    mem[_1272 + ceil32(return_data.size) + s + 32] = mem[_1272 + _1277 + s + 32]
                    _1048 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1282) <= _1282:
                    mem[_1057 + 32] = _1272 + ceil32(return_data.size)
                    staticcall address(_1053).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1377] == mem[_1377 + 31 len 1]
                    mem[_1057 + 64] = mem[_1377 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_1053).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1410] == mem[_1410]
                    mem[_1057 + 96] = mem[_1410]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_1053).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1426] == mem[_1426]
                    mem[_1057 + 128] = mem[_1426]
                else:
                    mem[_1272 + ceil32(return_data.size) + _1282 + 32] = 0
                    mem[_1057 + 32] = _1272 + ceil32(return_data.size)
                    staticcall address(_1053).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1382] == mem[_1382 + 31 len 1]
                    mem[_1057 + 64] = mem[_1382 + 31 len 1]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(cd[68])
                    staticcall address(_1053).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1413] == mem[_1413]
                    mem[_1057 + 96] = mem[_1413]
                    mem[mem[64] + 4] = address(cd[36])
                    staticcall address(_1053).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1429] == mem[_1429]
                    mem[_1057 + 128] = mem[_1429]
            if idx >= mem[floor32(('cd', 4).length) + 321]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 353] = _1057
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            _1048 = mem[96]
            idx = idx + 1
            continue 
        _1054 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1054] = 0
        mem[_1054 + 32] = 0
        mem[_1054 + 64] = 0
        mem[_1054 + 96] = 0
        mem[_1054 + 128] = 0
        if mem[96] != 2:
            revert with 0, 'Exactly two token addresses required'
        staticcall address(cd[68]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1076 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1084 = mem[_1076]
        require mem[_1076] == mem[_1076 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _1103 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_1103)
        staticcall address(_1084).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_1103)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1135 = mem[_1129]
        require mem[_1129] == mem[_1129 + 12 len 20]
        staticcall mem[_1129 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1156 = mem[_1145]
        require mem[_1145] == mem[_1145 + 18 len 14]
        _1161 = mem[_1145 + 32]
        require mem[_1145 + 32] == mem[_1145 + 50 len 14]
        require mem[_1145 + 64] == mem[_1145 + 92 len 4]
        _1185 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1185] = address(_1135)
        mem[_1185 + 32] = address(cd[68])
        mem[_1185 + 64] = address(_1084)
        mem[_1185 + 96] = Mask(112, 0, _1156)
        mem[_1185 + 128] = Mask(112, 0, _1161)
        _1186 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1186] = floor32(('cd', 4).length) + 321
        mem[_1186 + 32] = _1185
        _1187 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _1193 = mem[floor32(('cd', 4).length) + 321]
        mem[mem[64] + 224] = mem[floor32(('cd', 4).length) + 321]
        idx = 0
        s = floor32(('cd', 4).length) + 353
        t = mem[64] + (32 * _1193) + 256
        u = mem[64] + 256
        while idx < _1193:
            mem[u] = t + -_1187 - 256
            _1257 = mem[s]
            _1261 = mem[mem[s]]
            mem[t] = 160
            _1262 = mem[_1261]
            mem[t + 160] = mem[_1261]
            v = 0
            while v < _1262:
                mem[t + v + 192] = mem[_1261 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1262) <= _1262:
                _1368 = mem[_1257 + 32]
                mem[t + 32] = ceil32(_1262) + 192
                _1380 = mem[_1368]
                mem[t + ceil32(_1262) + 192] = mem[_1368]
                v = 0
                while v < _1380:
                    mem[t + ceil32(_1262) + v + 224] = mem[_1368 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1380) > _1380:
                    mem[t + ceil32(_1262) + _1380 + 224] = 0
                mem[t + 64] = mem[_1257 + 95 len 1]
                mem[t + 96] = mem[_1257 + 96]
                mem[t + 128] = mem[_1257 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1262) + ceil32(_1380) + 224
                u = u + 32
                continue 
            mem[t + _1262 + 192] = 0
            _1373 = mem[_1257 + 32]
            mem[t + 32] = ceil32(_1262) + 192
            _1383 = mem[_1373]
            mem[t + ceil32(_1262) + 192] = mem[_1373]
            v = 0
            while v < _1383:
                mem[t + ceil32(_1262) + v + 224] = mem[_1373 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1383) > _1383:
                mem[t + ceil32(_1262) + _1383 + 224] = 0
            mem[t + 64] = mem[_1257 + 95 len 1]
            mem[t + 96] = mem[_1257 + 96]
            mem[t + 128] = mem[_1257 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1262) + ceil32(_1383) + 224
            u = u + 32
            continue 
        _1259 = mem[_1186 + 32]
        mem[_1187 + 64] = mem[mem[_1186 + 32] + 12 len 20]
        mem[_1187 + 96] = mem[_1259 + 44 len 20]
        mem[_1187 + 128] = mem[_1259 + 76 len 20]
        mem[_1187 + 160] = mem[_1259 + 114 len 14]
        mem[_1187 + 192] = mem[_1259 + 146 len 14]
    return memory
      from mem[64]
       len t - mem[64]
}



}
