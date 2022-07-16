contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getTokenDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(arg1), ext_call.return_data[0]
}

function getTokenTotalSupply(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(arg1), ext_call.return_data[0]
}

function getTokenName(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[224] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[224]
    require mem[224] <= test266151307()
    require mem[224] + 255 < return_data.size + 224
    _7 = mem[mem[224] + 224]
    if mem[mem[224] + 224] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[224] + 224])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224] + 224]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256 len ceil32(_7)] = mem[_6 + 256 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[192] = ceil32(return_data.size) + 224
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = 64
        _29 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 128 len ceil32(_29)] = mem[ceil32(return_data.size) + 256 len ceil32(_29)]
        if ceil32(_29) > _29:
            mem[mem[64] + _29 + 128] = 0
        return 32, arg1 << 192, 64, mem[mem[64] + 96 len ceil32(_29) + 32]
    mem[ceil32(return_data.size) + _7 + 256] = 0
    mem[192] = ceil32(return_data.size) + 224
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint64(arg1) << 96
    mem[mem[64] + 64] = 64
    _32 = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 128 len ceil32(_32)] = mem[ceil32(return_data.size) + 256 len ceil32(_32)]
    if ceil32(_32) > _32:
        mem[mem[64] + _32 + 128] = 0
    return 32, arg1 << 192, 64, mem[mem[64] + 96 len ceil32(_32) + 32]
}

function getTokenSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[224] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[224]
    require mem[224] <= test266151307()
    require mem[224] + 255 < return_data.size + 224
    _7 = mem[mem[224] + 224]
    if mem[mem[224] + 224] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[224] + 224])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[224] + 224])) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224] + 224]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256 len ceil32(_7)] = mem[_6 + 256 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[192] = ceil32(return_data.size) + 224
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = 64
        _29 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 128 len ceil32(_29)] = mem[ceil32(return_data.size) + 256 len ceil32(_29)]
        if ceil32(_29) > _29:
            mem[mem[64] + _29 + 128] = 0
        return 32, arg1 << 192, 64, mem[mem[64] + 96 len ceil32(_29) + 32]
    mem[ceil32(return_data.size) + _7 + 256] = 0
    mem[192] = ceil32(return_data.size) + 224
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint64(arg1) << 96
    mem[mem[64] + 64] = 64
    _32 = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 128 len ceil32(_32)] = mem[ceil32(return_data.size) + 256 len ceil32(_32)]
    if ceil32(_32) > _32:
        mem[mem[64] + _32 + 128] = 0
    return 32, arg1 << 192, 64, mem[mem[64] + 96 len ceil32(_32) + 32]
}

