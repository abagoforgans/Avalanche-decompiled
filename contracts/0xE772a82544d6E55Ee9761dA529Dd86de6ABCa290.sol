contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ext_code.size(arg1) <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 320 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[31 len 1]
    mem[(11 * ceil32(return_data.size)) + 576] = mem[(2 * ceil32(return_data.size)) + 364 len 20]
    mem[(11 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + 396 len 20]
    mem[(11 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 498 len 14]
    mem[(11 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 530 len 14]
    return address(arg1), 
           mem[(11 * ceil32(return_data.size)) + 576 len 64],
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[(11 * ceil32(return_data.size)) + 704 len 64]
}

function getPairs(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        if var175003 < 1:
            revert with 'NH{q', 17
        if var179002 >= var179001:
            mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 32
            mem[floor32(arg1.length) + (32 * arg1.length) + 161] = arg1.length
            idx = 0
            s = floor32(arg1.length) + 129
            t = floor32(arg1.length) + (32 * arg1.length) + 193
            while idx < mem[floor32(arg1.length) + 97]:
                _1114 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1114 + 44 len 20]
                mem[t + 64] = mem[_1114 + 76 len 20]
                mem[t + 96] = mem[_1114 + 114 len 14]
                mem[t + 128] = mem[_1114 + 146 len 14]
                mem[t + 160] = mem[_1114 + 178 len 14]
                mem[t + 192] = mem[_1114 + 210 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len floor32(arg1.length) + (257 * arg1.length) + -mem[64] + 193
        if var181001 >= arg1.length:
            revert with 'NH{q', 50
        mem[64] = floor32(arg1.length) + (32 * arg1.length) + 353
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 321] = 0
        if ext_code.size(var187002) <= 0:
            if var187004 >= arg1.length:
                revert with 'NH{q', 50
            mem[(32 * var187004) + floor32(arg1.length) + 129] = floor32(arg1.length) + (32 * arg1.length) + 129
            if var187004 == -1:
                revert with 'NH{q', 17
            if arg1.length < 1:
                revert with 'NH{q', 17
            if var187004 + 1 < arg1.length - 1:
                if var187004 + 1 >= arg1.length:
                    revert with 'NH{q', 50
                var187002 = mem[(32 * var187004 + 1) + 128]
                var187004 = var187004 + 1
                continue 
            mem[floor32(arg1.length) + (32 * arg1.length) + 353] = 32
            mem[floor32(arg1.length) + (32 * arg1.length) + 385] = arg1.length
            idx = 0
            s = floor32(arg1.length) + 129
            t = floor32(arg1.length) + (32 * arg1.length) + 417
            while idx < mem[floor32(arg1.length) + 97]:
                _1752 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1752 + 44 len 20]
                mem[t + 64] = mem[_1752 + 76 len 20]
                mem[t + 96] = mem[_1752 + 114 len 14]
                mem[t + 128] = mem[_1752 + 146 len 14]
                mem[t + 160] = mem[_1752 + 178 len 14]
                mem[t + 192] = mem[_1752 + 210 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len floor32(arg1.length) + (257 * arg1.length) + -mem[64] + 417
        require ext_code.size(address(var187002))
        staticcall address(var187002).totalSupply() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + 353] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 353
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            if var187004 >= arg1.length:
                revert with 'NH{q', 50
            mem[(32 * var187004) + floor32(arg1.length) + 129] = floor32(arg1.length) + (32 * arg1.length) + 129
            if var187004 == -1:
                revert with 'NH{q', 17
            if arg1.length < 1:
                revert with 'NH{q', 17
            if var187004 + 1 < arg1.length - 1:
                if var187004 + 1 >= arg1.length:
                    revert with 'NH{q', 50
                var187002 = mem[(32 * var187004 + 1) + 128]
                var187004 = var187004 + 1
                continue 
            mem[floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 353] = 32
            mem[floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 385] = arg1.length
            idx = 0
            s = floor32(arg1.length) + 129
            t = floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 417
            while idx < mem[floor32(arg1.length) + 97]:
                _1753 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1753 + 44 len 20]
                mem[t + 64] = mem[_1753 + 76 len 20]
                mem[t + 96] = mem[_1753 + 114 len 14]
                mem[t + 128] = mem[_1753 + 146 len 14]
                mem[t + 160] = mem[_1753 + 178 len 14]
                mem[t + 192] = mem[_1753 + 210 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len floor32(arg1.length) + (257 * arg1.length) + ceil32(return_data.size) + -mem[64] + 417
        require ext_code.size(address(var187002))
        staticcall address(var187002).getReserves() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 353 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 353] = address(var187002)
        require ext_code.size(address(var187002))
        staticcall address(var187002).token0() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 385] = ext_call.return_data[12 len 20]
        require ext_code.size(address(var187002))
        staticcall address(var187002).token1() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 417] = ext_call.return_data[12 len 20]
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 449] = Mask(112, 0, ext_call.return_data[0])
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 481] = Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(address(var187002))
        staticcall address(var187002).token0() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 513] = ext_call.return_data[31 len 1]
        require ext_code.size(address(var187002))
        staticcall address(var187002).token1() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + (8 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        mem[floor32(arg1.length) + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(arg1.length) + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 577
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 545] = ext_call.return_data[31 len 1]
        if var187004 >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * var187004) + floor32(arg1.length) + 129] = floor32(arg1.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 353
        if var187004 == -1:
            revert with 'NH{q', 17
        if arg1.length < 1:
            revert with 'NH{q', 17
        if var187004 + 1 < arg1.length - 1:
            if var187004 + 1 >= arg1.length:
                revert with 'NH{q', 50
            var187002 = mem[(32 * var187004 + 1) + 128]
            var187004 = var187004 + 1
            continue 
        mem[floor32(arg1.length) + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 577] = 32
        mem[floor32(arg1.length) + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 609] = arg1.length
        idx = 0
        s = floor32(arg1.length) + 129
        t = floor32(arg1.length) + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 641
        while idx < mem[floor32(arg1.length) + 97]:
            _1754 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1754 + 44 len 20]
            mem[t + 64] = mem[_1754 + 76 len 20]
            mem[t + 96] = mem[_1754 + 114 len 14]
            mem[t + 128] = mem[_1754 + 146 len 14]
            mem[t + 160] = mem[_1754 + 178 len 14]
            mem[t + 192] = mem[_1754 + 210 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len floor32(arg1.length) + (257 * arg1.length) + (11 * ceil32(return_data.size)) + -mem[64] + 641
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 353
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 321] = 0
    mem[var34001] = floor32(arg1.length) + (32 * arg1.length) + 129
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 321] = 0
        mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    if var182003 < 1:
        revert with 'NH{q', 17
    if var186002 >= var186001:
        _1258 = mem[64]
        mem[mem[64]] = 32
        _1263 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _1263:
            _1425 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1425 + 44 len 20]
            mem[t + 64] = mem[_1425 + 76 len 20]
            mem[t + 96] = mem[_1425 + 114 len 14]
            mem[t + 128] = mem[_1425 + 146 len 14]
            mem[t + 160] = mem[_1425 + 178 len 14]
            mem[t + 192] = mem[_1425 + 210 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1258 + (224 * _1263) + -mem[64] + 64
    if var188001 >= mem[96]:
        revert with 'NH{q', 50
    _1859 = mem[64]
    mem[64] = mem[64] + 224
    mem[_1859] = 0
    mem[_1859 + 32] = 0
    mem[_1859 + 64] = 0
    mem[_1859 + 96] = 0
    mem[_1859 + 128] = 0
    mem[_1859 + 160] = 0
    mem[_1859 + 192] = 0
    if ext_code.size(var194002) <= 0:
        if var194004 >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * var194004) + floor32(arg1.length) + 129] = _1859
        if var194004 == -1:
            revert with 'NH{q', 17
        if mem[96] < 1:
            revert with 'NH{q', 17
        if var194004 + 1 < mem[96] - 1:
            if var194004 + 1 >= mem[96]:
                revert with 'NH{q', 50
            var194002 = mem[(32 * var194004 + 1) + 128]
            var194004 = var194004 + 1
            continue 
        _1871 = mem[64]
        mem[mem[64]] = 32
        _1874 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _1874:
            _1939 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1939 + 44 len 20]
            mem[t + 64] = mem[_1939 + 76 len 20]
            mem[t + 96] = mem[_1939 + 114 len 14]
            mem[t + 128] = mem[_1939 + 146 len 14]
            mem[t + 160] = mem[_1939 + 178 len 14]
            mem[t + 192] = mem[_1939 + 210 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1871 + (224 * _1874) + -mem[64] + 64
    require ext_code.size(address(var194002))
    staticcall address(var194002).totalSupply() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1863 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1863] == mem[_1863]
    if mem[_1863] <= 0:
        if var194004 >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * var194004) + floor32(arg1.length) + 129] = _1859
        if var194004 == -1:
            revert with 'NH{q', 17
        if mem[96] < 1:
            revert with 'NH{q', 17
        if var194004 + 1 < mem[96] - 1:
            if var194004 + 1 >= mem[96]:
                revert with 'NH{q', 50
            var194002 = mem[(32 * var194004 + 1) + 128]
            var194004 = var194004 + 1
            continue 
        _1881 = mem[64]
        mem[mem[64]] = 32
        _1887 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _1887:
            _1940 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1940 + 44 len 20]
            mem[t + 64] = mem[_1940 + 76 len 20]
            mem[t + 96] = mem[_1940 + 114 len 14]
            mem[t + 128] = mem[_1940 + 146 len 14]
            mem[t + 160] = mem[_1940 + 178 len 14]
            mem[t + 192] = mem[_1940 + 210 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1881 + (224 * _1887) + -mem[64] + 64
    require ext_code.size(address(var194002))
    staticcall address(var194002).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1868 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1873 = mem[_1868]
    require mem[_1868] == mem[_1868 + 18 len 14]
    _1876 = mem[_1868 + 32]
    require mem[_1868 + 32] == mem[_1868 + 50 len 14]
    _1883 = mem[64]
    mem[64] = mem[64] + 224
    mem[_1883] = address(var194002)
    require ext_code.size(address(var194002))
    staticcall address(var194002).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1886 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1886] == mem[_1886 + 12 len 20]
    mem[_1883 + 32] = mem[_1886 + 12 len 20]
    require ext_code.size(address(var194002))
    staticcall address(var194002).token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1897 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1897] == mem[_1897 + 12 len 20]
    mem[_1883 + 64] = mem[_1897 + 12 len 20]
    mem[_1883 + 96] = Mask(112, 0, _1873)
    mem[_1883 + 128] = Mask(112, 0, _1876)
    require ext_code.size(address(var194002))
    staticcall address(var194002).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1907 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1907] == mem[_1907 + 12 len 20]
    require ext_code.size(mem[_1907 + 12 len 20])
    staticcall mem[_1907 + 12 len 20].decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1914 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1914] == mem[_1914 + 31 len 1]
    mem[_1883 + 160] = mem[_1914 + 31 len 1]
    require ext_code.size(address(var194002))
    staticcall address(var194002).token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1918 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1918] == mem[_1918 + 12 len 20]
    require ext_code.size(mem[_1918 + 12 len 20])
    staticcall mem[_1918 + 12 len 20].decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1922 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1922] == mem[_1922 + 31 len 1]
    mem[_1883 + 192] = mem[_1922 + 31 len 1]
    if var194004 >= mem[floor32(arg1.length) + 97]:
        revert with 'NH{q', 50
    mem[(32 * var194004) + floor32(arg1.length) + 129] = _1883
    if var194004 == -1:
        revert with 'NH{q', 17
    if mem[96] < 1:
        revert with 'NH{q', 17
    if var194004 + 1 < mem[96] - 1:
        if var194004 + 1 >= mem[96]:
            revert with 'NH{q', 50
        var194002 = mem[(32 * var194004 + 1) + 128]
        var194004 = var194004 + 1
        continue 
    _1927 = mem[64]
    mem[mem[64]] = 32
    _1929 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _1929:
        _1941 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1941 + 44 len 20]
        mem[t + 64] = mem[_1941 + 76 len 20]
        mem[t + 96] = mem[_1941 + 114 len 14]
        mem[t + 128] = mem[_1941 + 146 len 14]
        mem[t + 160] = mem[_1941 + 178 len 14]
        mem[t + 192] = mem[_1941 + 210 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _1927 + (224 * _1929) + -mem[64] + 64
}



}
