contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2b035a4e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == mem[_26 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_26 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _24 + (32 * _28) + -mem[64] + 64
    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg2))
        staticcall address(arg2).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == mem[_27 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_27 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64]] = 32
    _29 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _25 + (32 * _29) + -mem[64] + 64
}

function sub_7f144ea1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xc45a0155 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg1
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_29] == mem[_29 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_29 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _32 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _32:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _28 + (32 * _32) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_31 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _34 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _34:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _30 + (32 * _34) + -mem[64] + 64
}

function sub_5a2eb955(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225 < 224 or ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225 > test266151307():
        revert with 0, 65
    mem[224] = cd[(cd[4] + ('cd', 4).length + 4)]
    require cd[4] + ('cd', 4).length + (32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4).length + 36
    t = 256
    while idx < cd[(cd[4] + ('cd', 4).length + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[96] = 224
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 226 < 225 or ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 226 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 226
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[4] + ('cd', 4)[0] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 257
    while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _94 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 1
        mem[_94] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[0] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + 68
        w = _94 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _94
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[128] = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[192] = ('cd', 4)[2]
    require calldata.size - 36 >= 96
    _93 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    require cd[36] == address(cd[36])
    mem[_93] = cd[36]
    require cd[68] == address(cd[68])
    mem[_93 + 32] = cd[68]
    require cd[100] == address(cd[100])
    mem[_93 + 64] = cd[100]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _99 = mem[_98]
    stor1 = address(cd[36])
    stor2 = address(cd[68])
    stor3 = address(cd[100])
    _103 = mem[64]
    mem[mem[64] + 32] = address(cd[68])
    mem[mem[64] + 64] = cd[132]
    mem[mem[64] + 96] = 96
    mem[mem[64] + 128] = 128
    _105 = mem[mem[96]]
    mem[mem[64] + 256] = mem[mem[96]]
    idx = 0
    s = mem[96] + 32
    t = mem[64] + 288
    while idx < _105:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 160] = (32 * _105) + 160
    _139 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225]
    mem[mem[64] + (32 * _105) + 288] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225]
    idx = 0
    s = mem[64] + (32 * _105) + (32 * _139) + 320
    t = mem[64] + (32 * _105) + 320
    u = mem[128] + 32
    while idx < _139:
        mem[t] = s + -_103 + -(32 * _105) - 320
        _170 = mem[u]
        _172 = mem[mem[u]]
        mem[s] = mem[mem[u]]
        v = 0
        w = _170 + 32
        x = w + 32
        while v < _172:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _172 + 1
        w = _170 + (64 * _172) + 64
        t = t + 32
        u = u + 32
        continue 
    mem[_103 + 192] = mem[160]
    mem[_103 + 224] = mem[204 len 20]
    _171 = mem[64]
    mem[mem[64]] = s + -mem[64] - 32
    mem[64] = s
    mem[s] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
    mem[s + 4] = this.address
    mem[s + 36] = address(cd[68])
    mem[s + 68] = cd[132]
    mem[s + 100] = 128
    _173 = mem[_171]
    mem[s + 132] = mem[_171]
    mem[s + 164 len ceil32(_173)] = mem[_171 + 32 len ceil32(_173)]
    if ceil32(_173) > _173:
        mem[s + _173 + 164] = 0
    require ext_code.size(stor1)
    call stor1.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(cd[68]), cd[132], 128, mem[s + 132 len ceil32(_173) + 32]
    mem[s] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= _99:
        revert with 0, 'non profit'
}

