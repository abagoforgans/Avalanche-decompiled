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
    call arg1.0x8f283970 with:
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
    mem[96] = 11
    s = 128
    idx = 11
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[480] = 4
    mem[512 len 4] = 4127795209
    mem[128] = 480
    mem[516] = 4
    mem[548 len 4] = depositFee()
    mem[160] = 516
    mem[552] = 4
    mem[584 len 4] = issueFee()
    mem[192] = 552
    mem[588] = 4
    mem[620 len 4] = withdrawFee()
    mem[224] = 588
    mem[624] = 4
    mem[656 len 4] = 2081380852
    mem[256] = 624
    mem[660] = 4
    mem[692 len 4] = swapFee()
    mem[288] = 660
    mem[696] = 4
    mem[728 len 4] = 3000569531
    mem[320] = 696
    mem[732] = 4
    mem[764 len 4] = 3942567930
    mem[352] = 732
    mem[768] = 4
    mem[800 len 4] = 769043893
    mem[384] = 768
    mem[804] = 4
    mem[836 len 4] = 3937248130
    mem[416] = 804
    mem[840] = 4
    mem[872 len 4] = treasury()
    mem[448] = 840
    mem[876] = 11
    mem[64] = 1324
    mem[1260] = 0
    mem[1292] = 96
    mem[908] = 1260
    s = 908
    idx = 11
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[1260] = 0
        mem[1292] = 96
        mem[s + 32] = 1260
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 11:
        if idx >= mem[876]:
            revert with 0, 50
        mem[mem[(32 * idx) + 908]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[876]:
            revert with 0, 50
        mem[mem[(32 * idx) + 908] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _421 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _424 = mem[876]
    mem[mem[64] + 36] = mem[876]
    idx = 0
    s = 908
    t = mem[64] + (32 * _424) + 68
    u = mem[64] + 68
    while idx < _424:
        mem[u] = t + -_421 - 68
        _599 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _601 = mem[_599 + 32]
        mem[t + 32] = 64
        _602 = mem[_601]
        mem[t + 64] = mem[_601]
        v = 0
        while v < _602:
            mem[v + t + 96] = mem[v + _601 + 32]
            v = v + 32
            continue 
        if ceil32(_602) > _602:
            mem[t + _602 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_602) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _606 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _611 = mem[_606 + 32]
    require mem[_606 + 32] <= test266151307()
    require _606 + mem[_606 + 32] + 31 < _606 + return_data.size
    _613 = mem[_606 + mem[_606 + 32]]
    if mem[_606 + mem[_606 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_606 + mem[_606 + 32]]) + 1 < 0 or _606 + ceil32(return_data.size) + ceil32(32 * mem[_606 + mem[_606 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _606 + ceil32(return_data.size) + ceil32(32 * mem[_606 + mem[_606 + 32]]) + 1
    mem[_606 + ceil32(return_data.size)] = _613
    require (32 * _613) + _611 + 32 <= return_data.size
    s = _606 + ceil32(return_data.size) + 32
    idx = _606 + _611 + 32
    while idx < (32 * _613) + _606 + _611 + 32:
        _763 = mem[idx]
        require mem[idx] <= test266151307()
        require _606 + return_data.size > _606 + _611 + mem[idx] + 63
        _771 = mem[_606 + _611 + mem[idx] + 32]
        if mem[_606 + _611 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _784 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_606 + _611 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_606 + _611 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_606 + _611 + mem[idx] + 32])) + 1
        mem[_784] = _771
        require _611 + _763 + _771 + 64 <= return_data.size
        t = 0
        while t < _771:
            mem[t + _784 + 32] = mem[t + _606 + _611 + _763 + 64]
            t = t + 32
            continue 
        if ceil32(_771) > _771:
            mem[_784 + _771 + 32] = 0
        mem[s] = _784
        s = s + 32
        idx = idx + 32
        continue 
    mem[mem[64]] = 0x3659cfe600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(arg1)
    call arg1.0x3659cfe6 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _795 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _798 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _795) + 32
    if not _795:
        idx = 0
        while idx < _795:
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _910 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _917 = mem[_798]
        mem[mem[64] + 36] = mem[_798]
        idx = 0
        s = _798 + 32
        t = mem[64] + (32 * _917) + 68
        u = mem[64] + 68
        while idx < _917:
            mem[u] = t + -_910 - 68
            _1035 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1037 = mem[_1035 + 32]
            mem[t + 32] = 64
            _1038 = mem[_1037]
            mem[t + 64] = mem[_1037]
            v = 0
            while v < _1038:
                mem[v + t + 96] = mem[v + _1037 + 32]
                v = v + 32
                continue 
            if ceil32(_1038) > _1038:
                mem[t + _1038 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1038) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1051 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1063 = mem[_1051 + 32]
        require mem[_1051 + 32] <= test266151307()
        require _1051 + mem[_1051 + 32] + 31 < _1051 + return_data.size
        _1070 = mem[_1051 + mem[_1051 + 32]]
        if mem[_1051 + mem[_1051 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1051 + mem[_1051 + 32]]) + 1 < 0 or _1051 + ceil32(return_data.size) + ceil32(32 * mem[_1051 + mem[_1051 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1051 + ceil32(return_data.size) + ceil32(32 * mem[_1051 + mem[_1051 + 32]]) + 1
        mem[_1051 + ceil32(return_data.size)] = _1070
        require (32 * _1070) + _1063 + 32 <= return_data.size
        s = _1051 + ceil32(return_data.size) + 32
        idx = _1051 + _1063 + 32
        while idx < (32 * _1070) + _1051 + _1063 + 32:
            _1131 = mem[idx]
            require mem[idx] <= test266151307()
            require _1051 + return_data.size > _1051 + _1063 + mem[idx] + 63
            _1141 = mem[_1051 + _1063 + mem[idx] + 32]
            if mem[_1051 + _1063 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1148 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1051 + _1063 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1051 + _1063 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1051 + _1063 + mem[idx] + 32])) + 1
            mem[_1148] = _1141
            require _1063 + _1131 + _1141 + 64 <= return_data.size
            t = 0
            while t < _1141:
                mem[t + _1148 + 32] = mem[t + _1051 + _1063 + _1131 + 64]
                t = t + 32
                continue 
            if ceil32(_1141) > _1141:
                mem[_1148 + _1141 + 32] = 0
            mem[s] = _1148
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 8:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1051 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 9
        while idx <= 10:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1051 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _798 + (32 * _795) + 96
        mem[_798 + (32 * _795) + 32] = 0
        mem[_798 + (32 * _795) + 64] = 96
        mem[_798 + 32] = _798 + (32 * _795) + 32
        s = _798 + 32
        idx = _795
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_798 + (32 * _795) + 32] = 0
            mem[_798 + (32 * _795) + 64] = 96
            mem[s + 32] = _798 + (32 * _795) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _795:
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1039 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1043 = mem[_798]
        mem[mem[64] + 36] = mem[_798]
        idx = 0
        s = _798 + 32
        t = mem[64] + (32 * _1043) + 68
        u = mem[64] + 68
        while idx < _1043:
            mem[u] = t + -_1039 - 68
            _1133 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1135 = mem[_1133 + 32]
            mem[t + 32] = 64
            _1136 = mem[_1135]
            mem[t + 64] = mem[_1135]
            v = 0
            while v < _1136:
                mem[v + t + 96] = mem[v + _1135 + 32]
                v = v + 32
                continue 
            if ceil32(_1136) > _1136:
                mem[t + _1136 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1136) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1143 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1154 = mem[_1143 + 32]
        require mem[_1143 + 32] <= test266151307()
        require _1143 + mem[_1143 + 32] + 31 < _1143 + return_data.size
        _1163 = mem[_1143 + mem[_1143 + 32]]
        if mem[_1143 + mem[_1143 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1143 + mem[_1143 + 32]]) + 1 < 0 or _1143 + ceil32(return_data.size) + ceil32(32 * mem[_1143 + mem[_1143 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1143 + ceil32(return_data.size) + ceil32(32 * mem[_1143 + mem[_1143 + 32]]) + 1
        mem[_1143 + ceil32(return_data.size)] = _1163
        require (32 * _1163) + _1154 + 32 <= return_data.size
        s = _1143 + ceil32(return_data.size) + 32
        idx = _1143 + _1154 + 32
        while idx < (32 * _1163) + _1143 + _1154 + 32:
            _1208 = mem[idx]
            require mem[idx] <= test266151307()
            require _1143 + return_data.size > _1143 + _1154 + mem[idx] + 63
            _1216 = mem[_1143 + _1154 + mem[idx] + 32]
            if mem[_1143 + _1154 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1224 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1143 + _1154 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1143 + _1154 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1143 + _1154 + mem[idx] + 32])) + 1
            mem[_1224] = _1216
            require _1154 + _1208 + _1216 + 64 <= return_data.size
            t = 0
            while t < _1216:
                mem[t + _1224 + 32] = mem[t + _1143 + _1154 + _1208 + 64]
                t = t + 32
                continue 
            if ceil32(_1216) > _1216:
                mem[_1224 + _1216 + 32] = 0
            mem[s] = _1224
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 8:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1143 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 9
        while idx <= 10:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1143 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 44 len 20]:
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
    mem[96] = 11
    s = 128
    idx = 11
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[480] = 4
    mem[512 len 4] = 4127795209
    mem[128] = 480
    mem[516] = 4
    mem[548 len 4] = depositFee()
    mem[160] = 516
    mem[552] = 4
    mem[584 len 4] = issueFee()
    mem[192] = 552
    mem[588] = 4
    mem[620 len 4] = withdrawFee()
    mem[224] = 588
    mem[624] = 4
    mem[656 len 4] = 2081380852
    mem[256] = 624
    mem[660] = 4
    mem[692 len 4] = swapFee()
    mem[288] = 660
    mem[696] = 4
    mem[728 len 4] = 3000569531
    mem[320] = 696
    mem[732] = 4
    mem[764 len 4] = 3942567930
    mem[352] = 732
    mem[768] = 4
    mem[800 len 4] = 769043893
    mem[384] = 768
    mem[804] = 4
    mem[836 len 4] = 3937248130
    mem[416] = 804
    mem[840] = 4
    mem[872 len 4] = treasury()
    mem[448] = 840
    mem[876] = 11
    mem[64] = 1324
    mem[1260] = 0
    mem[1292] = 96
    mem[908] = 1260
    s = 908
    idx = 11
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[1260] = 0
        mem[1292] = 96
        mem[s + 32] = 1260
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 11:
        if idx >= mem[876]:
            revert with 0, 50
        mem[mem[(32 * idx) + 908]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[876]:
            revert with 0, 50
        mem[mem[(32 * idx) + 908] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _421 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _424 = mem[876]
    mem[mem[64] + 36] = mem[876]
    idx = 0
    s = 908
    t = mem[64] + (32 * _424) + 68
    u = mem[64] + 68
    while idx < _424:
        mem[u] = t + -_421 - 68
        _599 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _601 = mem[_599 + 32]
        mem[t + 32] = 64
        _602 = mem[_601]
        mem[t + 64] = mem[_601]
        v = 0
        while v < _602:
            mem[v + t + 96] = mem[v + _601 + 32]
            v = v + 32
            continue 
        if ceil32(_602) > _602:
            mem[t + _602 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_602) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _606 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _611 = mem[_606 + 32]
    require mem[_606 + 32] <= test266151307()
    require _606 + mem[_606 + 32] + 31 < _606 + return_data.size
    _613 = mem[_606 + mem[_606 + 32]]
    if mem[_606 + mem[_606 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_606 + mem[_606 + 32]]) + 1 < 0 or _606 + ceil32(return_data.size) + ceil32(32 * mem[_606 + mem[_606 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _606 + ceil32(return_data.size) + ceil32(32 * mem[_606 + mem[_606 + 32]]) + 1
    mem[_606 + ceil32(return_data.size)] = _613
    require (32 * _613) + _611 + 32 <= return_data.size
    s = _606 + ceil32(return_data.size) + 32
    idx = _606 + _611 + 32
    while idx < (32 * _613) + _606 + _611 + 32:
        _763 = mem[idx]
        require mem[idx] <= test266151307()
        require _606 + return_data.size > _606 + _611 + mem[idx] + 63
        _771 = mem[_606 + _611 + mem[idx] + 32]
        if mem[_606 + _611 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _784 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_606 + _611 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_606 + _611 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_606 + _611 + mem[idx] + 32])) + 1
        mem[_784] = _771
        require _611 + _763 + _771 + 64 <= return_data.size
        t = 0
        while t < _771:
            mem[t + _784 + 32] = mem[t + _606 + _611 + _763 + 64]
            t = t + 32
            continue 
        if ceil32(_771) > _771:
            mem[_784 + _771 + 32] = 0
        mem[s] = _784
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
    call arg1.0x4f1ef286 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _795 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _798 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _795) + 32
    if not _795:
        idx = 0
        while idx < _795:
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _910 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _917 = mem[_798]
        mem[mem[64] + 36] = mem[_798]
        idx = 0
        s = _798 + 32
        t = mem[64] + (32 * _917) + 68
        u = mem[64] + 68
        while idx < _917:
            mem[u] = t + -_910 - 68
            _1035 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1037 = mem[_1035 + 32]
            mem[t + 32] = 64
            _1038 = mem[_1037]
            mem[t + 64] = mem[_1037]
            v = 0
            while v < _1038:
                mem[v + t + 96] = mem[v + _1037 + 32]
                v = v + 32
                continue 
            if ceil32(_1038) > _1038:
                mem[t + _1038 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1038) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1051 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1063 = mem[_1051 + 32]
        require mem[_1051 + 32] <= test266151307()
        require _1051 + mem[_1051 + 32] + 31 < _1051 + return_data.size
        _1070 = mem[_1051 + mem[_1051 + 32]]
        if mem[_1051 + mem[_1051 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1051 + mem[_1051 + 32]]) + 1 < 0 or _1051 + ceil32(return_data.size) + ceil32(32 * mem[_1051 + mem[_1051 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1051 + ceil32(return_data.size) + ceil32(32 * mem[_1051 + mem[_1051 + 32]]) + 1
        mem[_1051 + ceil32(return_data.size)] = _1070
        require (32 * _1070) + _1063 + 32 <= return_data.size
        s = _1051 + ceil32(return_data.size) + 32
        idx = _1051 + _1063 + 32
        while idx < (32 * _1070) + _1051 + _1063 + 32:
            _1131 = mem[idx]
            require mem[idx] <= test266151307()
            require _1051 + return_data.size > _1051 + _1063 + mem[idx] + 63
            _1141 = mem[_1051 + _1063 + mem[idx] + 32]
            if mem[_1051 + _1063 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1148 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1051 + _1063 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1051 + _1063 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1051 + _1063 + mem[idx] + 32])) + 1
            mem[_1148] = _1141
            require _1063 + _1131 + _1141 + 64 <= return_data.size
            t = 0
            while t < _1141:
                mem[t + _1148 + 32] = mem[t + _1051 + _1063 + _1131 + 64]
                t = t + 32
                continue 
            if ceil32(_1141) > _1141:
                mem[_1148 + _1141 + 32] = 0
            mem[s] = _1148
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 8:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1051 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 9
        while idx <= 10:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1051 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1051 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _798 + (32 * _795) + 96
        mem[_798 + (32 * _795) + 32] = 0
        mem[_798 + (32 * _795) + 64] = 96
        mem[_798 + 32] = _798 + (32 * _795) + 32
        s = _798 + 32
        idx = _795
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_798 + (32 * _795) + 32] = 0
            mem[_798 + (32 * _795) + 64] = 96
            mem[s + 32] = _798 + (32 * _795) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _795:
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_798]:
                revert with 0, 50
            mem[mem[(32 * idx) + _798 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1039 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1043 = mem[_798]
        mem[mem[64] + 36] = mem[_798]
        idx = 0
        s = _798 + 32
        t = mem[64] + (32 * _1043) + 68
        u = mem[64] + 68
        while idx < _1043:
            mem[u] = t + -_1039 - 68
            _1133 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1135 = mem[_1133 + 32]
            mem[t + 32] = 64
            _1136 = mem[_1135]
            mem[t + 64] = mem[_1135]
            v = 0
            while v < _1136:
                mem[v + t + 96] = mem[v + _1135 + 32]
                v = v + 32
                continue 
            if ceil32(_1136) > _1136:
                mem[t + _1136 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1136) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1143 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1154 = mem[_1143 + 32]
        require mem[_1143 + 32] <= test266151307()
        require _1143 + mem[_1143 + 32] + 31 < _1143 + return_data.size
        _1163 = mem[_1143 + mem[_1143 + 32]]
        if mem[_1143 + mem[_1143 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1143 + mem[_1143 + 32]]) + 1 < 0 or _1143 + ceil32(return_data.size) + ceil32(32 * mem[_1143 + mem[_1143 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1143 + ceil32(return_data.size) + ceil32(32 * mem[_1143 + mem[_1143 + 32]]) + 1
        mem[_1143 + ceil32(return_data.size)] = _1163
        require (32 * _1163) + _1154 + 32 <= return_data.size
        s = _1143 + ceil32(return_data.size) + 32
        idx = _1143 + _1154 + 32
        while idx < (32 * _1163) + _1143 + _1154 + 32:
            _1208 = mem[idx]
            require mem[idx] <= test266151307()
            require _1143 + return_data.size > _1143 + _1154 + mem[idx] + 63
            _1216 = mem[_1143 + _1154 + mem[idx] + 32]
            if mem[_1143 + _1154 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _1224 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1143 + _1154 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1143 + _1154 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1143 + _1154 + mem[idx] + 32])) + 1
            mem[_1224] = _1216
            require _1154 + _1208 + _1216 + 64 <= return_data.size
            t = 0
            while t < _1216:
                mem[t + _1224 + 32] = mem[t + _1143 + _1154 + _1208 + 64]
                t = t + 32
                continue 
            if ceil32(_1216) > _1216:
                mem[_1224 + _1216 + 32] = 0
            mem[s] = _1224
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 8:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1143 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 9
        while idx <= 10:
            if idx >= mem[_606 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1143 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _606 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1143 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
