contract main {




// =====================  Runtime code  =====================


#
#  - sub_deee0d4a(?)
#
address _owner;
uint256 _nonce;
mapping of uint8 stor2;

function sub_0e42e58f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function _nonce() payable {
    return _nonce
}

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, '!o'
    _owner = arg1
}

function setNonce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, '!o'
    _nonce = arg1
    emit 0x60529280: arg1
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, '!o'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, '!o'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1f0af015(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if _owner != msg.sender:
        revert with 0, '!o'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_430db7ae(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if _owner != msg.sender:
        revert with 0, '!o'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3439fdf1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if _owner != msg.sender:
        revert with 0, '!o'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value cd[4] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_92396e86(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _owner != msg.sender:
        revert with 0, '!o'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 <= 0:
        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0, 'INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0, 'INSUFFICIENT_LIQUIDITY'
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if 997 * arg1 / 997 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        if 1000 * arg2 / 1000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * arg2 > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * arg2) + (997 * arg1):
            revert with 'NH{q', 18
        return (0 / (1000 * arg2) + (997 * arg1))
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if not arg3:
        revert with 'NH{q', 18
    if 997 * arg1 * arg3 / arg3 != 997 * arg1:
        revert with 0, 'ds-math-mul-overflow'
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 / 1000 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * arg2 > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
        revert with 0, 'ds-math-add-overflow'
    if not (1000 * arg2) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function sub_71d62db5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length < 2:
        revert with 0, 'INVALID_PATH'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 36).length
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130
    if not ('cd', 36).length:
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if 0 >= ('cd', 36).length - 1:
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 32
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 162] = ('cd', 36).length
            idx = 0
            s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 194
            u = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 194
            while idx < ('cd', 36).length:
                mem[u] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) + -(32 * ('cd', 36).length) - 194
                _121 = mem[s]
                _124 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _121 + 32
                x = t + 32
                while v < _124:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _124) + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
    else:
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = 96
        s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
        s = ('cd', 36).length
        while cd[36] + (32 * ('cd', 36).length) + 35:
            mem[('cd', 36).length + 32] = 96
            s = ('cd', 36).length + 32
            s = cd[36] + (32 * ('cd', 36).length) + 35
            continue 
        if mem[floor32(('cd', 4).length) + 97] < 1:
            revert with 'NH{q', 17
        if 0 >= mem[floor32(('cd', 4).length) + 97] - 1:
            _127 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = ('cd', 36).length
            idx = 0
            s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
            t = mem[64] + (32 * ('cd', 36).length) + 64
            u = mem[64] + 64
            while idx < ('cd', 36).length:
                mem[u] = t + -_127 - 64
                _143 = mem[s]
                _145 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _143 + 32
                x = t + 32
                while v < _145:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _145) + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        if 0 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
    if mem[140 len 20] == mem[172 len 20]:
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
}