function sub_4de2d3f5(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if arg1 < arg2:
        revert with 0, 17
    if arg1 - arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg1 - arg2
    mem[64] = (32 * arg1 - arg2) + 128
    if not arg1 - arg2:
        idx = 0
        while idx < arg1 - arg2:
            if idx > !arg2:
                revert with 0, 17
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(address(arg3))
            staticcall address(arg3).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_74]
            require mem[_74] == mem[_74 + 12 len 20]
            require ext_code.size(mem[_74 + 12 len 20])
            staticcall mem[_74 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _93 = mem[_90]
            require mem[_90] == mem[_90 + 18 len 14]
            _95 = mem[_90 + 32]
            require mem[_90 + 32] == mem[_90 + 50 len 14]
            require mem[_90 + 64] == mem[_90 + 92 len 4]
            require ext_code.size(address(_78))
            staticcall address(_78).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _105 = mem[_102]
            require mem[_102] == mem[_102 + 12 len 20]
            require ext_code.size(address(_78))
            staticcall address(_78).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_110]
            require mem[_110] == mem[_110 + 12 len 20]
            _116 = mem[64]
            mem[64] = mem[64] + 160
            mem[_116] = address(_78)
            mem[_116 + 32] = address(_105)
            mem[_116 + 64] = address(_113)
            mem[_116 + 96] = Mask(112, 0, _93)
            mem[_116 + 128] = Mask(112, 0, _95)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _116
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[mem[64]] = 32
        _63 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _63:
            _120 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_120 + 44 len 20]
            mem[t + 64] = mem[_120 + 76 len 20]
            mem[t + 96] = mem[_120 + 114 len 14]
            mem[t + 128] = mem[_120 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _62 + (160 * _63) + -mem[64] + 64
    mem[64] = (32 * arg1 - arg2) + 288
    mem[(32 * arg1 - arg2) + 128] = 0
    mem[(32 * arg1 - arg2) + 160] = 0
    mem[(32 * arg1 - arg2) + 192] = 0
    mem[(32 * arg1 - arg2) + 224] = 0
    mem[(32 * arg1 - arg2) + 256] = 0
    mem[128] = (32 * arg1 - arg2) + 128
    s = 128
    idx = arg1 - arg2
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * arg1 - arg2) + 128] = 0
        mem[(32 * arg1 - arg2) + 160] = 0
        mem[(32 * arg1 - arg2) + 192] = 0
        mem[(32 * arg1 - arg2) + 224] = 0
        mem[(32 * arg1 - arg2) + 256] = 0
        mem[s + 32] = (32 * arg1 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1 - arg2:
        if idx > !arg2:
            revert with 0, 17
        mem[mem[64] + 4] = idx + arg2
        require ext_code.size(address(arg3))
        staticcall address(arg3).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _138 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _139 = mem[_138]
        require mem[_138] == mem[_138 + 12 len 20]
        require ext_code.size(mem[_138 + 12 len 20])
        staticcall mem[_138 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _143 = mem[_142]
        require mem[_142] == mem[_142 + 18 len 14]
        _144 = mem[_142 + 32]
        require mem[_142 + 32] == mem[_142 + 50 len 14]
        require mem[_142 + 64] == mem[_142 + 92 len 4]
        require ext_code.size(address(_139))
        staticcall address(_139).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_148]
        require mem[_148] == mem[_148 + 12 len 20]
        require ext_code.size(address(_139))
        staticcall address(_139).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_152]
        require mem[_152] == mem[_152 + 12 len 20]
        _154 = mem[64]
        mem[64] = mem[64] + 160
        mem[_154] = address(_139)
        mem[_154 + 32] = address(_149)
        mem[_154 + 64] = address(_153)
        mem[_154 + 96] = Mask(112, 0, _143)
        mem[_154 + 128] = Mask(112, 0, _144)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _154
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _127 = mem[64]
    mem[mem[64]] = 32
    _128 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _128:
        _156 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_156 + 44 len 20]
        mem[t + 64] = mem[_156 + 76 len 20]
        mem[t + 96] = mem[_156 + 114 len 14]
        mem[t + 128] = mem[_156 + 146 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _127 + (160 * _128) + -mem[64] + 64
}

