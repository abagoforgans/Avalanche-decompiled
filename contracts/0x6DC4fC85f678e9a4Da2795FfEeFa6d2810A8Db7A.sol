contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function tokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balances(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307() or ceil32(32 * arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg2.length and arg1.length > -1 / arg2.length:
        revert with 'NH{q', 17
    if arg2.length * arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg2.length * arg1.length
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (32 * arg2.length * arg1.length) + 130
    if not arg2.length * arg1.length:
        idx = 0
        while idx < arg1.length:
            _181 = mem[ceil32(32 * arg1.length) + 97]
            s = 0
            while s < _181:
                _184 = mem[ceil32(32 * arg1.length) + 97]
                if mem[ceil32(32 * arg1.length) + 97] and idx > -1 / mem[ceil32(32 * arg1.length) + 97]:
                    revert with 'NH{q', 17
                if s > !(mem[ceil32(32 * arg1.length) + 97] * idx):
                    revert with 'NH{q', 17
                if s >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * s) + ceil32(32 * arg1.length) + 141 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if s + (mem[ceil32(32 * arg1.length) + 97] * idx) >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * s + (mem[ceil32(32 * arg1.length) + 97] * idx)) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = eth.balance(mem[(32 * idx) + 128])
                else:
                    _199 = mem[(32 * idx) + 128]
                    if s >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 'NH{q', 50
                    _205 = mem[(32 * s) + ceil32(32 * arg1.length) + 129]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(_205))
                    staticcall address(_205).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_199)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _211 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + (_184 * idx) >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * s + (_184 * idx)) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = mem[_211]
                if s == -1:
                    revert with 'NH{q', 17
                _181 = mem[ceil32(32 * arg1.length) + 97]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _145 = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]
        mem[mem[64] + 64 len 32 * _145] = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * _145]
        idx = _145
        return 32, mem[mem[64] + 32 len (32 * _145) + 32]
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg2.length * arg1.length] = call.data[calldata.size len 32 * arg2.length * arg1.length]
    idx = 0
    while idx < arg1.length:
        _182 = mem[ceil32(32 * arg1.length) + 97]
        s = 0
        while s < _182:
            _186 = mem[ceil32(32 * arg1.length) + 97]
            if mem[ceil32(32 * arg1.length) + 97] and idx > -1 / mem[ceil32(32 * arg1.length) + 97]:
                revert with 'NH{q', 17
            if s > !(mem[ceil32(32 * arg1.length) + 97] * idx):
                revert with 'NH{q', 17
            if s >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * s) + ceil32(32 * arg1.length) + 141 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if s + (mem[ceil32(32 * arg1.length) + 97] * idx) >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * s + (mem[ceil32(32 * arg1.length) + 97] * idx)) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = eth.balance(mem[(32 * idx) + 128])
            else:
                _203 = mem[(32 * idx) + 128]
                if s >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 'NH{q', 50
                _206 = mem[(32 * s) + ceil32(32 * arg1.length) + 129]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(_206))
                staticcall address(_206).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_203)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s + (_186 * idx) >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * s + (_186 * idx)) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = mem[_212]
            if s == -1:
                revert with 'NH{q', 17
            _182 = mem[ceil32(32 * arg1.length) + 97]
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _147 = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]
    mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]
    mem[mem[64] + 64 len 32 * _147] = mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * _147]
    idx = _147
    return 32, mem[mem[64] + 32 len (32 * _147) + 32]
}



}
