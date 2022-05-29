contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d7b84480(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + 128] = 96
    require ('cd', 4).length <= test266151307()
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        mem[(32 * idx) + (32 * ('cd', 4).length) + 256] = eth.balance(mem[(32 * idx) + 128])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 256] = (32 * ('cd', 4).length) + 224
    mem[(64 * ('cd', 4).length) + 288] = block.number
    mem[(64 * ('cd', 4).length) + 320] = block.timestamp
    mem[(64 * ('cd', 4).length) + 352] = 32
    mem[(64 * ('cd', 4).length) + 384] = 96
    mem[(64 * ('cd', 4).length) + 480] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 512 len 32 * ('cd', 4).length] = mem[(32 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length]
    return 32, 96, block.number, block.timestamp, ('cd', 4).length, mem[(32 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length]
}

function sub_3ea966d5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
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
    mem[(32 * ('cd', 36).length) + 128] = 96
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 224] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 256
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _79 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_79))
            staticcall address(_79).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == mem[_90]
            require idx < mem[(32 * ('cd', 36).length) + 224]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 256] = mem[_90]
            idx = idx + 1
            continue 
        _74 = mem[64]
        mem[64] = mem[64] + 96
        mem[_74] = (32 * ('cd', 36).length) + 224
        mem[_74 + 32] = block.number
        mem[_74 + 64] = block.timestamp
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _86 = mem[(32 * ('cd', 36).length) + 224]
        mem[mem[64] + 128] = mem[(32 * ('cd', 36).length) + 224]
        mem[mem[64] + 160 len 32 * _86] = mem[(32 * ('cd', 36).length) + 256 len 32 * _86]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = block.timestamp
        return 32, 96, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _86) + 32]
    mem[(32 * ('cd', 36).length) + 256 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _82 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_82))
        staticcall address(_82).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_91] == mem[_91]
        require idx < mem[(32 * ('cd', 36).length) + 224]
        mem[(32 * idx) + (32 * ('cd', 36).length) + 256] = mem[_91]
        idx = idx + 1
        continue 
    _76 = mem[64]
    mem[64] = mem[64] + 96
    mem[_76] = (32 * ('cd', 36).length) + 224
    mem[_76 + 32] = block.number
    mem[_76 + 64] = block.timestamp
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    _87 = mem[(32 * ('cd', 36).length) + 224]
    mem[mem[64] + 128] = mem[(32 * ('cd', 36).length) + 224]
    mem[mem[64] + 160 len 32 * _87] = mem[(32 * ('cd', 36).length) + 256 len 32 * _87]
    var57001 = _87
    mem[mem[64] + 64] = block.number
    mem[mem[64] + 96] = block.timestamp
    return 32, 96, block.number, block.timestamp, mem[mem[64] + 128 len (32 * _87) + 32]
}

function getReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    require arg1.length <= test266151307()
    mem[192] = arg1.length
    mem[64] = (32 * arg1.length) + 224
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _63 = mem[_60]
            require mem[_60] == mem[_60 + 18 len 14]
            _71 = mem[_60 + 32]
            require mem[_60 + 32] == mem[_60 + 50 len 14]
            require mem[_60 + 64] == mem[_60 + 92 len 4]
            require idx < mem[192]
            _78 = mem[(32 * idx) + 224]
            require idx < mem[192]
            _80 = mem[(32 * idx) + 224]
            require idx < mem[192]
            mem[mem[(32 * idx) + 224] + 64] = mem[_60 + 92 len 4]
            mem[_80 + 32] = Mask(112, 0, _71)
            mem[_78] = Mask(112, 0, _63)
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[64] = mem[64] + 96
        mem[_46] = 192
        mem[_46 + 32] = block.number
        mem[_46 + 64] = block.timestamp
        _48 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _50 = mem[192]
        mem[mem[64] + 128] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 160
        while idx < _50:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        mem[_48 + 64] = mem[_46 + 32]
        mem[_48 + 96] = mem[_46 + 64]
    else:
        mem[64] = (32 * arg1.length) + 320
        mem[(32 * arg1.length) + 224 len 96] = call.data[calldata.size len 96]
        mem[var19001] = (32 * arg1.length) + 224
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 224 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 224
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _127 = mem[_126]
            require mem[_126] == mem[_126 + 18 len 14]
            _130 = mem[_126 + 32]
            require mem[_126 + 32] == mem[_126 + 50 len 14]
            require mem[_126 + 64] == mem[_126 + 92 len 4]
            require idx < mem[192]
            _133 = mem[(32 * idx) + 224]
            require idx < mem[192]
            _135 = mem[(32 * idx) + 224]
            require idx < mem[192]
            mem[mem[(32 * idx) + 224] + 64] = mem[_126 + 92 len 4]
            mem[_135 + 32] = Mask(112, 0, _130)
            mem[_133] = Mask(112, 0, _127)
            idx = idx + 1
            continue 
        _113 = mem[64]
        mem[64] = mem[64] + 96
        mem[_113] = 192
        mem[_113 + 32] = block.number
        mem[_113 + 64] = block.timestamp
        _115 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _118 = mem[192]
        mem[mem[64] + 128] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 160
        while idx < _118:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        mem[_115 + 64] = mem[_113 + 32]
        mem[_115 + 96] = mem[_113 + 64]
    return memory
      from mem[64]
       len t - mem[64]
}



}