function sub_9c014aae(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if arg1 < arg2:
        revert with 0, 17
    if arg1 - arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg1 - arg2
    mem[64] = (32 * arg1 - arg2) + 128
    if not arg1 - arg2:
        idx = 0
        while idx < arg1 - arg2:
            if idx > !arg2:
                revert with 0, 17
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(address(arg3))
            staticcall address(arg3).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _100 = mem[_96]
            require mem[_96] == mem[_96 + 12 len 20]
            require ext_code.size(mem[_96 + 12 len 20])
            staticcall mem[_96 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _117 = mem[_114]
            require mem[_114] == mem[_114 + 18 len 14]
            _119 = mem[_114 + 32]
            require mem[_114 + 32] == mem[_114 + 50 len 14]
            require mem[_114 + 64] == mem[_114 + 92 len 4]
            require ext_code.size(address(_100))
            staticcall address(_100).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _129 = mem[_126]
            require mem[_126] == mem[_126 + 12 len 20]
            require ext_code.size(address(_100))
            staticcall address(_100).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _137 = mem[_134]
            require mem[_134] == mem[_134 + 12 len 20]
            _140 = mem[64]
            mem[64] = mem[64] + 224
            mem[_140] = address(_100)
            mem[_140 + 32] = address(_129)
            mem[_140 + 64] = address(_137)
            mem[_140 + 96] = Mask(112, 0, _117)
            mem[_140 + 128] = Mask(112, 0, _119)
            require ext_code.size(address(_129))
            staticcall address(_129).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_143] == mem[_143 + 31 len 1]
            mem[_140 + 160] = mem[_143 + 31 len 1]
            require ext_code.size(address(_137))
            staticcall address(_137).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_152] == mem[_152 + 31 len 1]
            mem[_140 + 192] = mem[_152 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _140
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 32
        _83 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _83:
            _160 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_160 + 44 len 20]
            mem[t + 64] = mem[_160 + 76 len 20]
            mem[t + 96] = mem[_160 + 114 len 14]
            mem[t + 128] = mem[_160 + 146 len 14]
            mem[t + 160] = mem[_160 + 191 len 1]
            mem[t + 192] = mem[_160 + 223 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _82 + (224 * _83) + -mem[64] + 64
    mem[64] = (32 * arg1 - arg2) + 352
    mem[(32 * arg1 - arg2) + 128] = 0
    mem[(32 * arg1 - arg2) + 160] = 0
    mem[(32 * arg1 - arg2) + 192] = 0
    mem[(32 * arg1 - arg2) + 224] = 0
    mem[(32 * arg1 - arg2) + 256] = 0
    mem[(32 * arg1 - arg2) + 288] = 0
    mem[(32 * arg1 - arg2) + 320] = 0
    mem[128] = (32 * arg1 - arg2) + 128
    s = 128
    idx = arg1 - arg2
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * arg1 - arg2) + 128] = 0
        mem[(32 * arg1 - arg2) + 160] = 0
        mem[(32 * arg1 - arg2) + 192] = 0
        mem[(32 * arg1 - arg2) + 224] = 0
        mem[(32 * arg1 - arg2) + 256] = 0
        mem[(32 * arg1 - arg2) + 288] = 0
        mem[(32 * arg1 - arg2) + 320] = 0
        mem[s + 32] = (32 * arg1 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1 - arg2:
        if idx > !arg2:
            revert with 0, 17
        mem[mem[64] + 4] = idx + arg2
        require ext_code.size(address(arg3))
        staticcall address(arg3).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _183 = mem[_182]
        require mem[_182] == mem[_182 + 12 len 20]
        require ext_code.size(mem[_182 + 12 len 20])
        staticcall mem[_182 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _187 = mem[_186]
        require mem[_186] == mem[_186 + 18 len 14]
        _188 = mem[_186 + 32]
        require mem[_186 + 32] == mem[_186 + 50 len 14]
        require mem[_186 + 64] == mem[_186 + 92 len 4]
        require ext_code.size(address(_183))
        staticcall address(_183).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _193 = mem[_192]
        require mem[_192] == mem[_192 + 12 len 20]
        require ext_code.size(address(_183))
        staticcall address(_183).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _197 = mem[_196]
        require mem[_196] == mem[_196 + 12 len 20]
        _198 = mem[64]
        mem[64] = mem[64] + 224
        mem[_198] = address(_183)
        mem[_198 + 32] = address(_193)
        mem[_198 + 64] = address(_197)
        mem[_198 + 96] = Mask(112, 0, _187)
        mem[_198 + 128] = Mask(112, 0, _188)
        require ext_code.size(address(_193))
        staticcall address(_193).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == mem[_201 + 31 len 1]
        mem[_198 + 160] = mem[_201 + 31 len 1]
        require ext_code.size(address(_197))
        staticcall address(_197).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_205] == mem[_205 + 31 len 1]
        mem[_198 + 192] = mem[_205 + 31 len 1]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _198
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _169 = mem[64]
    mem[mem[64]] = 32
    _170 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _170:
        _208 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_208 + 44 len 20]
        mem[t + 64] = mem[_208 + 76 len 20]
        mem[t + 96] = mem[_208 + 114 len 14]
        mem[t + 128] = mem[_208 + 146 len 14]
        mem[t + 160] = mem[_208 + 191 len 1]
        mem[t + 192] = mem[_208 + 223 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _169 + (224 * _170) + -mem[64] + 64
}

