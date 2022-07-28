contract main {




// =====================  Runtime code  =====================


const nextAddress = address(this.address)


address owner;
uint256 stor1;
uint256 stor2;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setShares(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    stor2 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + arg2 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawAll(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _14
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _14
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_98c0fc34(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require ('cd', 4).length >= 32
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 67 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[0] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 97 < 96 or ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 97
    mem[96] = cd[(cd[4] + ('cd', 4)[0] + 36)]
    require ('cd', 4)[0] + (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 68
    t = 128
    while idx < cd[(cd[4] + ('cd', 4)[0] + 36)]:
        require cd[s] <= test266151307()
        require ('cd', 4).length + -('cd', 4)[0] + -cd[s] - 32 >= 192
        _242 = mem[64]
        if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 192
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 99 < cd[4] + ('cd', 4).length + 36
        if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)] > test266151307():
            revert with 0, 65
        _278 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 1
        mem[_278] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]
        require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 100 <= ('cd', 4).length + 36
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 100
        w = _278 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_242] = _278
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 99 < cd[4] + ('cd', 4).length + 36
        if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)] > test266151307():
            revert with 0, 65
        _510 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 1
        mem[_510] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]
        require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 100 <= ('cd', 4).length + 36
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 100
        w = _510 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_242 + 32] = _510
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)] == address(cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)])
        mem[_242 + 64] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)]
        mem[_242 + 96] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 164)]
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 99 < cd[4] + ('cd', 4).length + 36
        if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)] > test266151307():
            revert with 0, 65
        _770 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 1
        mem[_770] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]
        require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 100 <= ('cd', 4).length + 36
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 100
        w = _770 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_242 + 128] = _770
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 99 < cd[4] + ('cd', 4).length + 36
        if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)] > test266151307():
            revert with 0, 65
        _977 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 1
        mem[_977] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]
        require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 100 <= ('cd', 4).length + 36
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 100
        w = _977 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_242 + 160] = _977
        mem[t] = _242
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[mem[(32 * idx) + 128]]] <= s:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[mem[mem[(32 * idx) + 128]]]
        continue 
    idx = 0
    while idx < mem[96]:
        if idx < mem[96]:
            if idx < mem[96]:
                if idx < mem[96]:
                    if var91003 >= mem[mem[mem[(32 * idx) + 128]]]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx < mem[96]:
                        _1278 = mem[mem[(32 * idx) + 128]]
                        _1279 = mem[mem[mem[(32 * idx) + 128]]]
                        s = var93001
                        t = var93002
                        u = var93003
                        while s < _1279:
                            _1280 = mem[(32 * s) + _1278 + 32]
                            if idx >= mem[96]:
                                revert with 0, 50
                            if s >= mem[mem[mem[(32 * idx) + 128] + 32]]:
                                revert with 0, 50
                            _1285 = mem[(32 * s) + mem[mem[(32 * idx) + 128] + 32] + 32]
                            require ext_code.size(mem[(32 * s) + _1278 + 44 len 20])
                            staticcall mem[(32 * s) + _1278 + 44 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1288] == mem[_1288 + 12 len 20]
                            require ext_code.size(address(_1280))
                            staticcall address(_1280).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if address(u) == mem[_1288 + 12 len 20]:
                                _1295 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1297 = mem[_1295]
                                require mem[_1295] == mem[_1295 + 18 len 14]
                                _1299 = mem[_1295 + 32]
                                require mem[_1295 + 32] == mem[_1295 + 50 len 14]
                                require mem[_1295 + 64] == mem[_1295 + 92 len 4]
                                mem[mem[64] + 4] = t
                                mem[mem[64] + 36] = Mask(112, 0, _1297)
                                mem[mem[64] + 68] = Mask(112, 0, _1299)
                                require ext_code.size(address(_1285))
                                staticcall address(_1285).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args t, _1297 << 144, Mask(112, 0, _1299)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1307 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1309 = mem[_1307]
                                require ext_code.size(address(_1280))
                                staticcall address(_1280).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1315 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1315] == mem[_1315 + 12 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    s = s + 1
                                    t = _1309
                                    u = mem[_1315]
                                    continue 
                            else:
                                _1294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1296 = mem[_1294]
                                require mem[_1294] == mem[_1294 + 18 len 14]
                                _1298 = mem[_1294 + 32]
                                require mem[_1294 + 32] == mem[_1294 + 50 len 14]
                                require mem[_1294 + 64] == mem[_1294 + 92 len 4]
                                mem[mem[64] + 4] = t
                                mem[mem[64] + 36] = Mask(112, 0, _1298)
                                mem[mem[64] + 68] = Mask(112, 0, _1296)
                                require ext_code.size(address(_1285))
                                staticcall address(_1285).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args t, _1298 << 144, Mask(112, 0, _1296)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1306 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1308 = mem[_1306]
                                require ext_code.size(address(_1280))
                                staticcall address(_1280).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1314] == mem[_1314 + 12 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if _1308:
                                    if s + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        s = s + 1
                                        t = _1308
                                        u = mem[_1314]
                                        continue 
                                else:
                                    if s + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        s = s + 1
                                        t = 0
                                        u = mem[_1314]
                                        continue 
                            ('ge', ('add', 1, ('var', 1)), ('mem', ('range', ('mem', ('range', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), 32)))
                            if idx >= mem[96]:
                                revert with 0, 50
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        revert with 0, 50
    emit 0xa6f0bbc8 
    if 0 >= mem[96]:
        revert with 0, 50
    _724 = mem[mem[128] + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_724))
    staticcall address(_724).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _731 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if 0 >= mem[96]:
        revert with 0, 50
    if 0 >= mem[96]:
        revert with 0, 50
    if mem[_731] < mem[mem[128] + 96]:
        if 0 >= mem[96]:
            revert with 0, 50
        _763 = mem[mem[128] + 96]
        mem[mem[64]] = mem[mem[128] + 76 len 20]
        emit 0xf6deaa04: mem[mem[64]], _763
    else:
        _754 = mem[mem[128] + 64]
        if 0 >= mem[96]:
            revert with 0, 50
        _760 = mem[mem[128] + 96]
        if 0 >= mem[96]:
            revert with 0, 50
        _767 = mem[mem[128]]
        if 0 >= mem[96]:
            revert with 0, 50
        _772 = mem[mem[128] + 32]
        if 0 >= mem[mem[mem[128]]]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[mem[mem[128]] + 44 len 20]
        mem[mem[64] + 36] = _760
        require ext_code.size(address(_754))
        call address(_754).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _760
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _778 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_778] == bool(mem[_778])
        _940 = mem[_767]
        idx = 0
        s = _760
        t = _754
        while idx < _940:
            if mem[_767] < 1:
                revert with 0, 17
            if idx >= mem[_767] - 1:
                if idx >= mem[_767]:
                    revert with 0, 50
                _967 = mem[(32 * idx) + _767 + 32]
                if idx >= mem[_772]:
                    revert with 0, 50
                _972 = mem[(32 * idx) + _772 + 32]
                require ext_code.size(mem[(32 * idx) + _767 + 44 len 20])
                staticcall mem[(32 * idx) + _767 + 44 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _981 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_981] == mem[_981 + 12 len 20]
                require ext_code.size(address(_967))
                staticcall address(_967).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(t) == mem[_981 + 12 len 20]:
                    _1000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1008 = mem[_1000]
                    require mem[_1000] == mem[_1000 + 18 len 14]
                    _1014 = mem[_1000 + 32]
                    require mem[_1000 + 32] == mem[_1000 + 50 len 14]
                    require mem[_1000 + 64] == mem[_1000 + 92 len 4]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1008)
                    mem[mem[64] + 68] = Mask(112, 0, _1014)
                    require ext_code.size(address(_972))
                    staticcall address(_972).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _1008 << 144, Mask(112, 0, _1014)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1048 = mem[_1036]
                    require ext_code.size(address(_967))
                    staticcall address(_967).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1068 = mem[_1058]
                    require mem[_1058] == mem[_1058 + 12 len 20]
                    if idx >= mem[_767]:
                        revert with 0, 50
                    _1078 = mem[(32 * idx) + _767 + 32]
                    _1081 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1081 + 36] = 0
                    mem[_1081 + 68] = _1048
                    mem[_1081 + 100] = this.address
                    mem[_1081 + 132] = 128
                    mem[_1081 + 164] = mem[_1081]
                    s = 0
                    while s < mem[_1081]:
                        mem[s + _1081 + 196] = mem[s + _1081 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1081]) > mem[_1081]:
                        mem[_1081 + mem[_1081] + 196] = 0
                    require ext_code.size(address(_1078))
                    call address(_1078).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1048, address(this.address), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1048
                    t = _1068
                    continue 
                _999 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1007 = mem[_999]
                require mem[_999] == mem[_999 + 18 len 14]
                _1013 = mem[_999 + 32]
                require mem[_999 + 32] == mem[_999 + 50 len 14]
                require mem[_999 + 64] == mem[_999 + 92 len 4]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1013)
                mem[mem[64] + 68] = Mask(112, 0, _1007)
                require ext_code.size(address(_972))
                staticcall address(_972).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _1013 << 144, Mask(112, 0, _1007)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1047 = mem[_1035]
                require ext_code.size(address(_967))
                staticcall address(_967).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1057 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1067 = mem[_1057]
                require mem[_1057] == mem[_1057 + 12 len 20]
                if idx >= mem[_767]:
                    revert with 0, 50
                if _1047:
                    _1076 = mem[(32 * idx) + _767 + 32]
                    _1079 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1079 + 36] = _1047
                    mem[_1079 + 68] = 0
                    mem[_1079 + 100] = this.address
                    mem[_1079 + 132] = 128
                    mem[_1079 + 164] = mem[_1079]
                    s = 0
                    while s < mem[_1079]:
                        mem[s + _1079 + 196] = mem[s + _1079 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1079]) > mem[_1079]:
                        mem[_1079 + mem[_1079] + 196] = 0
                    require ext_code.size(address(_1076))
                    call address(_1076).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1047, 0, address(this.address), 128, mem[_1079], mem[_1079 + 196 len ceil32(mem[_1079])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1047
                    t = _1067
                    continue 
                _1077 = mem[(32 * idx) + _767 + 32]
                _1080 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1080 + 36] = _1047
                mem[_1080 + 68] = 0
                mem[_1080 + 100] = this.address
                mem[_1080 + 132] = 128
                mem[_1080 + 164] = mem[_1080]
                s = 0
                while s < mem[_1080]:
                    mem[s + _1080 + 196] = mem[s + _1080 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_1080]) > mem[_1080]:
                    mem[_1080 + mem[_1080] + 196] = 0
                require ext_code.size(address(_1077))
                call address(_1077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1047, 0, address(this.address), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = _1067
                continue 
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= mem[_767]:
                revert with 0, 50
            _973 = mem[(32 * idx + 1) + _767 + 32]
            if idx >= mem[_767]:
                revert with 0, 50
            _979 = mem[(32 * idx) + _767 + 32]
            if idx >= mem[_772]:
                revert with 0, 50
            _983 = mem[(32 * idx) + _772 + 32]
            require ext_code.size(mem[(32 * idx) + _767 + 44 len 20])
            staticcall mem[(32 * idx) + _767 + 44 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _987 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_987] == mem[_987 + 12 len 20]
            require ext_code.size(address(_979))
            staticcall address(_979).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(t) == mem[_987 + 12 len 20]:
                _1010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1018 = mem[_1010]
                require mem[_1010] == mem[_1010 + 18 len 14]
                _1026 = mem[_1010 + 32]
                require mem[_1010 + 32] == mem[_1010 + 50 len 14]
                require mem[_1010 + 64] == mem[_1010 + 92 len 4]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1018)
                mem[mem[64] + 68] = Mask(112, 0, _1026)
                require ext_code.size(address(_983))
                staticcall address(_983).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _1018 << 144, Mask(112, 0, _1026)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1056 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1062 = mem[_1056]
                require ext_code.size(address(_979))
                staticcall address(_979).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1070 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1072 = mem[_1070]
                require mem[_1070] == mem[_1070 + 12 len 20]
                if idx >= mem[_767]:
                    revert with 0, 50
                _1096 = mem[(32 * idx) + _767 + 32]
                _1099 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1099 + 36] = 0
                mem[_1099 + 68] = _1062
                mem[_1099 + 100] = address(_973)
                mem[_1099 + 132] = 128
                mem[_1099 + 164] = mem[_1099]
                s = 0
                while s < mem[_1099]:
                    mem[s + _1099 + 196] = mem[s + _1099 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_1099]) > mem[_1099]:
                    mem[_1099 + mem[_1099] + 196] = 0
                require ext_code.size(address(_1096))
                call address(_1096).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1062, address(_973), 128, mem[_1099], mem[_1099 + 196 len ceil32(mem[_1099])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1062
                t = _1072
                continue 
            _1009 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1017 = mem[_1009]
            require mem[_1009] == mem[_1009 + 18 len 14]
            _1025 = mem[_1009 + 32]
            require mem[_1009 + 32] == mem[_1009 + 50 len 14]
            require mem[_1009 + 64] == mem[_1009 + 92 len 4]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = Mask(112, 0, _1025)
            mem[mem[64] + 68] = Mask(112, 0, _1017)
            require ext_code.size(address(_983))
            staticcall address(_983).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args s, _1025 << 144, Mask(112, 0, _1017)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1055 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1061 = mem[_1055]
            require ext_code.size(address(_979))
            staticcall address(_979).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1071 = mem[_1069]
            require mem[_1069] == mem[_1069 + 12 len 20]
            if idx >= mem[_767]:
                revert with 0, 50
            if _1061:
                _1094 = mem[(32 * idx) + _767 + 32]
                _1097 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1097 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1097 + 36] = _1061
                mem[_1097 + 68] = 0
                mem[_1097 + 100] = address(_973)
                mem[_1097 + 132] = 128
                mem[_1097 + 164] = mem[_1097]
                s = 0
                while s < mem[_1097]:
                    mem[s + _1097 + 196] = mem[s + _1097 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_1097]) > mem[_1097]:
                    mem[_1097 + mem[_1097] + 196] = 0
                require ext_code.size(address(_1094))
                call address(_1094).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1061, 0, address(_973), 128, mem[_1097], mem[_1097 + 196 len ceil32(mem[_1097])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1061
                t = _1071
                continue 
            _1095 = mem[(32 * idx) + _767 + 32]
            _1098 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1098 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1098 + 36] = _1061
            mem[_1098 + 68] = 0
            mem[_1098 + 100] = address(_973)
            mem[_1098 + 132] = 128
            mem[_1098 + 164] = mem[_1098]
            s = 0
            while s < mem[_1098]:
                mem[s + _1098 + 196] = mem[s + _1098 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_1098]) > mem[_1098]:
                mem[_1098 + mem[_1098] + 196] = 0
            require ext_code.size(address(_1095))
            call address(_1095).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1061, 0, address(_973), 128, mem[_1098], mem[_1098 + 196 len ceil32(mem[_1098])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 0
            t = _1071
            continue 
        if 0 >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[mem[128] + 76 len 20])
        staticcall mem[mem[128] + 76 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x2aca3e7d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor1 = cd[4]
                stor2 = cd[36]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x6568a279(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                        require unknown_0x83ef7d50(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return this.address
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _305 = mem[_298]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _305
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _305
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_323] == bool(mem[_323])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x98c0fc34(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xde6d6d96(?????):
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[((32 * idx) + cd[36] + 36)]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_304] == bool(mem[_304])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require ('cd', 4).length >= 32
                require ('cd', 4)[0] <= test266151307()
                require cd[4] + ('cd', 4)[0] + 67 < cd[4] + ('cd', 4).length + 36
                if cd[(cd[4] + ('cd', 4)[0] + 36)] > test266151307():
                    revert with 0, 65
                if ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 129 < 128 or ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 129
                mem[128] = cd[(cd[4] + ('cd', 4)[0] + 36)]
                require ('cd', 4)[0] + (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 68 <= ('cd', 4).length + 36
                idx = 0
                s = cd[4] + ('cd', 4)[0] + 68
                t = 160
                while idx < cd[(cd[4] + ('cd', 4)[0] + 36)]:
                    require cd[s] <= test266151307()
                    require ('cd', 4).length + -('cd', 4)[0] + -cd[s] - 32 >= 192
                    _272 = mem[64]
                    if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 192
                    require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] <= test266151307()
                    require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 99 < cd[4] + ('cd', 4).length + 36
                    if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)] > test266151307():
                        revert with 0, 65
                    _317 = mem[64]
                    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 1
                    mem[_317] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]
                    require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 100 <= ('cd', 4).length + 36
                    u = 0
                    v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 100
                    w = _317 + 32
                    while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]:
                        require cd[v] == address(cd[v])
                        mem[w] = cd[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_272] = _317
                    require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] <= test266151307()
                    require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 99 < cd[4] + ('cd', 4).length + 36
                    if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)] > test266151307():
                        revert with 0, 65
                    _552 = mem[64]
                    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 1
                    mem[_552] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]
                    require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 100 <= ('cd', 4).length + 36
                    u = 0
                    v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 100
                    w = _552 + 32
                    while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]:
                        require cd[v] == address(cd[v])
                        mem[w] = cd[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_272 + 32] = _552
                    require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)] == address(cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)])
                    mem[_272 + 64] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)]
                    mem[_272 + 96] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 164)]
                    require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] <= test266151307()
                    require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 99 < cd[4] + ('cd', 4).length + 36
                    if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)] > test266151307():
                        revert with 0, 65
                    _812 = mem[64]
                    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 1
                    mem[_812] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]
                    require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]) + 100 <= ('cd', 4).length + 36
                    u = 0
                    v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 100
                    w = _812 + 32
                    while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 196)] + 68)]:
                        require cd[v] == address(cd[v])
                        mem[w] = cd[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_272 + 128] = _812
                    require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] <= test266151307()
                    require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 99 < cd[4] + ('cd', 4).length + 36
                    if cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)] > test266151307():
                        revert with 0, 65
                    _1019 = mem[64]
                    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 1
                    mem[_1019] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]
                    require ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]) + 100 <= ('cd', 4).length + 36
                    u = 0
                    v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 100
                    w = _1019 + 32
                    while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 228)] + 68)]:
                        require cd[v] == address(cd[v])
                        mem[w] = cd[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_272 + 160] = _1019
                    mem[t] = _272
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                idx = 0
                s = 0
                while idx < mem[128]:
                    if idx >= mem[128]:
                        revert with 0, 50
                    if mem[mem[mem[(32 * idx) + 160]]] <= s:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[128]:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[mem[mem[(32 * idx) + 160]]]
                    continue 
                idx = 0
                while idx < mem[128]:
                    if idx < mem[128]:
                        if idx < mem[128]:
                            if idx < mem[128]:
                                if var95003 >= mem[mem[mem[(32 * idx) + 160]]]:
                                    if idx >= mem[128]:
                                        revert with 0, 50
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx < mem[128]:
                                    _1320 = mem[mem[(32 * idx) + 160]]
                                    _1321 = mem[mem[mem[(32 * idx) + 160]]]
                                    s = var97001
                                    t = var97002
                                    u = var97003
                                    while s < _1321:
                                        _1322 = mem[(32 * s) + _1320 + 32]
                                        if idx >= mem[128]:
                                            revert with 0, 50
                                        if s >= mem[mem[mem[(32 * idx) + 160] + 32]]:
                                            revert with 0, 50
                                        _1327 = mem[(32 * s) + mem[mem[(32 * idx) + 160] + 32] + 32]
                                        require ext_code.size(mem[(32 * s) + _1320 + 44 len 20])
                                        staticcall mem[(32 * s) + _1320 + 44 len 20].token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1330 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1330] == mem[_1330 + 12 len 20]
                                        require ext_code.size(address(_1322))
                                        staticcall address(_1322).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if address(u) == mem[_1330 + 12 len 20]:
                                            _1337 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            _1339 = mem[_1337]
                                            require mem[_1337] == mem[_1337 + 18 len 14]
                                            _1341 = mem[_1337 + 32]
                                            require mem[_1337 + 32] == mem[_1337 + 50 len 14]
                                            require mem[_1337 + 64] == mem[_1337 + 92 len 4]
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = Mask(112, 0, _1339)
                                            mem[mem[64] + 68] = Mask(112, 0, _1341)
                                            require ext_code.size(address(_1327))
                                            staticcall address(_1327).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args t, _1339 << 144, Mask(112, 0, _1341)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1349 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1351 = mem[_1349]
                                            require ext_code.size(address(_1322))
                                            staticcall address(_1322).token1() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1357 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1357] == mem[_1357 + 12 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if idx >= mem[128]:
                                                revert with 0, 50
                                            if s + 1 < mem[mem[mem[(32 * idx) + 160]]]:
                                                if idx >= mem[128]:
                                                    revert with 0, 50
                                                s = s + 1
                                                t = _1351
                                                u = mem[_1357]
                                                continue 
                                        else:
                                            _1336 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            _1338 = mem[_1336]
                                            require mem[_1336] == mem[_1336 + 18 len 14]
                                            _1340 = mem[_1336 + 32]
                                            require mem[_1336 + 32] == mem[_1336 + 50 len 14]
                                            require mem[_1336 + 64] == mem[_1336 + 92 len 4]
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = Mask(112, 0, _1340)
                                            mem[mem[64] + 68] = Mask(112, 0, _1338)
                                            require ext_code.size(address(_1327))
                                            staticcall address(_1327).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args t, _1340 << 144, Mask(112, 0, _1338)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1348 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1350 = mem[_1348]
                                            require ext_code.size(address(_1322))
                                            staticcall address(_1322).token0() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1356 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1356] == mem[_1356 + 12 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if idx >= mem[128]:
                                                revert with 0, 50
                                            if _1350:
                                                if s + 1 < mem[mem[mem[(32 * idx) + 160]]]:
                                                    if idx >= mem[128]:
                                                        revert with 0, 50
                                                    s = s + 1
                                                    t = _1350
                                                    u = mem[_1356]
                                                    continue 
                                            else:
                                                if s + 1 < mem[mem[mem[(32 * idx) + 160]]]:
                                                    if idx >= mem[128]:
                                                        revert with 0, 50
                                                    s = s + 1
                                                    t = 0
                                                    u = mem[_1356]
                                                    continue 
                                        ('ge', ('add', 1, ('var', 1)), ('mem', ('range', ('mem', ('range', ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), 32)))
                                        if idx >= mem[128]:
                                            revert with 0, 50
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    revert with 0, 50
                emit 0xa6f0bbc8 
                if 0 >= mem[128]:
                    revert with 0, 50
                _766 = mem[mem[160] + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_766))
                staticcall address(_766).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 >= mem[128]:
                    revert with 0, 50
                if 0 >= mem[128]:
                    revert with 0, 50
                if mem[_773] < mem[mem[160] + 96]:
                    if 0 >= mem[128]:
                        revert with 0, 50
                    _805 = mem[mem[160] + 96]
                    mem[mem[64]] = mem[mem[160] + 76 len 20]
                    emit 0xf6deaa04: mem[mem[64]], _805
                else:
                    _796 = mem[mem[160] + 64]
                    if 0 >= mem[128]:
                        revert with 0, 50
                    _802 = mem[mem[160] + 96]
                    if 0 >= mem[128]:
                        revert with 0, 50
                    _809 = mem[mem[160]]
                    if 0 >= mem[128]:
                        revert with 0, 50
                    _814 = mem[mem[160] + 32]
                    if 0 >= mem[mem[mem[160]]]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[mem[mem[160]] + 44 len 20]
                    mem[mem[64] + 36] = _802
                    require ext_code.size(address(_796))
                    call address(_796).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _802
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_820] == bool(mem[_820])
                    _982 = mem[_809]
                    idx = 0
                    s = _802
                    t = _796
                    while idx < _982:
                        if mem[_809] < 1:
                            revert with 0, 17
                        if idx >= mem[_809] - 1:
                            if idx >= mem[_809]:
                                revert with 0, 50
                            _1009 = mem[(32 * idx) + _809 + 32]
                            if idx >= mem[_814]:
                                revert with 0, 50
                            _1014 = mem[(32 * idx) + _814 + 32]
                            require ext_code.size(mem[(32 * idx) + _809 + 44 len 20])
                            staticcall mem[(32 * idx) + _809 + 44 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1023 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1023] == mem[_1023 + 12 len 20]
                            require ext_code.size(address(_1009))
                            staticcall address(_1009).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if address(t) == mem[_1023 + 12 len 20]:
                                _1042 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1050 = mem[_1042]
                                require mem[_1042] == mem[_1042 + 18 len 14]
                                _1056 = mem[_1042 + 32]
                                require mem[_1042 + 32] == mem[_1042 + 50 len 14]
                                require mem[_1042 + 64] == mem[_1042 + 92 len 4]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _1050)
                                mem[mem[64] + 68] = Mask(112, 0, _1056)
                                require ext_code.size(address(_1014))
                                staticcall address(_1014).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args s, _1050 << 144, Mask(112, 0, _1056)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1078 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1090 = mem[_1078]
                                require ext_code.size(address(_1009))
                                staticcall address(_1009).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1110 = mem[_1100]
                                require mem[_1100] == mem[_1100 + 12 len 20]
                                if idx >= mem[_809]:
                                    revert with 0, 50
                                _1120 = mem[(32 * idx) + _809 + 32]
                                _1123 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1123 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1123 + 36] = 0
                                mem[_1123 + 68] = _1090
                                mem[_1123 + 100] = this.address
                                mem[_1123 + 132] = 128
                                mem[_1123 + 164] = mem[_1123]
                                s = 0
                                while s < mem[_1123]:
                                    mem[s + _1123 + 196] = mem[s + _1123 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1123]) > mem[_1123]:
                                    mem[_1123 + mem[_1123] + 196] = 0
                                require ext_code.size(address(_1120))
                                call address(_1120).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1090, address(this.address), 128, mem[_1123], mem[_1123 + 196 len ceil32(mem[_1123])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1090
                                t = _1110
                                continue 
                            _1041 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1049 = mem[_1041]
                            require mem[_1041] == mem[_1041 + 18 len 14]
                            _1055 = mem[_1041 + 32]
                            require mem[_1041 + 32] == mem[_1041 + 50 len 14]
                            require mem[_1041 + 64] == mem[_1041 + 92 len 4]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1055)
                            mem[mem[64] + 68] = Mask(112, 0, _1049)
                            require ext_code.size(address(_1014))
                            staticcall address(_1014).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args s, _1055 << 144, Mask(112, 0, _1049)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1089 = mem[_1077]
                            require ext_code.size(address(_1009))
                            staticcall address(_1009).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1099 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1109 = mem[_1099]
                            require mem[_1099] == mem[_1099 + 12 len 20]
                            if idx >= mem[_809]:
                                revert with 0, 50
                            if _1089:
                                _1118 = mem[(32 * idx) + _809 + 32]
                                _1121 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 36] = _1089
                                mem[_1121 + 68] = 0
                                mem[_1121 + 100] = this.address
                                mem[_1121 + 132] = 128
                                mem[_1121 + 164] = mem[_1121]
                                s = 0
                                while s < mem[_1121]:
                                    mem[s + _1121 + 196] = mem[s + _1121 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1121]) > mem[_1121]:
                                    mem[_1121 + mem[_1121] + 196] = 0
                                require ext_code.size(address(_1118))
                                call address(_1118).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1089, 0, address(this.address), 128, mem[_1121], mem[_1121 + 196 len ceil32(mem[_1121])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1089
                                t = _1109
                                continue 
                            _1119 = mem[(32 * idx) + _809 + 32]
                            _1122 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1122 + 36] = _1089
                            mem[_1122 + 68] = 0
                            mem[_1122 + 100] = this.address
                            mem[_1122 + 132] = 128
                            mem[_1122 + 164] = mem[_1122]
                            s = 0
                            while s < mem[_1122]:
                                mem[s + _1122 + 196] = mem[s + _1122 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1122]) > mem[_1122]:
                                mem[_1122 + mem[_1122] + 196] = 0
                            require ext_code.size(address(_1119))
                            call address(_1119).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1089, 0, address(this.address), 128, mem[_1122], mem[_1122 + 196 len ceil32(mem[_1122])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = _1109
                            continue 
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_809]:
                            revert with 0, 50
                        _1015 = mem[(32 * idx + 1) + _809 + 32]
                        if idx >= mem[_809]:
                            revert with 0, 50
                        _1021 = mem[(32 * idx) + _809 + 32]
                        if idx >= mem[_814]:
                            revert with 0, 50
                        _1025 = mem[(32 * idx) + _814 + 32]
                        require ext_code.size(mem[(32 * idx) + _809 + 44 len 20])
                        staticcall mem[(32 * idx) + _809 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1029 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1029] == mem[_1029 + 12 len 20]
                        require ext_code.size(address(_1021))
                        staticcall address(_1021).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(t) == mem[_1029 + 12 len 20]:
                            _1052 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1060 = mem[_1052]
                            require mem[_1052] == mem[_1052 + 18 len 14]
                            _1068 = mem[_1052 + 32]
                            require mem[_1052 + 32] == mem[_1052 + 50 len 14]
                            require mem[_1052 + 64] == mem[_1052 + 92 len 4]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1060)
                            mem[mem[64] + 68] = Mask(112, 0, _1068)
                            require ext_code.size(address(_1025))
                            staticcall address(_1025).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args s, _1060 << 144, Mask(112, 0, _1068)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1104 = mem[_1098]
                            require ext_code.size(address(_1021))
                            staticcall address(_1021).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1112 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1114 = mem[_1112]
                            require mem[_1112] == mem[_1112 + 12 len 20]
                            if idx >= mem[_809]:
                                revert with 0, 50
                            _1138 = mem[(32 * idx) + _809 + 32]
                            _1141 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1141 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1141 + 36] = 0
                            mem[_1141 + 68] = _1104
                            mem[_1141 + 100] = address(_1015)
                            mem[_1141 + 132] = 128
                            mem[_1141 + 164] = mem[_1141]
                            s = 0
                            while s < mem[_1141]:
                                mem[s + _1141 + 196] = mem[s + _1141 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1141]) > mem[_1141]:
                                mem[_1141 + mem[_1141] + 196] = 0
                            require ext_code.size(address(_1138))
                            call address(_1138).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1104, address(_1015), 128, mem[_1141], mem[_1141 + 196 len ceil32(mem[_1141])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1104
                            t = _1114
                            continue 
                        _1051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1059 = mem[_1051]
                        require mem[_1051] == mem[_1051 + 18 len 14]
                        _1067 = mem[_1051 + 32]
                        require mem[_1051 + 32] == mem[_1051 + 50 len 14]
                        require mem[_1051 + 64] == mem[_1051 + 92 len 4]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1067)
                        mem[mem[64] + 68] = Mask(112, 0, _1059)
                        require ext_code.size(address(_1025))
                        staticcall address(_1025).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args s, _1067 << 144, Mask(112, 0, _1059)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1097 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1103 = mem[_1097]
                        require ext_code.size(address(_1021))
                        staticcall address(_1021).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1113 = mem[_1111]
                        require mem[_1111] == mem[_1111 + 12 len 20]
                        if idx >= mem[_809]:
                            revert with 0, 50
                        if _1103:
                            _1136 = mem[(32 * idx) + _809 + 32]
                            _1139 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1139 + 36] = _1103
                            mem[_1139 + 68] = 0
                            mem[_1139 + 100] = address(_1015)
                            mem[_1139 + 132] = 128
                            mem[_1139 + 164] = mem[_1139]
                            s = 0
                            while s < mem[_1139]:
                                mem[s + _1139 + 196] = mem[s + _1139 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1139]) > mem[_1139]:
                                mem[_1139 + mem[_1139] + 196] = 0
                            require ext_code.size(address(_1136))
                            call address(_1136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1103, 0, address(_1015), 128, mem[_1139], mem[_1139 + 196 len ceil32(mem[_1139])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1103
                            t = _1113
                            continue 
                        _1137 = mem[(32 * idx) + _809 + 32]
                        _1140 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1140 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1140 + 36] = _1103
                        mem[_1140 + 68] = 0
                        mem[_1140 + 100] = address(_1015)
                        mem[_1140 + 132] = 128
                        mem[_1140 + 164] = mem[_1140]
                        s = 0
                        while s < mem[_1140]:
                            mem[s + _1140 + 196] = mem[s + _1140 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_1140]) > mem[_1140]:
                            mem[_1140 + mem[_1140] + 196] = 0
                        require ext_code.size(address(_1137))
                        call address(_1137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1103, 0, address(_1015), 128, mem[_1140], mem[_1140 + 196 len ceil32(mem[_1140])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = _1113
                        continue 
                    if 0 >= mem[128]:
                        revert with 0, 50
                    require ext_code.size(mem[mem[160] + 76 len 20])
                    staticcall mem[mem[160] + 76 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
}



}
