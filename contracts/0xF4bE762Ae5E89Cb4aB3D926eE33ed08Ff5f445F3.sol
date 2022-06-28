contract main {




// =====================  Runtime code  =====================


#
#  - sub_97d8c59e(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
    if arg1.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = 2 * arg1.length
    mem[64] = ceil32(32 * arg1.length) + (64 * arg1.length) + 129
    if not uint255(arg1.length):
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_74] == mem[_74 + 18 len 14]
            _82 = mem[_74 + 32]
            require mem[_74 + 32] == mem[_74 + 50 len 14]
            require mem[_74 + 64] == mem[_74 + 92 len 4]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 0 > !(2 * idx):
                revert with 0, 17
            if 2 * idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(64 * idx) + ceil32(32 * arg1.length) + 129] = mem[_74 + 18 len 14]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 1 >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * (2 * idx) + 1) + ceil32(32 * arg1.length) + 129] = Mask(112, 0, _82)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _72 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * arg1.length) + 129
        while idx < _72:
            mem[s] = mem[t + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _64 + (32 * _72) + -mem[64] + 64
    mem[ceil32(32 * arg1.length) + 129 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_75] == mem[_75 + 18 len 14]
        _83 = mem[_75 + 32]
        require mem[_75 + 32] == mem[_75 + 50 len 14]
        require mem[_75 + 64] == mem[_75 + 92 len 4]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 0 > !(2 * idx):
            revert with 0, 17
        if 2 * idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        mem[(64 * idx) + ceil32(32 * arg1.length) + 129] = mem[_75 + 18 len 14]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 1 >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        mem[(32 * (2 * idx) + 1) + ceil32(32 * arg1.length) + 129] = Mask(112, 0, _83)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _68 = mem[64]
    mem[mem[64]] = 32
    _73 = mem[ceil32(32 * arg1.length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
    idx = 0
    s = mem[64] + 64
    t = ceil32(32 * arg1.length) + 129
    while idx < _73:
        mem[s] = mem[t + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _68 + (32 * _73) + -mem[64] + 64
}



}