function sub_97c57cf5(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _72 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1
        mem[_72] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _72 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _72
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    _103 = mem[96]
    idx = 0
    s = 96
    while idx < _103:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _107 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        _109 = mem[(32 * idx) + 128]
        if 0 == idx:
            if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
                revert with 0, 50
            _114 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(_114))
            call address(_114).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == bool(mem[_120])
            if not mem[_120]:
                revert with 0, 'approve failed'
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _134 = mem[_107]
            mem[mem[64] + 164] = mem[_107]
            s = 0
            t = _107 + 32
            u = mem[64] + 196
            while s < _134:
                mem[u] = mem[t + 12 len 20]
                _103 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (24 * 3600)
            require ext_code.size(address(_109))
            call address(_109).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[68], 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * _134) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _158 = mem[_156]
            require mem[_156] <= test266151307()
            require _156 + return_data.size > _156 + mem[_156] + 31
            _160 = mem[_156 + mem[_156]]
            if mem[_156 + mem[_156]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_156 + mem[_156]]) + 1 < 0 or _156 + ceil32(return_data.size) + ceil32(32 * mem[_156 + mem[_156]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _156 + ceil32(return_data.size) + ceil32(32 * mem[_156 + mem[_156]]) + 1
            mem[_156 + ceil32(return_data.size)] = _160
            require _158 + (32 * _160) + 32 <= return_data.size
            t = _156 + _158 + 32
            u = _156 + ceil32(return_data.size) + 32
            s = 0
            while s < _160:
                mem[u] = mem[t]
                _103 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _103 = mem[96]
            idx = idx + 1
            s = _156 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _119 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
            revert with 0, 50
        _123 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _119
        require ext_code.size(address(_123))
        call address(_123).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _119
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_127] == bool(mem[_127])
        if not mem[_127]:
            revert with 0, 'approve failed'
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        _135 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _119
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _137 = mem[_107]
        mem[mem[64] + 164] = mem[_107]
        s = 0
        t = _107 + 32
        u = mem[64] + 196
        while s < _137:
            mem[u] = mem[t + 12 len 20]
            _103 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_135 + 100] = this.address
        mem[_135 + 132] = block.timestamp + (24 * 3600)
        require ext_code.size(address(_109))
        call address(_109).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _135 + (32 * _137) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_155]
        require mem[_155] <= test266151307()
        require _155 + return_data.size > _155 + mem[_155] + 31
        _159 = mem[_155 + mem[_155]]
        if mem[_155 + mem[_155]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_155 + mem[_155]]) + 1 < 0 or _155 + ceil32(return_data.size) + ceil32(32 * mem[_155 + mem[_155]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _155 + ceil32(return_data.size) + ceil32(32 * mem[_155 + mem[_155]]) + 1
        mem[_155 + ceil32(return_data.size)] = _159
        require _157 + (32 * _159) + 32 <= return_data.size
        t = _155 + _157 + 32
        u = _155 + ceil32(return_data.size) + 32
        s = 0
        while s < _159:
            mem[u] = mem[t]
            _103 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _103 = mem[96]
        idx = idx + 1
        s = _155 + ceil32(return_data.size)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_110] <= _74:
        revert with 0, 'non profit'
}

