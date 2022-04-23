contract main {




// =====================  Runtime code  =====================


array of address stor1;
mapping of address facet;
mapping of uint256 stor90909012999857140622417080374671856515688564136957639390032885430481714942749;
array of address stor90909012999857140622417080374671856515688564136957639390032885430481714942750;

function facetAddress(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return facet[Mask(32, 224, arg1)]
}

function _fallback() payable {
    revert
}

function facetAddresses() payable {
    mem[64] = (32 * storC8FC.length) + 128
    mem[96] = storC8FC.length
    if not storC8FC.length:
        mem[(32 * storC8FC.length) + 128] = 32
        mem[(32 * storC8FC.length) + 160] = storC8FC.length
        idx = 0
        s = (32 * storC8FC.length) + 192
        t = 128
        while idx < storC8FC.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * storC8FC.length) + 128
           len (96 * storC8FC.length) + 64
    mem[128] = storC8FC
    idx = 128
    s = sha3(0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131e)
    while (32 * storC8FC.length) + 96 > idx:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * storC8FC.length) + 128] = 32
    mem[(32 * storC8FC.length) + 160] = storC8FC.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < storC8FC.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * storC8FC.length) + -mem[64] + 192
}

function facetFunctionSelectors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * storC8FC[address(arg1)]) + 128
    mem[96] = storC8FC[address(arg1)]
    if not storC8FC[address(arg1)]:
        mem[(32 * storC8FC[address(arg1)]) + 128] = 32
        mem[(32 * storC8FC[address(arg1)]) + 160] = storC8FC[address(arg1)]
        idx = 0
        s = 128
        t = (32 * storC8FC[address(arg1)]) + 192
        while idx < storC8FC[address(arg1)]:
            mem[t] = Mask(32, 224, mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * storC8FC[address(arg1)]) + 128
           len (96 * storC8FC[address(arg1)]) + 64
    mem[128] = storC8FC[address(arg1)] / 256^0 << 224
    idx = 128
    s = 0
    while (32 * storC8FC[address(arg1)]) + 96 > idx:
        mem[idx + 32] = storC8FC[address(arg1)] / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[(32 * storC8FC[address(arg1)]) + 128] = 32
    mem[(32 * storC8FC[address(arg1)]) + 160] = storC8FC[address(arg1)]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < storC8FC[address(arg1)]:
        mem[t] = Mask(32, 224, mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * storC8FC[address(arg1)]) + -mem[64] + 192
}

function facets() payable {
    if storC8FC.length > test266151307():
        revert with 0, 65
    mem[96] = storC8FC.length
    mem[64] = (32 * storC8FC.length) + 128
    if not storC8FC.length:
        idx = 0
        while idx < storC8FC.length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = storC8FC[idx]
            mem[0] = storC8FC[idx]
            mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
            _46 = mem[64]
            mem[64] = mem[64] + (32 * storC8FC[storC8FC[idx]]) + 32
            mem[_46] = storC8FC[storC8FC[idx]]
            if storC8FC[storC8FC[idx]]:
                mem[0] = sha3(storC8FC[idx], 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
                mem[_46 + 32] = storC8FC[storC8FC[idx]] / 256^0 << 224
                s = _46 + 32
                t = 0
                while _46 + (32 * storC8FC[storC8FC[idx]]) > s:
                    mem[s + 32] = storC8FC[storC8FC[idx]] / 256^((4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)) << 224
                    s = s + 32
                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                    continue 
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = _46
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _43:
            mem[u] = t + -_40 - 64
            _77 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _79 = mem[_77 + 32]
            mem[t + 32] = 64
            _81 = mem[_79]
            mem[t + 64] = mem[_79]
            v = 0
            w = _79 + 32
            x = t + 96
            while v < _81:
                mem[x] = Mask(32, 224, mem[w])
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _81 + 1
            w = _79 + (32 * _81) + 64
            t = t + (32 * _81) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * storC8FC.length) + 192
        mem[(32 * storC8FC.length) + 128] = 0
        mem[(32 * storC8FC.length) + 160] = 96
        mem[var10001] = (32 * storC8FC.length) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * storC8FC.length) + 128] = 0
            mem[(32 * storC8FC.length) + 160] = 96
            mem[s + 32] = (32 * storC8FC.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < storC8FC.length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = storC8FC[idx]
            mem[0] = storC8FC[idx]
            mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
            _110 = mem[64]
            mem[64] = mem[64] + (32 * storC8FC[storC8FC[idx]]) + 32
            mem[_110] = storC8FC[storC8FC[idx]]
            if storC8FC[storC8FC[idx]]:
                mem[0] = sha3(storC8FC[idx], 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
                mem[_110 + 32] = storC8FC[storC8FC[idx]] / 256^0 << 224
                s = _110 + 32
                t = 0
                while _110 + (32 * storC8FC[storC8FC[idx]]) > s:
                    mem[s + 32] = storC8FC[storC8FC[idx]] / 256^((4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)) << 224
                    s = s + 32
                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                    continue 
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = _110
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 32
        _107 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _107:
            mem[u] = t + -_104 - 64
            _122 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _124 = mem[_122 + 32]
            mem[t + 32] = 64
            _126 = mem[_124]
            mem[t + 64] = mem[_124]
            v = 0
            w = _124 + 32
            x = t + 96
            while v < _126:
                mem[x] = Mask(32, 224, mem[w])
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _126 + 1
            w = _124 + (32 * _126) + 64
            t = t + (32 * _126) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