function sub_27f7587e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _49 = mem[64]
                mem[64] = mem[64] + 64
                mem[_49] = 0
                mem[_49 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _49
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0xb37bdb05 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    _57 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_57] = 0
                    mem[_57 + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _57
                else:
                    _56 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _64 = mem[64]
                    if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 64
                    require mem[_56] == mem[_56 + 12 len 20]
                    mem[_64] = mem[_56]
                    mem[_64 + 32] = mem[_56 + 32]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            _72 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_72 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _38 + (64 * _39) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 0
            mem[_82 + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _82
        else:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(this.address)
            staticcall this.address.0xb37bdb05 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 0
                mem[_87 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _87
            else:
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _89 = mem[64]
                if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 64
                require mem[_86] == mem[_86 + 12 len 20]
                mem[_89] = mem[_86]
                mem[_89 + 32] = mem[_86 + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _89
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _76 = mem[64]
    mem[mem[64]] = 32
    _77 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _77:
        _93 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_93 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _76 + (64 * _77) + -mem[64] + 64
}

function sub_d479bbf6(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _49 = mem[64]
                mem[64] = mem[64] + 64
                mem[_49] = 0
                mem[_49 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _49
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x785c7cf6 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    _57 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_57] = 0
                    mem[_57 + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _57
                else:
                    _56 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _64 = mem[64]
                    if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 64
                    require mem[_56] == mem[_56 + 12 len 20]
                    mem[_64] = mem[_56]
                    mem[_64 + 32] = mem[_56 + 32]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            _72 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_72 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _38 + (64 * _39) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 0
            mem[_82 + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _82
        else:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(this.address)
            staticcall this.address.0x785c7cf6 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 0
                mem[_87 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _87
            else:
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _89 = mem[64]
                if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 64
                require mem[_86] == mem[_86 + 12 len 20]
                mem[_89] = mem[_86]
                mem[_89 + 32] = mem[_86 + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _89
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _76 = mem[64]
    mem[mem[64]] = 32
    _77 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _77:
        _93 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_93 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _76 + (64 * _77) + -mem[64] + 64
}

function sub_07be46df(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _66 = mem[64]
                mem[64] = mem[64] + 64
                mem[_66] = 0
                _67 = mem[64]
                mem[64] = mem[64] + 32
                mem[_67] = 0
                mem[_66 + 32] = _67
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _66
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x81a73ad500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x81a73ad5 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_81] = 0
                    _82 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_82] = 0
                    mem[_81 + 32] = _82
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _81
                else:
                    _80 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _86 = mem[_80]
                    require mem[_80] <= test266151307()
                    require return_data.size - mem[_80] >= 64
                    if not bool(_80 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 0, 65
                    mem[64] = _80 + ceil32(return_data.size) + 64
                    require mem[_80 + _86] == mem[_80 + _86 + 12 len 20]
                    mem[_80 + ceil32(return_data.size)] = mem[_80 + _86]
                    _95 = mem[_80 + _86 + 32]
                    require mem[_80 + _86 + 32] <= test266151307()
                    require _80 + _86 + mem[_80 + _86 + 32] + 31 < _80 + return_data.size
                    _97 = mem[_80 + _86 + mem[_80 + _86 + 32]]
                    if mem[_80 + _86 + mem[_80 + _86 + 32]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_80 + _86 + mem[_80 + _86 + 32]])) + 65 < 64 or _80 + ceil32(return_data.size) + ceil32(ceil32(mem[_80 + _86 + mem[_80 + _86 + 32]])) + 65 > test266151307():
                        revert with 0, 65
                    mem[64] = _80 + ceil32(return_data.size) + ceil32(ceil32(mem[_80 + _86 + mem[_80 + _86 + 32]])) + 65
                    mem[_80 + ceil32(return_data.size) + 64] = _97
                    require _86 + _95 + _97 + 32 <= return_data.size
                    s = 0
                    while s < _97:
                        mem[s + _80 + ceil32(return_data.size) + 96] = mem[s + _80 + _86 + _95 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_97) > _97:
                        mem[_80 + ceil32(return_data.size) + _97 + 96] = 0
                    mem[_80 + ceil32(return_data.size) + 32] = _80 + ceil32(return_data.size) + 64
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _80 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _57 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _57:
            mem[t] = u + -_56 - 64
            _108 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _112 = mem[_108 + 32]
            mem[u + 32] = 64
            _113 = mem[_112]
            mem[u + 64] = mem[_112]
            v = 0
            while v < _113:
                mem[v + u + 96] = mem[v + _112 + 32]
                v = v + 32
                continue 
            if ceil32(_113) > _113:
                mem[u + _113 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_113) + u + 96
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 96
        mem[128] = (32 * ('cd', 4).length) + 128
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 96
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_124] = 0
                _125 = mem[64]
                mem[64] = mem[64] + 32
                mem[_125] = 0
                mem[_124 + 32] = _125
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _124
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x81a73ad500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x81a73ad5 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    _131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_131] = 0
                    _132 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_132] = 0
                    mem[_131 + 32] = _132
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _131
                else:
                    _130 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _134 = mem[_130]
                    require mem[_130] <= test266151307()
                    require return_data.size - mem[_130] >= 64
                    if not bool(_130 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 0, 65
                    mem[64] = _130 + ceil32(return_data.size) + 64
                    require mem[_130 + _134] == mem[_130 + _134 + 12 len 20]
                    mem[_130 + ceil32(return_data.size)] = mem[_130 + _134]
                    _137 = mem[_130 + _134 + 32]
                    require mem[_130 + _134 + 32] <= test266151307()
                    require _130 + _134 + mem[_130 + _134 + 32] + 31 < _130 + return_data.size
                    _138 = mem[_130 + _134 + mem[_130 + _134 + 32]]
                    if mem[_130 + _134 + mem[_130 + _134 + 32]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_130 + _134 + mem[_130 + _134 + 32]])) + 65 < 64 or _130 + ceil32(return_data.size) + ceil32(ceil32(mem[_130 + _134 + mem[_130 + _134 + 32]])) + 65 > test266151307():
                        revert with 0, 65
                    mem[64] = _130 + ceil32(return_data.size) + ceil32(ceil32(mem[_130 + _134 + mem[_130 + _134 + 32]])) + 65
                    mem[_130 + ceil32(return_data.size) + 64] = _138
                    require _134 + _137 + _138 + 32 <= return_data.size
                    s = 0
                    while s < _138:
                        mem[s + _130 + ceil32(return_data.size) + 96] = mem[s + _130 + _134 + _137 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_138) > _138:
                        mem[_130 + ceil32(return_data.size) + _138 + 96] = 0
                    mem[_130 + ceil32(return_data.size) + 32] = _130 + ceil32(return_data.size) + 64
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _130 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _114 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _115:
            mem[t] = u + -_114 - 64
            _144 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _148 = mem[_144 + 32]
            mem[u + 32] = 64
            _149 = mem[_148]
            mem[u + 64] = mem[_148]
            v = 0
            while v < _149:
                mem[v + u + 96] = mem[v + _148 + 32]
                v = v + 32
                continue 
            if ceil32(_149) > _149:
                mem[u + _149 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_149) + u + 96
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_f03ee290(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _66 = mem[64]
                mem[64] = mem[64] + 64
                mem[_66] = 0
                _67 = mem[64]
                mem[64] = mem[64] + 32
                mem[_67] = 0
                mem[_66 + 32] = _67
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _66
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x6f0fccab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x6f0fccab with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_81] = 0
                    _82 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_82] = 0
                    mem[_81 + 32] = _82
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _81
                else:
                    _80 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _86 = mem[_80]
                    require mem[_80] <= test266151307()
                    require return_data.size - mem[_80] >= 64
                    if not bool(_80 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 0, 65
                    mem[64] = _80 + ceil32(return_data.size) + 64
                    require mem[_80 + _86] == mem[_80 + _86 + 12 len 20]
                    mem[_80 + ceil32(return_data.size)] = mem[_80 + _86]
                    _95 = mem[_80 + _86 + 32]
                    require mem[_80 + _86 + 32] <= test266151307()
                    require _80 + _86 + mem[_80 + _86 + 32] + 31 < _80 + return_data.size
                    _97 = mem[_80 + _86 + mem[_80 + _86 + 32]]
                    if mem[_80 + _86 + mem[_80 + _86 + 32]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_80 + _86 + mem[_80 + _86 + 32]])) + 65 < 64 or _80 + ceil32(return_data.size) + ceil32(ceil32(mem[_80 + _86 + mem[_80 + _86 + 32]])) + 65 > test266151307():
                        revert with 0, 65
                    mem[64] = _80 + ceil32(return_data.size) + ceil32(ceil32(mem[_80 + _86 + mem[_80 + _86 + 32]])) + 65
                    mem[_80 + ceil32(return_data.size) + 64] = _97
                    require _86 + _95 + _97 + 32 <= return_data.size
                    s = 0
                    while s < _97:
                        mem[s + _80 + ceil32(return_data.size) + 96] = mem[s + _80 + _86 + _95 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_97) > _97:
                        mem[_80 + ceil32(return_data.size) + _97 + 96] = 0
                    mem[_80 + ceil32(return_data.size) + 32] = _80 + ceil32(return_data.size) + 64
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _80 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _57 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _57:
            mem[t] = u + -_56 - 64
            _108 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _112 = mem[_108 + 32]
            mem[u + 32] = 64
            _113 = mem[_112]
            mem[u + 64] = mem[_112]
            v = 0
            while v < _113:
                mem[v + u + 96] = mem[v + _112 + 32]
                v = v + 32
                continue 
            if ceil32(_113) > _113:
                mem[u + _113 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_113) + u + 96
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 96
        mem[128] = (32 * ('cd', 4).length) + 128
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 96
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_124] = 0
                _125 = mem[64]
                mem[64] = mem[64] + 32
                mem[_125] = 0
                mem[_124 + 32] = _125
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _124
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x6f0fccab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x6f0fccab with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    _131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_131] = 0
                    _132 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_132] = 0
                    mem[_131 + 32] = _132
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _131
                else:
                    _130 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _134 = mem[_130]
                    require mem[_130] <= test266151307()
                    require return_data.size - mem[_130] >= 64
                    if not bool(_130 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 0, 65
                    mem[64] = _130 + ceil32(return_data.size) + 64
                    require mem[_130 + _134] == mem[_130 + _134 + 12 len 20]
                    mem[_130 + ceil32(return_data.size)] = mem[_130 + _134]
                    _137 = mem[_130 + _134 + 32]
                    require mem[_130 + _134 + 32] <= test266151307()
                    require _130 + _134 + mem[_130 + _134 + 32] + 31 < _130 + return_data.size
                    _138 = mem[_130 + _134 + mem[_130 + _134 + 32]]
                    if mem[_130 + _134 + mem[_130 + _134 + 32]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_130 + _134 + mem[_130 + _134 + 32]])) + 65 < 64 or _130 + ceil32(return_data.size) + ceil32(ceil32(mem[_130 + _134 + mem[_130 + _134 + 32]])) + 65 > test266151307():
                        revert with 0, 65
                    mem[64] = _130 + ceil32(return_data.size) + ceil32(ceil32(mem[_130 + _134 + mem[_130 + _134 + 32]])) + 65
                    mem[_130 + ceil32(return_data.size) + 64] = _138
                    require _134 + _137 + _138 + 32 <= return_data.size
                    s = 0
                    while s < _138:
                        mem[s + _130 + ceil32(return_data.size) + 96] = mem[s + _130 + _134 + _137 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_138) > _138:
                        mem[_130 + ceil32(return_data.size) + _138 + 96] = 0
                    mem[_130 + ceil32(return_data.size) + 32] = _130 + ceil32(return_data.size) + 64
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _130 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _114 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _115:
            mem[t] = u + -_114 - 64
            _144 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _148 = mem[_144 + 32]
            mem[u + 32] = 64
            _149 = mem[_148]
            mem[u + 64] = mem[_148]
            v = 0
            while v < _149:
                mem[v + u + 96] = mem[v + _148 + 32]
                v = v + 32
                continue 
            if ceil32(_149) > _149:
                mem[u + _149 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_149) + u + 96
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getTokenInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[256] = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 416] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _14 = mem[(2 * ceil32(return_data.size)) + 416]
    require mem[(2 * ceil32(return_data.size)) + 416] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 416]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 416] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 416])) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 416])) + 417 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 416])) + 417
    mem[(4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416] + 416]
    require _14 + _15 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 448 len ceil32(_15)] = mem[(2 * ceil32(return_data.size)) + _14 + 448 len ceil32(_15)]
    if ceil32(_15) <= _15:
        mem[352] = (4 * ceil32(return_data.size)) + 416
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_105]
        require mem[_105] <= test266151307()
        require _105 + mem[_105] + 31 < _105 + return_data.size
        _109 = mem[_105 + mem[_105]]
        if mem[_105 + mem[_105]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_105 + mem[_105]])) + 1 < 0 or _105 + ceil32(return_data.size) + ceil32(ceil32(mem[_105 + mem[_105]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _105 + ceil32(return_data.size) + ceil32(ceil32(mem[_105 + mem[_105]])) + 1
        mem[_105 + ceil32(return_data.size)] = _109
        require _107 + _109 + 32 <= return_data.size
        mem[_105 + ceil32(return_data.size) + 32 len ceil32(_109)] = mem[_105 + _107 + 32 len ceil32(_109)]
        if ceil32(_109) <= _109:
            mem[384] = _105 + ceil32(return_data.size)
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint64(arg1) << 96
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ext_call.return_data[0]
            mem[mem[64] + 128] = 160
            _197 = mem[(4 * ceil32(return_data.size)) + 416]
            mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 416]
            mem[mem[64] + 224 len ceil32(_197)] = mem[(4 * ceil32(return_data.size)) + 448 len ceil32(_197)]
            if ceil32(_197) <= _197:
                mem[mem[64] + 160] = ceil32(_197) + 192
                mem[ceil32(_197) + mem[64] + 224] = _109
                mem[ceil32(_197) + mem[64] + 256 len ceil32(_109)] = mem[_105 + ceil32(return_data.size) + 32 len ceil32(_109)]
                if ceil32(_109) > _109:
                    mem[ceil32(_197) + mem[64] + _109 + 256] = 0
                return 32, arg1 << 192, 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       160,
                       ceil32(_197) + 192,
                       mem[mem[64] + 192 len ceil32(_197) + 32],
                       _109,
                       mem[mem[64] + ceil32(_197) + 256 len ceil32(_109)]
            mem[mem[64] + _197 + 224] = 0
            mem[mem[64] + 160] = ceil32(_197) + 192
            mem[ceil32(_197) + mem[64] + 224] = _109
            mem[ceil32(_197) + mem[64] + 256 len ceil32(_109)] = mem[_105 + ceil32(return_data.size) + 32 len ceil32(_109)]
            if ceil32(_109) > _109:
                mem[ceil32(_197) + mem[64] + _109 + 256] = 0
            return 32, arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   160,
                   ceil32(_197) + 192,
                   mem[mem[64] + 192 len _197 + 32],
                   0,
                   mem[mem[64] + _197 + 256 len ceil32(_109) + ceil32(_197) - _197]
        mem[_105 + ceil32(return_data.size) + _109 + 32] = 0
        mem[384] = _105 + ceil32(return_data.size)
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = 160
        _207 = mem[(4 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 224 len ceil32(_207)] = mem[(4 * ceil32(return_data.size)) + 448 len ceil32(_207)]
        if ceil32(_207) <= _207:
            mem[mem[64] + 160] = ceil32(_207) + 192
            mem[ceil32(_207) + mem[64] + 224] = _109
            mem[ceil32(_207) + mem[64] + 256 len ceil32(_109)] = mem[_105 + ceil32(return_data.size) + 32 len ceil32(_109)]
            if ceil32(_109) > _109:
                mem[ceil32(_207) + mem[64] + _109 + 256] = 0
            return 32, arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   160,
                   ceil32(_207) + 192,
                   mem[mem[64] + 192 len ceil32(_207) + 32],
                   _109,
                   mem[mem[64] + ceil32(_207) + 256 len ceil32(_109)]
        mem[mem[64] + _207 + 224] = 0
        mem[mem[64] + 160] = ceil32(_207) + 192
        mem[ceil32(_207) + mem[64] + 224] = _109
        mem[ceil32(_207) + mem[64] + 256 len ceil32(_109)] = mem[_105 + ceil32(return_data.size) + 32 len ceil32(_109)]
        if ceil32(_109) > _109:
            mem[ceil32(_207) + mem[64] + _109 + 256] = 0
        return 32, arg1 << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               160,
               ceil32(_207) + 192,
               mem[mem[64] + 192 len _207 + 32],
               0,
               mem[mem[64] + _207 + 256 len ceil32(_109) + ceil32(_207) - _207]
    mem[(4 * ceil32(return_data.size)) + _15 + 448] = 0
    mem[352] = (4 * ceil32(return_data.size)) + 416
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_106]
    require mem[_106] <= test266151307()
    require _106 + mem[_106] + 31 < _106 + return_data.size
    _111 = mem[_106 + mem[_106]]
    if mem[_106 + mem[_106]] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_106 + mem[_106]])) + 1 < 0 or _106 + ceil32(return_data.size) + ceil32(ceil32(mem[_106 + mem[_106]])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _106 + ceil32(return_data.size) + ceil32(ceil32(mem[_106 + mem[_106]])) + 1
    mem[_106 + ceil32(return_data.size)] = _111
    require _108 + _111 + 32 <= return_data.size
    mem[_106 + ceil32(return_data.size) + 32 len ceil32(_111)] = mem[_106 + _108 + 32 len ceil32(_111)]
    if ceil32(_111) <= _111:
        mem[384] = _106 + ceil32(return_data.size)
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = 160
        _202 = mem[(4 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 416]
        mem[mem[64] + 224 len ceil32(_202)] = mem[(4 * ceil32(return_data.size)) + 448 len ceil32(_202)]
        if ceil32(_202) <= _202:
            mem[mem[64] + 160] = ceil32(_202) + 192
            mem[ceil32(_202) + mem[64] + 224] = _111
            mem[ceil32(_202) + mem[64] + 256 len ceil32(_111)] = mem[_106 + ceil32(return_data.size) + 32 len ceil32(_111)]
            if ceil32(_111) > _111:
                mem[ceil32(_202) + mem[64] + _111 + 256] = 0
            return 32, arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   160,
                   ceil32(_202) + 192,
                   mem[mem[64] + 192 len ceil32(_202) + 32],
                   _111,
                   mem[mem[64] + ceil32(_202) + 256 len ceil32(_111)]
        mem[mem[64] + _202 + 224] = 0
        mem[mem[64] + 160] = ceil32(_202) + 192
        mem[ceil32(_202) + mem[64] + 224] = _111
        mem[ceil32(_202) + mem[64] + 256 len ceil32(_111)] = mem[_106 + ceil32(return_data.size) + 32 len ceil32(_111)]
        if ceil32(_111) > _111:
            mem[ceil32(_202) + mem[64] + _111 + 256] = 0
        return 32, arg1 << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               160,
               ceil32(_202) + 192,
               mem[mem[64] + 192 len _202 + 32],
               0,
               mem[mem[64] + _202 + 256 len ceil32(_111) + ceil32(_202) - _202]
    mem[_106 + ceil32(return_data.size) + _111 + 32] = 0
    mem[384] = _106 + ceil32(return_data.size)
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint64(arg1) << 96
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = 160
    _208 = mem[(4 * ceil32(return_data.size)) + 416]
    mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 416]
    mem[mem[64] + 224 len ceil32(_208)] = mem[(4 * ceil32(return_data.size)) + 448 len ceil32(_208)]
    if ceil32(_208) <= _208:
        mem[mem[64] + 160] = ceil32(_208) + 192
        mem[ceil32(_208) + mem[64] + 224] = _111
        mem[ceil32(_208) + mem[64] + 256 len ceil32(_111)] = mem[_106 + ceil32(return_data.size) + 32 len ceil32(_111)]
        if ceil32(_111) > _111:
            mem[ceil32(_208) + mem[64] + _111 + 256] = 0
        return 32, arg1 << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               160,
               ceil32(_208) + 192,
               mem[mem[64] + 192 len ceil32(_208) + 32],
               _111,
               mem[mem[64] + ceil32(_208) + 256 len ceil32(_111)]
    mem[mem[64] + _208 + 224] = 0
    mem[mem[64] + 160] = ceil32(_208) + 192
    mem[ceil32(_208) + mem[64] + 224] = _111
    mem[ceil32(_208) + mem[64] + 256 len ceil32(_111)] = mem[_106 + ceil32(return_data.size) + 32 len ceil32(_111)]
    if ceil32(_111) > _111:
        mem[ceil32(_208) + mem[64] + _111 + 256] = 0
    return 32, arg1 << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           160,
           ceil32(_208) + 192,
           mem[mem[64] + 192 len _208 + 32],
           0,
           mem[mem[64] + _208 + 256 len ceil32(_111) + ceil32(_208) - _208]
}