function sub_161a749e(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _80 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1
        mem[_80] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _80 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _80
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[68]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[68]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_81] == bool(mem[_81])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    _115 = mem[96]
    idx = 0
    s = 96
    while idx < _115:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _119 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        _121 = mem[(32 * idx) + 128]
        if 0 == idx:
            if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
                revert with 0, 50
            _126 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(_126))
            call address(_126).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_132] == bool(mem[_132])
            if not mem[_132]:
                revert with 0, 'approve failed'
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _146 = mem[_119]
            mem[mem[64] + 164] = mem[_119]
            s = 0
            t = _119 + 32
            u = mem[64] + 196
            while s < _146:
                mem[u] = mem[t + 12 len 20]
                _115 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (24 * 3600)
            require ext_code.size(address(_121))
            call address(_121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[68], 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * _146) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _170 = mem[_168]
            require mem[_168] <= test266151307()
            require _168 + return_data.size > _168 + mem[_168] + 31
            _172 = mem[_168 + mem[_168]]
            if mem[_168 + mem[_168]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_168 + mem[_168]]) + 1 < 0 or _168 + ceil32(return_data.size) + ceil32(32 * mem[_168 + mem[_168]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _168 + ceil32(return_data.size) + ceil32(32 * mem[_168 + mem[_168]]) + 1
            mem[_168 + ceil32(return_data.size)] = _172
            require _170 + (32 * _172) + 32 <= return_data.size
            t = _168 + _170 + 32
            u = _168 + ceil32(return_data.size) + 32
            s = 0
            while s < _172:
                mem[u] = mem[t]
                _115 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _115 = mem[96]
            idx = idx + 1
            s = _168 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _131 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
            revert with 0, 50
        _135 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _131
        require ext_code.size(address(_135))
        call address(_135).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _131
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_139] == bool(mem[_139])
        if not mem[_139]:
            revert with 0, 'approve failed'
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _131
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _149 = mem[_119]
        mem[mem[64] + 164] = mem[_119]
        s = 0
        t = _119 + 32
        u = mem[64] + 196
        while s < _149:
            mem[u] = mem[t + 12 len 20]
            _115 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + (24 * 3600)
        require ext_code.size(address(_121))
        call address(_121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _131, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * _149) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _169 = mem[_167]
        require mem[_167] <= test266151307()
        require _167 + return_data.size > _167 + mem[_167] + 31
        _171 = mem[_167 + mem[_167]]
        if mem[_167 + mem[_167]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_167 + mem[_167]]) + 1 < 0 or _167 + ceil32(return_data.size) + ceil32(32 * mem[_167 + mem[_167]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _167 + ceil32(return_data.size) + ceil32(32 * mem[_167 + mem[_167]]) + 1
        mem[_167 + ceil32(return_data.size)] = _171
        require _169 + (32 * _171) + 32 <= return_data.size
        t = _167 + _169 + 32
        u = _167 + ceil32(return_data.size) + 32
        s = 0
        while s < _171:
            mem[u] = mem[t]
            _115 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _115 = mem[96]
        idx = idx + 1
        s = _167 + ceil32(return_data.size)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_122] <= _86:
        revert with 0, 'non profit'
}

