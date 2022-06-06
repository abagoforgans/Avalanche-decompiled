contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ae85e61a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _84 = mem[(32 * idx) + 128]
        _85 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        _87 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + 128]
        s = 0
        t = (32 * ('cd', 4).length) + 160
        u = mem[64] + 100
        while s < _87:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_84))
        staticcall address(_84).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _85 + (32 * _87) + -mem[64] + 96]
        if ext_call.success:
            _112 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_112]
            require mem[_112] <= test266151307()
            require _112 + mem[_112] + 31 < _112 + return_data.size
            _114 = mem[_112 + mem[_112]]
            require mem[_112 + mem[_112]] <= test266151307()
            require _112 + ceil32(return_data.size) + (32 * mem[_112 + mem[_112]]) + 32 <= test266151307() and (32 * mem[_112 + mem[_112]]) + 32 >= 0
            mem[64] = _112 + ceil32(return_data.size) + (32 * mem[_112 + mem[_112]]) + 32
            mem[_112 + ceil32(return_data.size)] = _114
            require _113 + (32 * _114) + 32 <= return_data.size
            s = 0
            t = _112 + _113 + 32
            u = _112 + ceil32(return_data.size) + 32
            while s < _114:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require idx < mem[96]
            require 0 < mem[mem[(32 * idx) + 128]]
            mem[mem[(32 * idx) + 128] + 32] = idx
            require 1 < _114
            require idx < mem[96]
            require 1 < mem[mem[(32 * idx) + 128]]
            mem[mem[(32 * idx) + 128] + 64] = mem[_112 + ceil32(return_data.size) + 64]
        idx = idx + 1
        s = _84
        continue 
    _83 = mem[64]
    mem[mem[64]] = 32
    _86 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _86:
        mem[u] = t + -_83 - 64
        _107 = mem[s]
        _111 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        w = _107 + 32
        x = t + 32
        while v < _111:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _111) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
