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
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = eth.balance(mem[(32 * idx) + 128])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 32
    mem[(64 * ('cd', 4).length) + 192] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length]
    return Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length])
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
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_59))
            staticcall address(_59).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_69]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * ('cd', 36).length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_62))
        staticcall address(_62).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_71]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * ('cd', 36).length) + 160 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function getReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
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
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _49 = mem[_47]
            require mem[_47] == mem[_47 + 18 len 14]
            _56 = mem[_47 + 32]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            require idx < mem[96]
            _61 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _63 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_63 + 32] = Mask(112, 0, _56)
            mem[_61] = Mask(112, 0, _49)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
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
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 128
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
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _101 = mem[_100]
            require mem[_100] == mem[_100 + 18 len 14]
            _103 = mem[_100 + 32]
            require mem[_100 + 32] == mem[_100 + 50 len 14]
            require mem[_100 + 64] == mem[_100 + 92 len 4]
            require idx < mem[96]
            _106 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _108 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_100 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _101)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _94:
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
    return memory
      from mem[64]
       len t - mem[64]
}



}