function sub_6153ac38(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    staticcall address(arg3).0xc45a0155 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 < arg2:
        revert with 0, 17
    if arg1 - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg1 - arg2
    mem[64] = ceil32(return_data.size) + (32 * arg1 - arg2) + 128
    if not arg1 - arg2:
        idx = 0
        while idx < arg1 - arg2:
            if idx > !arg2:
                revert with 0, 17
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _104 = mem[_98]
            require mem[_98] == mem[_98 + 12 len 20]
            require ext_code.size(mem[_98 + 12 len 20])
            staticcall mem[_98 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _121 = mem[_118]
            require mem[_118] == mem[_118 + 18 len 14]
            _123 = mem[_118 + 32]
            require mem[_118 + 32] == mem[_118 + 50 len 14]
            require mem[_118 + 64] == mem[_118 + 92 len 4]
            require ext_code.size(address(_104))
            staticcall address(_104).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _133 = mem[_130]
            require mem[_130] == mem[_130 + 12 len 20]
            require ext_code.size(address(_104))
            staticcall address(_104).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _141 = mem[_138]
            require mem[_138] == mem[_138 + 12 len 20]
            _144 = mem[64]
            mem[64] = mem[64] + 224
            mem[_144] = address(_104)
            mem[_144 + 32] = address(_133)
            mem[_144 + 64] = address(_141)
            mem[_144 + 96] = Mask(112, 0, _121)
            mem[_144 + 128] = Mask(112, 0, _123)
            require ext_code.size(address(_133))
            staticcall address(_133).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_147] == mem[_147 + 31 len 1]
            mem[_144 + 160] = mem[_147 + 31 len 1]
            require ext_code.size(address(_141))
            staticcall address(_141).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_156] == mem[_156 + 31 len 1]
            mem[_144 + 192] = mem[_156 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _144
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _86 = mem[64]
        mem[mem[64]] = 32
        _87 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _87:
            _164 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_164 + 44 len 20]
            mem[t + 64] = mem[_164 + 76 len 20]
            mem[t + 96] = mem[_164 + 114 len 14]
            mem[t + 128] = mem[_164 + 146 len 14]
            mem[t + 160] = mem[_164 + 191 len 1]
            mem[t + 192] = mem[_164 + 223 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _86 + (224 * _87) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1 - arg2) + 352
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 256] = 0
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 288] = 0
    mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 320] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * arg1 - arg2) + 128
    s = ceil32(return_data.size) + 128
    idx = arg1 - arg2
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 256] = 0
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 288] = 0
        mem[ceil32(return_data.size) + (32 * arg1 - arg2) + 320] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * arg1 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1 - arg2:
        if idx > !arg2:
            revert with 0, 17
        mem[mem[64] + 4] = idx + arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _187 = mem[_185]
        require mem[_185] == mem[_185 + 12 len 20]
        require ext_code.size(mem[_185 + 12 len 20])
        staticcall mem[_185 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _191 = mem[_190]
        require mem[_190] == mem[_190 + 18 len 14]
        _192 = mem[_190 + 32]
        require mem[_190 + 32] == mem[_190 + 50 len 14]
        require mem[_190 + 64] == mem[_190 + 92 len 4]
        require ext_code.size(address(_187))
        staticcall address(_187).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _197 = mem[_196]
        require mem[_196] == mem[_196 + 12 len 20]
        require ext_code.size(address(_187))
        staticcall address(_187).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_200]
        require mem[_200] == mem[_200 + 12 len 20]
        _202 = mem[64]
        mem[64] = mem[64] + 224
        mem[_202] = address(_187)
        mem[_202 + 32] = address(_197)
        mem[_202 + 64] = address(_201)
        mem[_202 + 96] = Mask(112, 0, _191)
        mem[_202 + 128] = Mask(112, 0, _192)
        require ext_code.size(address(_197))
        staticcall address(_197).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_205] == mem[_205 + 31 len 1]
        mem[_202 + 160] = mem[_205 + 31 len 1]
        require ext_code.size(address(_201))
        staticcall address(_201).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_209] == mem[_209 + 31 len 1]
        mem[_202 + 192] = mem[_209 + 31 len 1]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _202
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _173 = mem[64]
    mem[mem[64]] = 32
    _174 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _174:
        _212 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_212 + 44 len 20]
        mem[t + 64] = mem[_212 + 76 len 20]
        mem[t + 96] = mem[_212 + 114 len 14]
        mem[t + 128] = mem[_212 + 146 len 14]
        mem[t + 160] = mem[_212 + 191 len 1]
        mem[t + 192] = mem[_212 + 223 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _173 + (224 * _174) + -mem[64] + 64
}