function getTokens(address[] arg1) payable {
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
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not ext_code.size(cd[((32 * idx) + arg1 + 36)]):
                _111 = mem[64]
                mem[64] = mem[64] + 160
                mem[_111] = 0
                mem[_111 + 32] = 0
                mem[_111 + 64] = 0
                _112 = mem[64]
                mem[64] = mem[64] + 32
                mem[_112] = 0
                mem[_111 + 96] = _112
                _113 = mem[64]
                mem[64] = mem[64] + 32
                mem[_113] = 0
                mem[_111 + 128] = _113
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _111
            else:
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x1f69565f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x1f69565f with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg1 + 36)])
                if not ext_call.success:
                    _138 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_138] = 0
                    mem[_138 + 32] = 0
                    mem[_138 + 64] = 0
                    _139 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_139] = 0
                    mem[_138 + 96] = _139
                    _140 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_140] = 0
                    mem[_138 + 128] = _140
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _138
                else:
                    _136 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _144 = mem[_136]
                    require mem[_136] <= test266151307()
                    require return_data.size - mem[_136] >= 160
                    if not bool(_136 + ceil32(return_data.size) + 160 <= test266151307()):
                        revert with 0, 65
                    mem[64] = _136 + ceil32(return_data.size) + 160
                    require mem[_136 + _144] == mem[_136 + _144 + 12 len 20]
                    mem[_136 + ceil32(return_data.size)] = mem[_136 + _144]
                    mem[_136 + ceil32(return_data.size) + 32] = mem[_136 + _144 + 32]
                    mem[_136 + ceil32(return_data.size) + 64] = mem[_136 + _144 + 64]
                    _160 = mem[_136 + _144 + 96]
                    require mem[_136 + _144 + 96] <= test266151307()
                    require _136 + _144 + mem[_136 + _144 + 96] + 31 < _136 + return_data.size
                    _163 = mem[_136 + _144 + mem[_136 + _144 + 96]]
                    if mem[_136 + _144 + mem[_136 + _144 + 96]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 96]])) + 161 < 160 or _136 + ceil32(return_data.size) + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 96]])) + 161 > test266151307():
                        revert with 0, 65
                    mem[64] = _136 + ceil32(return_data.size) + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 96]])) + 161
                    mem[_136 + ceil32(return_data.size) + 160] = _163
                    require _144 + _160 + _163 + 32 <= return_data.size
                    s = 0
                    while s < _163:
                        mem[s + _136 + ceil32(return_data.size) + 192] = mem[s + _136 + _144 + _160 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_163) <= _163:
                        mem[_136 + ceil32(return_data.size) + 96] = _136 + ceil32(return_data.size) + 160
                        _205 = mem[_136 + _144 + 128]
                        require mem[_136 + _144 + 128] <= test266151307()
                        require _136 + _144 + mem[_136 + _144 + 128] + 31 < _136 + return_data.size
                        _208 = mem[_136 + _144 + mem[_136 + _144 + 128]]
                        if mem[_136 + _144 + mem[_136 + _144 + 128]] > test266151307():
                            revert with 0, 65
                        _210 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 128]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 128]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 128]])) + 1
                        mem[_210] = _208
                        require _144 + _205 + _208 + 32 <= return_data.size
                        s = 0
                        while s < _208:
                            mem[s + _210 + 32] = mem[s + _136 + _144 + _205 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_208) > _208:
                            mem[_210 + _208 + 32] = 0
                        mem[_136 + ceil32(return_data.size) + 128] = _210
                    else:
                        mem[_136 + ceil32(return_data.size) + _163 + 192] = 0
                        mem[_136 + ceil32(return_data.size) + 96] = _136 + ceil32(return_data.size) + 160
                        _206 = mem[_136 + _144 + 128]
                        require mem[_136 + _144 + 128] <= test266151307()
                        require _136 + _144 + mem[_136 + _144 + 128] + 31 < _136 + return_data.size
                        _211 = mem[_136 + _144 + mem[_136 + _144 + 128]]
                        if mem[_136 + _144 + mem[_136 + _144 + 128]] > test266151307():
                            revert with 0, 65
                        _214 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 128]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 128]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_136 + _144 + mem[_136 + _144 + 128]])) + 1
                        mem[_214] = _211
                        require _144 + _206 + _211 + 32 <= return_data.size
                        s = 0
                        while s < _211:
                            mem[s + _214 + 32] = mem[s + _136 + _144 + _206 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_211) > _211:
                            mem[_214 + _211 + 32] = 0
                        mem[_136 + ceil32(return_data.size) + 128] = _214
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _136 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _100 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _101:
            mem[t] = u + -_100 - 64
            _197 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_197 + 32]
            mem[u + 64] = mem[_197 + 64]
            _203 = mem[_197 + 96]
            mem[u + 96] = 160
            _204 = mem[_203]
            mem[u + 160] = mem[_203]
            v = 0
            while v < _204:
                mem[v + u + 192] = mem[v + _203 + 32]
                v = v + 32
                continue 
            if ceil32(_204) <= _204:
                _276 = mem[_197 + 128]
                mem[u + 128] = ceil32(_204) + 192
                _278 = mem[_276]
                mem[ceil32(_204) + u + 192] = mem[_276]
                v = 0
                while v < _278:
                    mem[v + ceil32(_204) + u + 224] = mem[v + _276 + 32]
                    v = v + 32
                    continue 
                if ceil32(_278) > _278:
                    mem[ceil32(_204) + u + _278 + 224] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_278) + ceil32(_204) + u + 224
                continue 
            mem[u + _204 + 192] = 0
            _279 = mem[_197 + 128]
            mem[u + 128] = ceil32(_204) + 192
            _280 = mem[_279]
            mem[ceil32(_204) + u + 192] = mem[_279]
            v = 0
            while v < _280:
                mem[v + ceil32(_204) + u + 224] = mem[v + _279 + 32]
                v = v + 32
                continue 
            if ceil32(_280) > _280:
                mem[ceil32(_204) + u + _280 + 224] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_280) + ceil32(_204) + u + 224
            continue 
    else:
        mem[64] = (32 * arg1.length) + 288
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 96
        mem[(32 * arg1.length) + 256] = 96
        mem[var15001] = (32 * arg1.length) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 192] = 0
            mem[(32 * arg1.length) + 224] = 96
            mem[(32 * arg1.length) + 256] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not ext_code.size(cd[((32 * idx) + arg1 + 36)]):
                _294 = mem[64]
                mem[64] = mem[64] + 160
                mem[_294] = 0
                mem[_294 + 32] = 0
                mem[_294 + 64] = 0
                _295 = mem[64]
                mem[64] = mem[64] + 32
                mem[_295] = 0
                mem[_294 + 96] = _295
                _296 = mem[64]
                mem[64] = mem[64] + 32
                mem[_296] = 0
                mem[_294 + 128] = _296
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _294
            else:
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x1f69565f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(this.address)
                staticcall this.address.0x1f69565f with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg1 + 36)])
                if not ext_call.success:
                    _308 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_308] = 0
                    mem[_308 + 32] = 0
                    mem[_308 + 64] = 0
                    _309 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_309] = 0
                    mem[_308 + 96] = _309
                    _310 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_310] = 0
                    mem[_308 + 128] = _310
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _308
                else:
                    _307 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _312 = mem[_307]
                    require mem[_307] <= test266151307()
                    require return_data.size - mem[_307] >= 160
                    if not bool(_307 + ceil32(return_data.size) + 160 <= test266151307()):
                        revert with 0, 65
                    mem[64] = _307 + ceil32(return_data.size) + 160
                    require mem[_307 + _312] == mem[_307 + _312 + 12 len 20]
                    mem[_307 + ceil32(return_data.size)] = mem[_307 + _312]
                    mem[_307 + ceil32(return_data.size) + 32] = mem[_307 + _312 + 32]
                    mem[_307 + ceil32(return_data.size) + 64] = mem[_307 + _312 + 64]
                    _317 = mem[_307 + _312 + 96]
                    require mem[_307 + _312 + 96] <= test266151307()
                    require _307 + _312 + mem[_307 + _312 + 96] + 31 < _307 + return_data.size
                    _318 = mem[_307 + _312 + mem[_307 + _312 + 96]]
                    if mem[_307 + _312 + mem[_307 + _312 + 96]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 96]])) + 161 < 160 or _307 + ceil32(return_data.size) + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 96]])) + 161 > test266151307():
                        revert with 0, 65
                    mem[64] = _307 + ceil32(return_data.size) + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 96]])) + 161
                    mem[_307 + ceil32(return_data.size) + 160] = _318
                    require _312 + _317 + _318 + 32 <= return_data.size
                    s = 0
                    while s < _318:
                        mem[s + _307 + ceil32(return_data.size) + 192] = mem[s + _307 + _312 + _317 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_318) <= _318:
                        mem[_307 + ceil32(return_data.size) + 96] = _307 + ceil32(return_data.size) + 160
                        _343 = mem[_307 + _312 + 128]
                        require mem[_307 + _312 + 128] <= test266151307()
                        require _307 + _312 + mem[_307 + _312 + 128] + 31 < _307 + return_data.size
                        _346 = mem[_307 + _312 + mem[_307 + _312 + 128]]
                        if mem[_307 + _312 + mem[_307 + _312 + 128]] > test266151307():
                            revert with 0, 65
                        _347 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 128]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 128]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 128]])) + 1
                        mem[_347] = _346
                        require _312 + _343 + _346 + 32 <= return_data.size
                        s = 0
                        while s < _346:
                            mem[s + _347 + 32] = mem[s + _307 + _312 + _343 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_346) > _346:
                            mem[_347 + _346 + 32] = 0
                        mem[_307 + ceil32(return_data.size) + 128] = _347
                    else:
                        mem[_307 + ceil32(return_data.size) + _318 + 192] = 0
                        mem[_307 + ceil32(return_data.size) + 96] = _307 + ceil32(return_data.size) + 160
                        _344 = mem[_307 + _312 + 128]
                        require mem[_307 + _312 + 128] <= test266151307()
                        require _307 + _312 + mem[_307 + _312 + 128] + 31 < _307 + return_data.size
                        _348 = mem[_307 + _312 + mem[_307 + _312 + 128]]
                        if mem[_307 + _312 + mem[_307 + _312 + 128]] > test266151307():
                            revert with 0, 65
                        _350 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 128]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 128]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_307 + _312 + mem[_307 + _312 + 128]])) + 1
                        mem[_350] = _348
                        require _312 + _344 + _348 + 32 <= return_data.size
                        s = 0
                        while s < _348:
                            mem[s + _350 + 32] = mem[s + _307 + _312 + _344 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_348) > _348:
                            mem[_350 + _348 + 32] = 0
                        mem[_307 + ceil32(return_data.size) + 128] = _350
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _307 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _275 = mem[64]
        mem[mem[64]] = 32
        _277 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _277:
            mem[t] = u + -_275 - 64
            _335 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_335 + 32]
            mem[u + 64] = mem[_335 + 64]
            _341 = mem[_335 + 96]
            mem[u + 96] = 160
            _342 = mem[_341]
            mem[u + 160] = mem[_341]
            v = 0
            while v < _342:
                mem[v + u + 192] = mem[v + _341 + 32]
                v = v + 32
                continue 
            if ceil32(_342) <= _342:
                _365 = mem[_335 + 128]
                mem[u + 128] = ceil32(_342) + 192
                _366 = mem[_365]
                mem[ceil32(_342) + u + 192] = mem[_365]
                v = 0
                while v < _366:
                    mem[v + ceil32(_342) + u + 224] = mem[v + _365 + 32]
                    v = v + 32
                    continue 
                if ceil32(_366) > _366:
                    mem[ceil32(_342) + u + _366 + 224] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_366) + ceil32(_342) + u + 224
                continue 
            mem[u + _342 + 192] = 0
            _367 = mem[_335 + 128]
            mem[u + 128] = ceil32(_342) + 192
            _368 = mem[_367]
            mem[ceil32(_342) + u + 192] = mem[_367]
            v = 0
            while v < _368:
                mem[v + ceil32(_342) + u + 224] = mem[v + _367 + 32]
                v = v + 32
                continue 
            if ceil32(_368) > _368:
                mem[ceil32(_342) + u + _368 + 224] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_368) + ceil32(_342) + u + 224
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
