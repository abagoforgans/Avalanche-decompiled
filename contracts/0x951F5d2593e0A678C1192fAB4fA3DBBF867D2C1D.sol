contract main {




// =====================  Runtime code  =====================


#
#  - getProxyImplementation(address arg1)
#  - getProxyAdmin(address arg1)
#
const sub_1cdcf85a(?) = 0xca11bde05977b3631167028862be2a173976ca11


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function changeProxyAdmin(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.changeAdmin(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function upgrade(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 1
    mem[160] = 4
    mem[192 len 4] = defaultOracle()
    mem[128] = 160
    mem[196] = 1
    mem[64] = 324
    mem[260] = 0
    mem[292] = 96
    mem[228] = 260
    s = 228
    idx = 1
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[260] = 0
        mem[292] = 96
        mem[s + 32] = 260
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 1:
        if idx >= mem[196]:
            revert with 0, 50
        mem[mem[(32 * idx) + 228]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[196]:
            revert with 0, 50
        mem[mem[(32 * idx) + 228] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _391 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _394 = mem[196]
    mem[mem[64] + 36] = mem[196]
    idx = 0
    s = 228
    t = mem[64] + (32 * _394) + 68
    u = mem[64] + 68
    while idx < _394:
        mem[u] = t + -_391 - 68
        _569 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _571 = mem[_569 + 32]
        mem[t + 32] = 64
        _572 = mem[_571]
        mem[t + 64] = mem[_571]
        v = 0
        while v < _572:
            mem[v + t + 96] = mem[v + _571 + 32]
            v = v + 32
            continue 
        if ceil32(_572) > _572:
            mem[t + _572 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_572) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _576 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _581 = mem[_576 + 32]
    require mem[_576 + 32] <= test266151307()
    require _576 + mem[_576 + 32] + 31 < _576 + return_data.size
    _583 = mem[_576 + mem[_576 + 32]]
    if mem[_576 + mem[_576 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_576 + mem[_576 + 32]]) + 1 < 0 or _576 + ceil32(return_data.size) + ceil32(32 * mem[_576 + mem[_576 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _576 + ceil32(return_data.size) + ceil32(32 * mem[_576 + mem[_576 + 32]]) + 1
    mem[_576 + ceil32(return_data.size)] = _583
    require (32 * _583) + _581 + 32 <= return_data.size
    s = _576 + ceil32(return_data.size) + 32
    idx = _576 + _581 + 32
    while idx < (32 * _583) + _576 + _581 + 32:
        _733 = mem[idx]
        require mem[idx] <= test266151307()
        require _576 + return_data.size > _576 + _581 + mem[idx] + 63
        _741 = mem[_576 + _581 + mem[idx] + 32]
        if mem[_576 + _581 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _754 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_576 + _581 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_576 + _581 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_576 + _581 + mem[idx] + 32])) + 1
        mem[_754] = _741
        require _581 + _733 + _741 + 64 <= return_data.size
        t = 0
        while t < _741:
            mem[t + _754 + 32] = mem[t + _576 + _581 + _733 + 64]
            t = t + 32
            continue 
        if ceil32(_741) > _741:
            mem[_754 + _741 + 32] = 0
        mem[s] = _754
        s = s + 32
        idx = idx + 32
        continue 
    mem[mem[64]] = 0x3659cfe600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(arg1)
    call arg1.upgradeTo(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _765 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _768 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _765) + 32
    if not _765:
        idx = 0
        while idx < _765:
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _880 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _887 = mem[_768]
        mem[mem[64] + 36] = mem[_768]
        idx = 0
        s = _768 + 32
        t = mem[64] + (32 * _887) + 68
        u = mem[64] + 68
        while idx < _887:
            mem[u] = t + -_880 - 68
            _1005 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1007 = mem[_1005 + 32]
            mem[t + 32] = 64
            _1008 = mem[_1007]
            mem[t + 64] = mem[_1007]
            v = 0
            while v < _1008:
                mem[v + t + 96] = mem[v + _1007 + 32]
                v = v + 32
                continue 
            if ceil32(_1008) > _1008:
                mem[t + _1008 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1008) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1021 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1033 = mem[_1021 + 32]
        require mem[_1021 + 32] <= test266151307()
        require _1021 + mem[_1021 + 32] + 31 < _1021 + return_data.size
        _1040 = mem[_1021 + mem[_1021 + 32]]
        if mem[_1021 + mem[_1021 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1021 + mem[_1021 + 32]]) + 1 < 0 or _1021 + ceil32(return_data.size) + ceil32(32 * mem[_1021 + mem[_1021 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1021 + ceil32(return_data.size) + ceil32(32 * mem[_1021 + mem[_1021 + 32]]) + 1
        mem[_1021 + ceil32(return_data.size)] = _1040
        require (32 * _1040) + _1033 + 32 <= return_data.size
        s = _1021 + ceil32(return_data.size) + 32
        idx = _1021 + _1033 + 32
        while idx < (32 * _1040) + _1021 + _1033 + 32:
            _1101 = mem[idx]
            require mem[idx] <= test266151307()
            require _1021 + return_data.size > _1021 + _1033 + mem[idx] + 63
            _1111 = mem[_1021 + _1033 + mem[idx] + 32]
            if mem[_1021 + _1033 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1116 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1021 + _1033 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1021 + _1033 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1021 + _1033 + mem[idx] + 32])) + 1
            mem[_1116] = _1111
            require _1033 + _1101 + _1111 + 64 <= return_data.size
            t = 0
            while t < _1111:
                mem[t + _1116 + 32] = mem[t + _1021 + _1033 + _1101 + 64]
                t = t + 32
                continue 
            if ceil32(_1111) > _1111:
                mem[_1116 + _1111 + 32] = 0
            mem[s] = _1116
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 0:
            if idx >= mem[_576 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1021 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _768 + (32 * _765) + 96
        mem[_768 + (32 * _765) + 32] = 0
        mem[_768 + (32 * _765) + 64] = 96
        mem[_768 + 32] = _768 + (32 * _765) + 32
        s = _768 + 32
        idx = _765
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_768 + (32 * _765) + 32] = 0
            mem[_768 + (32 * _765) + 64] = 96
            mem[s + 32] = _768 + (32 * _765) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _765:
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1009 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1013 = mem[_768]
        mem[mem[64] + 36] = mem[_768]
        idx = 0
        s = _768 + 32
        t = mem[64] + (32 * _1013) + 68
        u = mem[64] + 68
        while idx < _1013:
            mem[u] = t + -_1009 - 68
            _1103 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1105 = mem[_1103 + 32]
            mem[t + 32] = 64
            _1106 = mem[_1105]
            mem[t + 64] = mem[_1105]
            v = 0
            while v < _1106:
                mem[v + t + 96] = mem[v + _1105 + 32]
                v = v + 32
                continue 
            if ceil32(_1106) > _1106:
                mem[t + _1106 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1106) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1113 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1118 = mem[_1113 + 32]
        require mem[_1113 + 32] <= test266151307()
        require _1113 + mem[_1113 + 32] + 31 < _1113 + return_data.size
        _1126 = mem[_1113 + mem[_1113 + 32]]
        if mem[_1113 + mem[_1113 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1113 + mem[_1113 + 32]]) + 1 < 0 or _1113 + ceil32(return_data.size) + ceil32(32 * mem[_1113 + mem[_1113 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1113 + ceil32(return_data.size) + ceil32(32 * mem[_1113 + mem[_1113 + 32]]) + 1
        mem[_1113 + ceil32(return_data.size)] = _1126
        require (32 * _1126) + _1118 + 32 <= return_data.size
        s = _1113 + ceil32(return_data.size) + 32
        idx = _1113 + _1118 + 32
        while idx < (32 * _1126) + _1113 + _1118 + 32:
            _1167 = mem[idx]
            require mem[idx] <= test266151307()
            require _1113 + return_data.size > _1113 + _1118 + mem[idx] + 63
            _1173 = mem[_1113 + _1118 + mem[idx] + 32]
            if mem[_1113 + _1118 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1176 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1113 + _1118 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1113 + _1118 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1113 + _1118 + mem[idx] + 32])) + 1
            mem[_1176] = _1173
            require _1118 + _1167 + _1173 + 64 <= return_data.size
            t = 0
            while t < _1173:
                mem[t + _1176 + 32] = mem[t + _1113 + _1118 + _1167 + 64]
                t = t + 32
                continue 
            if ceil32(_1173) > _1173:
                mem[_1176 + _1173 + 32] = 0
            mem[s] = _1176
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 0:
            if idx >= mem[_576 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1113 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function upgradeAndCall(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 1
    mem[160] = 4
    mem[192 len 4] = defaultOracle()
    mem[128] = 160
    mem[196] = 1
    mem[64] = 324
    mem[260] = 0
    mem[292] = 96
    mem[228] = 260
    s = 228
    idx = 1
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[260] = 0
        mem[292] = 96
        mem[s + 32] = 260
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 1:
        if idx >= mem[196]:
            revert with 0, 50
        mem[mem[(32 * idx) + 228]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[196]:
            revert with 0, 50
        mem[mem[(32 * idx) + 228] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _391 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _394 = mem[196]
    mem[mem[64] + 36] = mem[196]
    idx = 0
    s = 228
    t = mem[64] + (32 * _394) + 68
    u = mem[64] + 68
    while idx < _394:
        mem[u] = t + -_391 - 68
        _569 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _571 = mem[_569 + 32]
        mem[t + 32] = 64
        _572 = mem[_571]
        mem[t + 64] = mem[_571]
        v = 0
        while v < _572:
            mem[v + t + 96] = mem[v + _571 + 32]
            v = v + 32
            continue 
        if ceil32(_572) > _572:
            mem[t + _572 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_572) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _576 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _581 = mem[_576 + 32]
    require mem[_576 + 32] <= test266151307()
    require _576 + mem[_576 + 32] + 31 < _576 + return_data.size
    _583 = mem[_576 + mem[_576 + 32]]
    if mem[_576 + mem[_576 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_576 + mem[_576 + 32]]) + 1 < 0 or _576 + ceil32(return_data.size) + ceil32(32 * mem[_576 + mem[_576 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _576 + ceil32(return_data.size) + ceil32(32 * mem[_576 + mem[_576 + 32]]) + 1
    mem[_576 + ceil32(return_data.size)] = _583
    require (32 * _583) + _581 + 32 <= return_data.size
    s = _576 + ceil32(return_data.size) + 32
    idx = _576 + _581 + 32
    while idx < (32 * _583) + _576 + _581 + 32:
        _733 = mem[idx]
        require mem[idx] <= test266151307()
        require _576 + return_data.size > _576 + _581 + mem[idx] + 63
        _741 = mem[_576 + _581 + mem[idx] + 32]
        if mem[_576 + _581 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _754 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_576 + _581 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_576 + _581 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_576 + _581 + mem[idx] + 32])) + 1
        mem[_754] = _741
        require _581 + _733 + _741 + 64 <= return_data.size
        t = 0
        while t < _741:
            mem[t + _754 + 32] = mem[t + _576 + _581 + _733 + 64]
            t = t + 32
            continue 
        if ceil32(_741) > _741:
            mem[_754 + _741 + 32] = 0
        mem[s] = _754
        s = s + 32
        idx = idx + 32
        continue 
    mem[mem[64]] = 0x4f1ef28600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = arg3.length
    mem[mem[64] + 100 len arg3.length] = arg3[all]
    mem[arg3.length + mem[64] + 100] = 0
    require ext_code.size(arg1)
    call arg1.upgradeToAndCall(address arg1, bytes arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _765 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _768 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _765) + 32
    if not _765:
        idx = 0
        while idx < _765:
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _880 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _887 = mem[_768]
        mem[mem[64] + 36] = mem[_768]
        idx = 0
        s = _768 + 32
        t = mem[64] + (32 * _887) + 68
        u = mem[64] + 68
        while idx < _887:
            mem[u] = t + -_880 - 68
            _1005 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1007 = mem[_1005 + 32]
            mem[t + 32] = 64
            _1008 = mem[_1007]
            mem[t + 64] = mem[_1007]
            v = 0
            while v < _1008:
                mem[v + t + 96] = mem[v + _1007 + 32]
                v = v + 32
                continue 
            if ceil32(_1008) > _1008:
                mem[t + _1008 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1008) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1021 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1033 = mem[_1021 + 32]
        require mem[_1021 + 32] <= test266151307()
        require _1021 + mem[_1021 + 32] + 31 < _1021 + return_data.size
        _1040 = mem[_1021 + mem[_1021 + 32]]
        if mem[_1021 + mem[_1021 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1021 + mem[_1021 + 32]]) + 1 < 0 or _1021 + ceil32(return_data.size) + ceil32(32 * mem[_1021 + mem[_1021 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1021 + ceil32(return_data.size) + ceil32(32 * mem[_1021 + mem[_1021 + 32]]) + 1
        mem[_1021 + ceil32(return_data.size)] = _1040
        require (32 * _1040) + _1033 + 32 <= return_data.size
        s = _1021 + ceil32(return_data.size) + 32
        idx = _1021 + _1033 + 32
        while idx < (32 * _1040) + _1021 + _1033 + 32:
            _1101 = mem[idx]
            require mem[idx] <= test266151307()
            require _1021 + return_data.size > _1021 + _1033 + mem[idx] + 63
            _1111 = mem[_1021 + _1033 + mem[idx] + 32]
            if mem[_1021 + _1033 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1116 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1021 + _1033 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1021 + _1033 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1021 + _1033 + mem[idx] + 32])) + 1
            mem[_1116] = _1111
            require _1033 + _1101 + _1111 + 64 <= return_data.size
            t = 0
            while t < _1111:
                mem[t + _1116 + 32] = mem[t + _1021 + _1033 + _1101 + 64]
                t = t + 32
                continue 
            if ceil32(_1111) > _1111:
                mem[_1116 + _1111 + 32] = 0
            mem[s] = _1116
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 0:
            if idx >= mem[_576 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1021 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1021 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _768 + (32 * _765) + 96
        mem[_768 + (32 * _765) + 32] = 0
        mem[_768 + (32 * _765) + 64] = 96
        mem[_768 + 32] = _768 + (32 * _765) + 32
        s = _768 + 32
        idx = _765
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_768 + (32 * _765) + 32] = 0
            mem[_768 + (32 * _765) + 64] = 96
            mem[s + 32] = _768 + (32 * _765) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _765:
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_768]:
                revert with 0, 50
            mem[mem[(32 * idx) + _768 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1009 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1013 = mem[_768]
        mem[mem[64] + 36] = mem[_768]
        idx = 0
        s = _768 + 32
        t = mem[64] + (32 * _1013) + 68
        u = mem[64] + 68
        while idx < _1013:
            mem[u] = t + -_1009 - 68
            _1103 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1105 = mem[_1103 + 32]
            mem[t + 32] = 64
            _1106 = mem[_1105]
            mem[t + 64] = mem[_1105]
            v = 0
            while v < _1106:
                mem[v + t + 96] = mem[v + _1105 + 32]
                v = v + 32
                continue 
            if ceil32(_1106) > _1106:
                mem[t + _1106 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1106) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1113 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1118 = mem[_1113 + 32]
        require mem[_1113 + 32] <= test266151307()
        require _1113 + mem[_1113 + 32] + 31 < _1113 + return_data.size
        _1126 = mem[_1113 + mem[_1113 + 32]]
        if mem[_1113 + mem[_1113 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1113 + mem[_1113 + 32]]) + 1 < 0 or _1113 + ceil32(return_data.size) + ceil32(32 * mem[_1113 + mem[_1113 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1113 + ceil32(return_data.size) + ceil32(32 * mem[_1113 + mem[_1113 + 32]]) + 1
        mem[_1113 + ceil32(return_data.size)] = _1126
        require (32 * _1126) + _1118 + 32 <= return_data.size
        s = _1113 + ceil32(return_data.size) + 32
        idx = _1113 + _1118 + 32
        while idx < (32 * _1126) + _1113 + _1118 + 32:
            _1167 = mem[idx]
            require mem[idx] <= test266151307()
            require _1113 + return_data.size > _1113 + _1118 + mem[idx] + 63
            _1173 = mem[_1113 + _1118 + mem[idx] + 32]
            if mem[_1113 + _1118 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1176 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1113 + _1118 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1113 + _1118 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1113 + _1118 + mem[idx] + 32])) + 1
            mem[_1176] = _1173
            require _1118 + _1167 + _1173 + 64 <= return_data.size
            t = 0
            while t < _1173:
                mem[t + _1176 + 32] = mem[t + _1113 + _1118 + _1167 + 64]
                t = t + 32
                continue 
            if ceil32(_1173) > _1173:
                mem[_1176 + _1173 + 32] = 0
            mem[s] = _1176
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 0:
            if idx >= mem[_576 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1113 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _576 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