function sub_1ea3a4be(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    mem[100] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 96
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        _43 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_43] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_43 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_43 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not idx:
            if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            _54 = mem[_43 + 32]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(_54))
            call address(_54).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_61] == bool(mem[_61])
            if not mem[_61]:
                revert with 0, 'approve failed'
            if 120 > !block.timestamp:
                revert with 0, 17
            _73 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            s = 0
            t = _43 + 32
            u = mem[64] + 196
            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_73 + 100] = this.address
            mem[_73 + 132] = block.timestamp + 120
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _73 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_105]
            require mem[_105] <= test266151307()
            require _105 + return_data.size > _105 + mem[_105] + 31
            _113 = mem[_105 + mem[_105]]
            if mem[_105 + mem[_105]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_105 + mem[_105]]) + 1 < 0 or _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1
            mem[_105 + ceil32(return_data.size)] = _113
            require _109 + (32 * _113) + 32 <= return_data.size
            t = _105 + _109 + 32
            u = _105 + ceil32(return_data.size) + 32
            s = 0
            while s < _113:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _105 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _60 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 50
        _65 = mem[_43 + 32]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = _60
        require ext_code.size(address(_65))
        call address(_65).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), _60
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == bool(mem[_69])
        if not mem[_69]:
            revert with 0, 'approve failed'
        if 120 > !block.timestamp:
            revert with 0, 17
        _77 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _60
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        s = 0
        t = _43 + 32
        u = mem[64] + 196
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_77 + 100] = this.address
        mem[_77 + 132] = block.timestamp + 120
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _77 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _108 = mem[_104]
        require mem[_104] <= test266151307()
        require _104 + return_data.size > _104 + mem[_104] + 31
        _112 = mem[_104 + mem[_104]]
        if mem[_104 + mem[_104]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_104 + mem[_104]]) + 1 < 0 or _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1
        mem[_104 + ceil32(return_data.size)] = _112
        require _108 + (32 * _112) + 32 <= return_data.size
        t = _104 + _108 + 32
        u = _104 + ceil32(return_data.size) + 32
        s = 0
        while s < _112:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _104 + ceil32(return_data.size)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _42 = mem[_41]
    if mem[_41] <= ext_call.return_data[0]:
        revert with 0, '', 0
    if mem[_41] < ext_call.return_data[0]:
        revert with 0, 17
    if not mem[_41] - ext_call.return_data[0]:
        revert with 0, '', 0
    s = 0
    idx = mem[_41] - ext_call.return_data[0]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _97 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _42 - ext_call.return_data[0]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[_97]:
                revert with 0, 50
            mem[t + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _128 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _130 = mem[_97]
        mem[mem[64] + 36] = mem[_97]
        mem[mem[64] + 68 len ceil32(_130)] = mem[_97 + 32 len ceil32(_130)]
        if ceil32(_130) <= _130:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_130) + 32]
        mem[mem[64] + _130 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_130) + _128 + -mem[64] + 68
    mem[_97 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _42 - ext_call.return_data[0]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[_97]:
            revert with 0, 50
        mem[t + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _131 = mem[_97]
    mem[mem[64] + 36] = mem[_97]
    mem[mem[64] + 68 len ceil32(_131)] = mem[_97 + 32 len ceil32(_131)]
    if ceil32(_131) > _131:
        mem[mem[64] + _131 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_131) + 32]
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(stor3)
    staticcall stor3.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 96
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 100)] <= test266151307()
    require arg5.length - cd[(arg5 + 100)] >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require cd[(arg5 + cd[(arg5 + 100)] + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225 < 224 or ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 224] = cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]
    require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 68
    t = ceil32(return_data.size) + 256
    while idx < cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 224
    require cd[(arg5 + cd[(arg5 + 100)] + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 226 < 225 or ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 226 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 226
    mem[ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225] = cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]
    require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 68
    t = ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257
    while idx < cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]:
        require cd[s] <= test266151307()
        require arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 99 < arg5 + arg5.length + 36
        if cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)] > test266151307():
            revert with 0, 65
        _86 = mem[64]
        if mem[64] + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 1
        mem[_86] = cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]
        require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 100 <= arg5.length + 36
        u = 0
        v = arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 100
        w = _86 + 32
        while u < cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _86
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225
    mem[ceil32(return_data.size) + 160] = cd[(arg5 + cd[(arg5 + 100)] + 100)]
    require cd[(arg5 + cd[(arg5 + 100)] + 132)] == address(cd[(arg5 + cd[(arg5 + 100)] + 132)])
    mem[ceil32(return_data.size) + 192] = cd[(arg5 + cd[(arg5 + 100)] + 132)]
    if address(cd[(arg5 + 36)]) != arg2:
        revert with 0, 'encoded data (borrowToken) does not match'
    if cd[(arg5 + 68)] != arg3:
        revert with 0, 'encoded data (borrowAmount) does not match'
    if arg3 > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_92] == bool(mem[_92])
    _94 = mem[ceil32(return_data.size) + 96]
    _121 = mem[mem[ceil32(return_data.size) + 96]]
    idx = 0
    s = 96
    while idx < _121:
        if idx >= mem[ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225]:
            revert with 0, 50
        _123 = mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257]
        if idx >= mem[_94]:
            revert with 0, 50
        _126 = mem[(32 * idx) + _94 + 32]
        if 0 == idx:
            if 0 >= mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257]]:
                revert with 0, 50
            _130 = mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _94 + 44 len 20]
            mem[mem[64] + 36] = cd[(arg5 + cd[(arg5 + 100)] + 100)]
            require ext_code.size(address(_130))
            call address(_130).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[(arg5 + cd[(arg5 + 100)] + 100)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_135] == bool(mem[_135])
            if not mem[_135]:
                revert with 0, 'approve failed'
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            _145 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[(arg5 + cd[(arg5 + 100)] + 100)]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _148 = mem[_123]
            mem[mem[64] + 164] = mem[_123]
            s = 0
            t = _123 + 32
            u = mem[64] + 196
            while s < _148:
                mem[u] = mem[t + 12 len 20]
                _121 = mem[_94]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_145 + 100] = this.address
            mem[_145 + 132] = block.timestamp + (24 * 3600)
            require ext_code.size(address(_126))
            call address(_126).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _145 + (32 * _148) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _172 = mem[_170]
            require mem[_170] <= test266151307()
            require _170 + return_data.size > _170 + mem[_170] + 31
            _174 = mem[_170 + mem[_170]]
            if mem[_170 + mem[_170]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_170 + mem[_170]]) + 1 < 0 or _170 + ceil32(return_data.size) + ceil32(32 * mem[_170 + mem[_170]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _170 + ceil32(return_data.size) + ceil32(32 * mem[_170 + mem[_170]]) + 1
            mem[_170 + ceil32(return_data.size)] = _174
            require _172 + (32 * _174) + 32 <= return_data.size
            t = _170 + _172 + 32
            u = _170 + ceil32(return_data.size) + 32
            s = 0
            while s < _174:
                mem[u] = mem[t]
                _121 = mem[_94]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _121 = mem[_94]
            idx = idx + 1
            s = _170 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _134 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257]]:
            revert with 0, 50
        _137 = mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _94 + 44 len 20]
        mem[mem[64] + 36] = _134
        require ext_code.size(address(_137))
        call address(_137).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _134
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_141] == bool(mem[_141])
        if not mem[_141]:
            revert with 0, 'approve failed'
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        _149 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _134
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _151 = mem[_123]
        mem[mem[64] + 164] = mem[_123]
        s = 0
        t = _123 + 32
        u = mem[64] + 196
        while s < _151:
            mem[u] = mem[t + 12 len 20]
            _121 = mem[_94]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_149 + 100] = this.address
        mem[_149 + 132] = block.timestamp + (24 * 3600)
        require ext_code.size(address(_126))
        call address(_126).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _149 + (32 * _151) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _171 = mem[_169]
        require mem[_169] <= test266151307()
        require _169 + return_data.size > _169 + mem[_169] + 31
        _173 = mem[_169 + mem[_169]]
        if mem[_169 + mem[_169]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_169 + mem[_169]]) + 1 < 0 or _169 + ceil32(return_data.size) + ceil32(32 * mem[_169 + mem[_169]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _169 + ceil32(return_data.size) + ceil32(32 * mem[_169 + mem[_169]]) + 1
        mem[_169 + ceil32(return_data.size)] = _173
        require _171 + (32 * _173) + 32 <= return_data.size
        t = _169 + _171 + 32
        u = _169 + ceil32(return_data.size) + 32
        s = 0
        while s < _173:
            mem[u] = mem[t]
            _121 = mem[_94]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _121 = mem[_94]
        idx = idx + 1
        s = _169 + ceil32(return_data.size)
        continue 
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