function sub_2db876b8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _83 = mem[64]
        if mem[64] + floor32(cd[(cd[36] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[36] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[36] + cd[s] + 36)]) + 1
        mem[_83] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _83 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] < 2:
        revert with 0, 'INVALID_PATH'
    _81 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _84 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _81 + 1) + 32
    if not _81 + 1:
        if 0 < mem[_84]:
            mem[_84 + 32] = cd[4]
            if var162003 < 1:
                revert with 'NH{q', 17
            if var166002 > var166001:
                mem[_84 + (32 * _81 + 1) + 32] = 32
                mem[_84 + (32 * _81 + 1) + 64] = mem[_84]
                mem[_84 + (32 * _81 + 1) + 96 len 32 * mem[_84]] = mem[_84 + 32 len 32 * mem[_84]]
                return memory
                  from mem[64]
                   len _84 + (32 * _81 + 1) + (32 * mem[_84]) + -mem[64] + 96
            if var168001 < mem[96]:
                _840 = mem[(32 * var168001) + 128]
                _841 = mem[mem[(32 * var168001) + 128]]
                s = var168001
                s = var168001
                while 0 < _841:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[mem[(32 * s) + 128]]:
                        revert with 'NH{q', 50
                    if s >= mem[_84]:
                        revert with 'NH{q', 50
                    if mem[(32 * s) + _84 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if mem[_840 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if mem[mem[(32 * s) + 128] + 64] <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * s) + _84 + 32] and 997 > -1 / mem[(32 * s) + _84 + 32]:
                        revert with 'NH{q', 17
                    if 997 * mem[(32 * s) + _84 + 32] / 997 != mem[(32 * s) + _84 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[mem[(32 * s) + 128] + 64]:
                        if mem[_840 + 32] and 1000 > -1 / mem[_840 + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_840 + 32] / 1000 != mem[_840 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_840 + 32] > (-997 * mem[(32 * s) + _84 + 32]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_840 + 32]) + (997 * mem[(32 * s) + _84 + 32]) < 1000 * mem[_840 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_840 + 32]) + (997 * mem[(32 * s) + _84 + 32]):
                            revert with 'NH{q', 18
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 >= mem[_84]:
                            revert with 'NH{q', 50
                        mem[(32 * s + 1) + _84 + 32] = 0 / (1000 * mem[_840 + 32]) + (997 * mem[(32 * s) + _84 + 32])
                        if s == -1:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if s + 1 <= mem[96] - 1:
                            if s + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            s = s + 1
                            s = s + 1
                            continue 
                        _902 = mem[64]
                        mem[mem[64]] = 32
                        _904 = mem[_84]
                        mem[mem[64] + 32] = mem[_84]
                        idx = 0
                        s = _84 + 32
                        t = mem[64] + 64
                        while idx < _904:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _902 + (32 * _904) + -mem[64] + 64
                    if 997 * mem[(32 * s) + _84 + 32] and mem[mem[(32 * s) + 128] + 64] > -1 / 997 * mem[(32 * s) + _84 + 32]:
                        revert with 'NH{q', 17
                    if not mem[mem[(32 * s) + 128] + 64]:
                        revert with 'NH{q', 18
                    if 997 * mem[(32 * s) + _84 + 32] * mem[mem[(32 * s) + 128] + 64] / mem[mem[(32 * s) + 128] + 64] != 997 * mem[(32 * s) + _84 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_840 + 32] and 1000 > -1 / mem[_840 + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_840 + 32] / 1000 != mem[_840 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_840 + 32] > (-997 * mem[(32 * s) + _84 + 32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_840 + 32]) + (997 * mem[(32 * s) + _84 + 32]) < 1000 * mem[_840 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_840 + 32]) + (997 * mem[(32 * s) + _84 + 32]):
                        revert with 'NH{q', 18
                    if s > -2:
                        revert with 'NH{q', 17
                    if s + 1 >= mem[_84]:
                        revert with 'NH{q', 50
                    mem[(32 * s + 1) + _84 + 32] = 997 * mem[(32 * s) + _84 + 32] * mem[mem[(32 * s) + 128] + 64] / (1000 * mem[_840 + 32]) + (997 * mem[(32 * s) + _84 + 32])
                    if s == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if s + 1 <= mem[96] - 1:
                        if s + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        s = s + 1
                        s = s + 1
                        continue 
                    _914 = mem[64]
                    mem[mem[64]] = 32
                    _916 = mem[_84]
                    mem[mem[64] + 32] = mem[_84]
                    idx = 0
                    s = _84 + 32
                    t = mem[64] + 64
                    while idx < _916:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _914 + (32 * _916) + -mem[64] + 64
    else:
        mem[_84 + 32 len 32 * _81 + 1] = call.data[calldata.size len 32 * _81 + 1]
        if 0 < mem[_84]:
            mem[_84 + 32] = cd[4]
            if var163003 < 1:
                revert with 'NH{q', 17
            if var167002 > var167001:
                mem[_84 + (32 * _81 + 1) + 32] = 32
                mem[_84 + (32 * _81 + 1) + 64] = mem[_84]
                mem[_84 + (32 * _81 + 1) + 96 len 32 * mem[_84]] = mem[_84 + 32 len 32 * mem[_84]]
                return memory
                  from mem[64]
                   len _84 + (32 * _81 + 1) + (32 * mem[_84]) + -mem[64] + 96
            if var169001 < mem[96]:
                _842 = mem[(32 * var169001) + 128]
                _843 = mem[mem[(32 * var169001) + 128]]
                s = var169001
                s = var169001
                while 0 < _843:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[mem[(32 * s) + 128]]:
                        revert with 'NH{q', 50
                    if s >= mem[_84]:
                        revert with 'NH{q', 50
                    if mem[(32 * s) + _84 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if mem[_842 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if mem[mem[(32 * s) + 128] + 64] <= 0:
                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * s) + _84 + 32] and 997 > -1 / mem[(32 * s) + _84 + 32]:
                        revert with 'NH{q', 17
                    if 997 * mem[(32 * s) + _84 + 32] / 997 != mem[(32 * s) + _84 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[mem[(32 * s) + 128] + 64]:
                        if mem[_842 + 32] and 1000 > -1 / mem[_842 + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_842 + 32] / 1000 != mem[_842 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_842 + 32] > (-997 * mem[(32 * s) + _84 + 32]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_842 + 32]) + (997 * mem[(32 * s) + _84 + 32]) < 1000 * mem[_842 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_842 + 32]) + (997 * mem[(32 * s) + _84 + 32]):
                            revert with 'NH{q', 18
                        if s > -2:
                            revert with 'NH{q', 17
                        if s + 1 >= mem[_84]:
                            revert with 'NH{q', 50
                        mem[(32 * s + 1) + _84 + 32] = 0 / (1000 * mem[_842 + 32]) + (997 * mem[(32 * s) + _84 + 32])
                        if s == -1:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if s + 1 <= mem[96] - 1:
                            if s + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            s = s + 1
                            s = s + 1
                            continue 
                        _903 = mem[64]
                        mem[mem[64]] = 32
                        _905 = mem[_84]
                        mem[mem[64] + 32] = mem[_84]
                        idx = 0
                        s = _84 + 32
                        t = mem[64] + 64
                        while idx < _905:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _903 + (32 * _905) + -mem[64] + 64
                    if 997 * mem[(32 * s) + _84 + 32] and mem[mem[(32 * s) + 128] + 64] > -1 / 997 * mem[(32 * s) + _84 + 32]:
                        revert with 'NH{q', 17
                    if not mem[mem[(32 * s) + 128] + 64]:
                        revert with 'NH{q', 18
                    if 997 * mem[(32 * s) + _84 + 32] * mem[mem[(32 * s) + 128] + 64] / mem[mem[(32 * s) + 128] + 64] != 997 * mem[(32 * s) + _84 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[_842 + 32] and 1000 > -1 / mem[_842 + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_842 + 32] / 1000 != mem[_842 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_842 + 32] > (-997 * mem[(32 * s) + _84 + 32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[_842 + 32]) + (997 * mem[(32 * s) + _84 + 32]) < 1000 * mem[_842 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[_842 + 32]) + (997 * mem[(32 * s) + _84 + 32]):
                        revert with 'NH{q', 18
                    if s > -2:
                        revert with 'NH{q', 17
                    if s + 1 >= mem[_84]:
                        revert with 'NH{q', 50
                    mem[(32 * s + 1) + _84 + 32] = 997 * mem[(32 * s) + _84 + 32] * mem[mem[(32 * s) + 128] + 64] / (1000 * mem[_842 + 32]) + (997 * mem[(32 * s) + _84 + 32])
                    if s == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if s + 1 <= mem[96] - 1:
                        if s + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        s = s + 1
                        s = s + 1
                        continue 
                    _915 = mem[64]
                    mem[mem[64]] = 32
                    _917 = mem[_84]
                    mem[mem[64] + 32] = mem[_84]
                    idx = 0
                    s = _84 + 32
                    t = mem[64] + 64
                    while idx < _917:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _915 + (32 * _917) + -mem[64] + 64
    revert with 'NH{q', 50
}

function sub_400974cd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _144 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + cd[s] + 36)]) + 1
        mem[_144] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _144 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _144
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _142 = mem[64]
    mem[64] = mem[64] + 64
    mem[_142 len 64] = call.data[calldata.size len 64]
    _143 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _145 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _143 + 1) + 32
    if not _143 + 1:
        _146 = mem[96]
        mem[_145 + (32 * _143 + 1) + 36] = 997
        mem[_145 + (32 * _143 + 1) + 68] = _146
        require ext_code.size(0x469ff6af8519c63f9d2d9431edec5d6afa5bc569)
        delegate 0x469ff6af8519c63f9d2d9431edec5d6afa5bc569.pow(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 997, _146
        mem[_145 + (32 * _143 + 1) + 32] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _145 + (32 * _143 + 1) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[0]
        mem[_142] = delegate.return_data[0]
        idx = 0
        while idx < _146:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + 128] + 64]:
                mem[_142] = 0
            else:
                if mem[_142] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_142]:
                    revert with 'NH{q', 17
                if not mem[mem[(32 * idx) + 128] + 64]:
                    revert with 'NH{q', 18
                if mem[_142] * mem[mem[(32 * idx) + 128] + 64] / mem[mem[(32 * idx) + 128] + 64] != mem[_142]:
                    revert with 0, 'ds-math-mul-overflow'
                mem[_142] = mem[_142] * mem[mem[(32 * idx) + 128] + 64]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if _146 and 3 > -1 / _146:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = 10
        mem[mem[64] + 36] = 3 * _146
        require ext_code.size(0x469ff6af8519c63f9d2d9431edec5d6afa5bc569)
        delegate 0x469ff6af8519c63f9d2d9431edec5d6afa5bc569.pow(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 10, 3 * _146
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_296] == mem[_296]
        if not mem[_296]:
            revert with 'NH{q', 18
        if mem[_142] / mem[_296] > mem[_142]:
            revert with 0, 'ds-math-div-underflow'
        mem[_142] = mem[_142] / mem[_296]
        mem[_142 + 32] = 1
        idx = 0
        while idx < _146:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + 128] + 32]:
                mem[_142 + 32] = 0
            else:
                if mem[_142 + 32] and mem[mem[(32 * idx) + 128] + 32] > -1 / mem[_142 + 32]:
                    revert with 'NH{q', 17
                if not mem[mem[(32 * idx) + 128] + 32]:
                    revert with 'NH{q', 18
                if mem[_142 + 32] * mem[mem[(32 * idx) + 128] + 32] / mem[mem[(32 * idx) + 128] + 32] != mem[_142 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                mem[_142 + 32] = mem[_142 + 32] * mem[mem[(32 * idx) + 128] + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _410 = mem[_142 + 32]
        _416 = mem[_142]
        if mem[_142] < mem[_142 + 32]:
            revert with 'NH{q', 17
        if mem[_142] - mem[_142 + 32] > mem[_142]:
            revert with 0, 'ds-math-sub-underflow'
        idx = 1
        while idx <= _146:
            if _146 < idx:
                revert with 'NH{q', 17
            if _146 - idx > -2:
                revert with 'NH{q', 17
            if idx >= mem[_145]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _145 + 32] = 1
            s = 1
            while s <= _146:
                if s < _146 + -idx + 1:
                    if s < 1:
                        revert with 'NH{q', 17
                    if s - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[mem[(32 * s - 1) + 128]]:
                        revert with 'NH{q', 50
                    if idx >= mem[_145]:
                        revert with 'NH{q', 50
                    if not mem[mem[(32 * s - 1) + 128] + 64]:
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _145 + 32] = 0
                    else:
                        if mem[(32 * idx) + _145 + 32] and mem[mem[(32 * s - 1) + 128] + 64] > -1 / mem[(32 * idx) + _145 + 32]:
                            revert with 'NH{q', 17
                        if not mem[mem[(32 * s - 1) + 128] + 64]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 64] / mem[mem[(32 * s - 1) + 128] + 64] != mem[(32 * idx) + _145 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 64]
                else:
                    if s == _146 + -idx + 1:
                        t = 1
                        u = 1
                        while t <= _146 + -idx + 1:
                            if u and 997 > -1 / u:
                                revert with 'NH{q', 17
                            if 997 * u / 997 != u:
                                revert with 0, 'ds-math-mul-overflow'
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = 997 * u
                            continue 
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        if not u:
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _145 + 32] = 0
                        else:
                            if mem[(32 * idx) + _145 + 32] and u > -1 / mem[(32 * idx) + _145 + 32]:
                                revert with 'NH{q', 17
                            if not u:
                                revert with 'NH{q', 18
                            if mem[(32 * idx) + _145 + 32] * u / u != mem[(32 * idx) + _145 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] * u
                    else:
                        if s <= _146 + -idx + 1:
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _145 + 32] = 0
                        else:
                            if s < 1:
                                revert with 'NH{q', 17
                            if s - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[(32 * s - 1) + 128]]:
                                revert with 'NH{q', 50
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            if not mem[mem[(32 * s - 1) + 128] + 32]:
                                if idx >= mem[_145]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + _145 + 32] = 0
                            else:
                                if mem[(32 * idx) + _145 + 32] and mem[mem[(32 * s - 1) + 128] + 32] > -1 / mem[(32 * idx) + _145 + 32]:
                                    revert with 'NH{q', 17
                                if not mem[mem[(32 * s - 1) + 128] + 32]:
                                    revert with 'NH{q', 18
                                if mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 32] / mem[mem[(32 * s - 1) + 128] + 32] != mem[(32 * idx) + _145 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if idx >= mem[_145]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 32]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if _146 + -idx + 1 and 3 > -1 / _146 + -idx + 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = 10
            mem[mem[64] + 36] = (3 * _146) + (-3 * idx) + 3
            require ext_code.size(0x469ff6af8519c63f9d2d9431edec5d6afa5bc569)
            delegate 0x469ff6af8519c63f9d2d9431edec5d6afa5bc569.pow(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 10, (3 * _146) + (-3 * idx) + 3
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_640] == mem[_640]
            if idx >= mem[_145]:
                revert with 'NH{q', 50
            if not mem[_640]:
                revert with 'NH{q', 18
            if mem[(32 * idx) + _145 + 32] / mem[_640] > mem[(32 * idx) + _145 + 32]:
                revert with 0, 'ds-math-div-underflow'
            if idx >= mem[_145]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] / mem[_640]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 1
        s = 0
        while idx <= _146:
            if idx >= mem[_145]:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + _145 + 32] - 1:
                revert with 'NH{q', 17
            if s + mem[(32 * idx) + _145 + 32] < s:
                revert with 0, 'ds-math-add-overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + _145 + 32]
            continue 
        if s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 and 2 > -1 / s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146:
            revert with 'NH{q', 17
        if uint255(s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146) != s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146:
            revert with 0, 'ds-math-mul-overflow'
        if not 2 * s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146:
            revert with 'NH{q', 18
        if _416 - _410 / 2 * s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 > _416 - _410:
            revert with 0, 'ds-math-div-underflow'
        return (_416 - _410 / 2 * s * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146 * _146)
    mem[_145 + 32 len 32 * _143 + 1] = call.data[calldata.size len 32 * _143 + 1]
    _148 = mem[96]
    mem[_145 + (32 * _143 + 1) + 36] = 997
    mem[_145 + (32 * _143 + 1) + 68] = _148
    require ext_code.size(0x469ff6af8519c63f9d2d9431edec5d6afa5bc569)
    delegate 0x469ff6af8519c63f9d2d9431edec5d6afa5bc569.pow(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 997, _148
    mem[_145 + (32 * _143 + 1) + 32] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _145 + (32 * _143 + 1) + ceil32(return_data.size) + 32
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    mem[_142] = delegate.return_data[0]
    idx = 0
    while idx < _148:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 50
        if not mem[mem[(32 * idx) + 128] + 64]:
            mem[_142] = 0
        else:
            if mem[_142] and mem[mem[(32 * idx) + 128] + 64] > -1 / mem[_142]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + 128] + 64]:
                revert with 'NH{q', 18
            if mem[_142] * mem[mem[(32 * idx) + 128] + 64] / mem[mem[(32 * idx) + 128] + 64] != mem[_142]:
                revert with 0, 'ds-math-mul-overflow'
            mem[_142] = mem[_142] * mem[mem[(32 * idx) + 128] + 64]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if _148 and 3 > -1 / _148:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = 10
    mem[mem[64] + 36] = 3 * _148
    require ext_code.size(0x469ff6af8519c63f9d2d9431edec5d6afa5bc569)
    delegate 0x469ff6af8519c63f9d2d9431edec5d6afa5bc569.pow(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 10, 3 * _148
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _297 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_297] == mem[_297]
    if not mem[_297]:
        revert with 'NH{q', 18
    if mem[_142] / mem[_297] > mem[_142]:
        revert with 0, 'ds-math-div-underflow'
    mem[_142] = mem[_142] / mem[_297]
    mem[_142 + 32] = 1
    idx = 0
    while idx < _148:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 50
        if not mem[mem[(32 * idx) + 128] + 32]:
            mem[_142 + 32] = 0
        else:
            if mem[_142 + 32] and mem[mem[(32 * idx) + 128] + 32] > -1 / mem[_142 + 32]:
                revert with 'NH{q', 17
            if not mem[mem[(32 * idx) + 128] + 32]:
                revert with 'NH{q', 18
            if mem[_142 + 32] * mem[mem[(32 * idx) + 128] + 32] / mem[mem[(32 * idx) + 128] + 32] != mem[_142 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            mem[_142 + 32] = mem[_142 + 32] * mem[mem[(32 * idx) + 128] + 32]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _413 = mem[_142 + 32]
    _418 = mem[_142]
    if mem[_142] < mem[_142 + 32]:
        revert with 'NH{q', 17
    if mem[_142] - mem[_142 + 32] > mem[_142]:
        revert with 0, 'ds-math-sub-underflow'
    idx = 1
    while idx <= _148:
        if _148 < idx:
            revert with 'NH{q', 17
        if _148 - idx > -2:
            revert with 'NH{q', 17
        if idx >= mem[_145]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _145 + 32] = 1
        s = 1
        while s <= _148:
            if s < _148 + -idx + 1:
                if s < 1:
                    revert with 'NH{q', 17
                if s - 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[mem[(32 * s - 1) + 128]]:
                    revert with 'NH{q', 50
                if idx >= mem[_145]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * s - 1) + 128] + 64]:
                    if idx >= mem[_145]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _145 + 32] = 0
                else:
                    if mem[(32 * idx) + _145 + 32] and mem[mem[(32 * s - 1) + 128] + 64] > -1 / mem[(32 * idx) + _145 + 32]:
                        revert with 'NH{q', 17
                    if not mem[mem[(32 * s - 1) + 128] + 64]:
                        revert with 'NH{q', 18
                    if mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 64] / mem[mem[(32 * s - 1) + 128] + 64] != mem[(32 * idx) + _145 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if idx >= mem[_145]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 64]
            else:
                if s == _148 + -idx + 1:
                    t = 1
                    u = 1
                    while t <= _148 + -idx + 1:
                        if u and 997 > -1 / u:
                            revert with 'NH{q', 17
                        if 997 * u / 997 != u:
                            revert with 0, 'ds-math-mul-overflow'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = 997 * u
                        continue 
                    if idx >= mem[_145]:
                        revert with 'NH{q', 50
                    if not u:
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _145 + 32] = 0
                    else:
                        if mem[(32 * idx) + _145 + 32] and u > -1 / mem[(32 * idx) + _145 + 32]:
                            revert with 'NH{q', 17
                        if not u:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + _145 + 32] * u / u != mem[(32 * idx) + _145 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] * u
                else:
                    if s <= _148 + -idx + 1:
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _145 + 32] = 0
                    else:
                        if s < 1:
                            revert with 'NH{q', 17
                        if s - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[(32 * s - 1) + 128]]:
                            revert with 'NH{q', 50
                        if idx >= mem[_145]:
                            revert with 'NH{q', 50
                        if not mem[mem[(32 * s - 1) + 128] + 32]:
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _145 + 32] = 0
                        else:
                            if mem[(32 * idx) + _145 + 32] and mem[mem[(32 * s - 1) + 128] + 32] > -1 / mem[(32 * idx) + _145 + 32]:
                                revert with 'NH{q', 17
                            if not mem[mem[(32 * s - 1) + 128] + 32]:
                                revert with 'NH{q', 18
                            if mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 32] / mem[mem[(32 * s - 1) + 128] + 32] != mem[(32 * idx) + _145 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if idx >= mem[_145]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] * mem[mem[(32 * s - 1) + 128] + 32]
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if _148 + -idx + 1 and 3 > -1 / _148 + -idx + 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = 10
        mem[mem[64] + 36] = (3 * _148) + (-3 * idx) + 3
        require ext_code.size(0x469ff6af8519c63f9d2d9431edec5d6afa5bc569)
        delegate 0x469ff6af8519c63f9d2d9431edec5d6afa5bc569.pow(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 10, (3 * _148) + (-3 * idx) + 3
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _641 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_641] == mem[_641]
        if idx >= mem[_145]:
            revert with 'NH{q', 50
        if not mem[_641]:
            revert with 'NH{q', 18
        if mem[(32 * idx) + _145 + 32] / mem[_641] > mem[(32 * idx) + _145 + 32]:
            revert with 0, 'ds-math-div-underflow'
        if idx >= mem[_145]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _145 + 32] = mem[(32 * idx) + _145 + 32] / mem[_641]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 1
    s = 0
    while idx <= _148:
        if idx >= mem[_145]:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + _145 + 32] - 1:
            revert with 'NH{q', 17
        if s + mem[(32 * idx) + _145 + 32] < s:
            revert with 0, 'ds-math-add-overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + _145 + 32]
        continue 
    if s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 and 2 > -1 / s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148:
        revert with 'NH{q', 17
    if uint255(s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148) != s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148:
        revert with 0, 'ds-math-mul-overflow'
    if not 2 * s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148:
        revert with 'NH{q', 18
    if _418 - _413 / 2 * s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 > _418 - _413:
        revert with 0, 'ds-math-div-underflow'
    return (_418 - _413 / 2 * s * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148 * _148)
}



}
