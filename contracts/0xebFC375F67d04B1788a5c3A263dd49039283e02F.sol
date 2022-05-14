contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f191e1dd(?) payable {
    mem[64] = 96
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
        require idx < ('cd', 36).length
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        idx = idx + 1
        continue 
}

function withdraw(address[] arg1) payable {
    mem[64] = 96
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
               args address(this.address)
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
        idx = idx + 1
        continue 
}

function sub_e63b7b9c(?) payable {
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
    require cd[(cd[4] + ('cd', 4)[0] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128 >= 96 and (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128
    mem[96] = cd[(cd[4] + ('cd', 4)[0] + 36)]
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 68
    t = 128
    while idx < cd[(cd[4] + ('cd', 4)[0] + 36)]:
        require ('cd', 4).length + -('cd', 4)[0] + -cd[s] - 32 >= 128
        _82 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 99 < cd[4] + ('cd', 4).length + 36
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)] <= test266151307()
        _100 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 32
        mem[_100] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]
        require ('cd', 4).length + 36 >= ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]) + 100
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 100
        w = _100 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 68)] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_82] = _100
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 99 < cd[4] + ('cd', 4).length + 36
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)] <= test266151307()
        _191 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 32
        mem[_191] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]
        require ('cd', 4).length + 36 >= ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]) + 100
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 100
        w = _191 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + cd[(cd[4] + ('cd', 4)[0] + cd[s] + 100)] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_82 + 32] = _191
        require cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)] == address(cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)])
        mem[_82 + 64] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 132)]
        mem[_82 + 96] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 164)]
        mem[t] = _82
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        require idx < mem[96]
        if mem[mem[mem[(32 * idx) + 128]]] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[96]
        idx = idx + 1
        s = mem[mem[mem[(32 * idx) + 128]]]
        continue 
    require s <= test266151307()
    _162 = mem[64]
    if not s:
        require s <= test266151307()
        _167 = mem[64] + (32 * s) + 32
        mem[mem[64] + (32 * s) + 32] = s
        mem[64] = mem[64] + (64 * s) + 64
        if not s:
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                if var90003 >= mem[mem[mem[(32 * idx) + 128]]]:
                    idx = idx + 1
                    continue 
                require var92001 < mem[mem[mem[(32 * idx) + 128]]]
                _1497 = mem[(32 * var92001) + mem[mem[(32 * idx) + 128]] + 32]
                require ext_code.size(mem[(32 * var92001) + mem[mem[(32 * idx) + 128]] + 44 len 20])
                staticcall mem[(32 * var92001) + mem[mem[(32 * idx) + 128]] + 44 len 20].token0() with:
                        gas gas_remaining wei
                mem[_167 + (32 * s) + 32] = ext_call.return_data[0]
                t = var92001
                u = var92002
                v = var92003
                v = var92005
                while ext_call.success:
                    _1509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1509] == mem[_1509 + 12 len 20]
                    require ext_code.size(address(_1497))
                    staticcall address(_1497).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(v) != mem[_1509 + 12 len 20]:
                        _1533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1541 = mem[_1533]
                        require mem[_1533] == mem[_1533 + 18 len 14]
                        _1549 = mem[_1533 + 32]
                        require mem[_1533 + 32] == mem[_1533 + 50 len 14]
                        require mem[_1533 + 64] == mem[_1533 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1597 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1549)
                        mem[mem[64] + 68] = Mask(112, 0, _1541)
                        require ext_code.size(address(_1597))
                        staticcall address(_1597).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1549 << 144, Mask(112, 0, _1541)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1629 = mem[_1621]
                        require ext_code.size(address(_1497))
                        staticcall address(_1497).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1653 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1661 = mem[_1653]
                        require mem[_1653] == mem[_1653 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = _1629
                        require t < mem[_167]
                        mem[(32 * t) + _167 + 32] = 0
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1497 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1497))
                            staticcall address(_1497).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _167 + (32 * s) + -mem[64] + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1629
                            v = 0
                            v = _1661
                            continue 
                    else:
                        _1534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1542 = mem[_1534]
                        require mem[_1534] == mem[_1534 + 18 len 14]
                        _1550 = mem[_1534 + 32]
                        require mem[_1534 + 32] == mem[_1534 + 50 len 14]
                        require mem[_1534 + 64] == mem[_1534 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1599 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1542)
                        mem[mem[64] + 68] = Mask(112, 0, _1550)
                        require ext_code.size(address(_1599))
                        staticcall address(_1599).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1542 << 144, Mask(112, 0, _1550)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1622 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1630 = mem[_1622]
                        require ext_code.size(address(_1497))
                        staticcall address(_1497).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1654 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1662 = mem[_1654]
                        require mem[_1654] == mem[_1654 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = 0
                        require t < mem[_167]
                        mem[(32 * t) + _167 + 32] = _1630
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1497 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1497))
                            staticcall address(_1497).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _167 + (32 * s) + -mem[64] + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1630
                            v = _1630
                            v = _1662
                            continue 
                    ('ge', ('add', 1, ('var', 2)), ('mem', ('range', ('mem', ('range', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), 32)))
                    require idx < mem[96]
                    require t < mem[mem[mem[(32 * idx + 1) + 128]]]
                    _1497 = mem[(32 * t) + mem[mem[(32 * idx + 1) + 128]] + 32]
                    mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1497))
                    staticcall address(_1497).token0() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _167 + (32 * s) + -mem[64] + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_167 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                if var91003 >= mem[mem[mem[(32 * idx) + 128]]]:
                    idx = idx + 1
                    continue 
                require var93001 < mem[mem[mem[(32 * idx) + 128]]]
                _1500 = mem[(32 * var93001) + mem[mem[(32 * idx) + 128]] + 32]
                require ext_code.size(mem[(32 * var93001) + mem[mem[(32 * idx) + 128]] + 44 len 20])
                staticcall mem[(32 * var93001) + mem[mem[(32 * idx) + 128]] + 44 len 20].token0() with:
                        gas gas_remaining wei
                mem[_167 + (32 * s) + 32] = ext_call.return_data[0]
                t = var93001
                u = var93002
                v = var93003
                v = var93005
                while ext_call.success:
                    _1510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1510] == mem[_1510 + 12 len 20]
                    require ext_code.size(address(_1500))
                    staticcall address(_1500).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(v) != mem[_1510 + 12 len 20]:
                        _1535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1543 = mem[_1535]
                        require mem[_1535] == mem[_1535 + 18 len 14]
                        _1551 = mem[_1535 + 32]
                        require mem[_1535 + 32] == mem[_1535 + 50 len 14]
                        require mem[_1535 + 64] == mem[_1535 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1601 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1551)
                        mem[mem[64] + 68] = Mask(112, 0, _1543)
                        require ext_code.size(address(_1601))
                        staticcall address(_1601).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1551 << 144, Mask(112, 0, _1543)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1631 = mem[_1623]
                        require ext_code.size(address(_1500))
                        staticcall address(_1500).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1663 = mem[_1655]
                        require mem[_1655] == mem[_1655 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = _1631
                        require t < mem[_167]
                        mem[(32 * t) + _167 + 32] = 0
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1500 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1500))
                            staticcall address(_1500).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _167 + (32 * s) + -mem[64] + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1631
                            v = 0
                            v = _1663
                            continue 
                    else:
                        _1536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1544 = mem[_1536]
                        require mem[_1536] == mem[_1536 + 18 len 14]
                        _1552 = mem[_1536 + 32]
                        require mem[_1536 + 32] == mem[_1536 + 50 len 14]
                        require mem[_1536 + 64] == mem[_1536 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1603 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1544)
                        mem[mem[64] + 68] = Mask(112, 0, _1552)
                        require ext_code.size(address(_1603))
                        staticcall address(_1603).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1544 << 144, Mask(112, 0, _1552)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1632 = mem[_1624]
                        require ext_code.size(address(_1500))
                        staticcall address(_1500).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1664 = mem[_1656]
                        require mem[_1656] == mem[_1656 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = 0
                        require t < mem[_167]
                        mem[(32 * t) + _167 + 32] = _1632
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1500 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1500))
                            staticcall address(_1500).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _167 + (32 * s) + -mem[64] + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1632
                            v = _1632
                            v = _1664
                            continue 
                    ('ge', ('add', 1, ('var', 2)), ('mem', ('range', ('mem', ('range', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), 32)))
                    require idx < mem[96]
                    require t < mem[mem[mem[(32 * idx + 1) + 128]]]
                    _1500 = mem[(32 * t) + mem[mem[(32 * idx + 1) + 128]] + 32]
                    mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1500))
                    staticcall address(_1500).token0() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _167 + (32 * s) + -mem[64] + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[mem[64] + 32 len 32 * s] = call.data[calldata.size len 32 * s]
        require s <= test266151307()
        mem[mem[64] + (32 * s) + 32] = s
        mem[64] = mem[64] + (64 * s) + 64
        if not s:
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                if var91003 >= mem[mem[mem[(32 * idx) + 128]]]:
                    idx = idx + 1
                    continue 
                require var93001 < mem[mem[mem[(32 * idx) + 128]]]
                _1503 = mem[(32 * var93001) + mem[mem[(32 * idx) + 128]] + 32]
                mem[_162 + (64 * s) + 64] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1503))
                staticcall address(_1503).token0() with:
                        gas gas_remaining wei
                       args mem[_162 + (64 * s) + 68 len 127 * s]
                mem[_162 + (64 * s) + 64] = ext_call.return_data[0]
                t = var93001
                u = var93002
                v = var93003
                v = var93005
                while ext_call.success:
                    _1511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1511] == mem[_1511 + 12 len 20]
                    require ext_code.size(address(_1503))
                    staticcall address(_1503).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(v) != mem[_1511 + 12 len 20]:
                        _1537 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1545 = mem[_1537]
                        require mem[_1537] == mem[_1537 + 18 len 14]
                        _1553 = mem[_1537 + 32]
                        require mem[_1537 + 32] == mem[_1537 + 50 len 14]
                        require mem[_1537 + 64] == mem[_1537 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1605 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1553)
                        mem[mem[64] + 68] = Mask(112, 0, _1545)
                        require ext_code.size(address(_1605))
                        staticcall address(_1605).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1553 << 144, Mask(112, 0, _1545)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1633 = mem[_1625]
                        require ext_code.size(address(_1503))
                        staticcall address(_1503).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1665 = mem[_1657]
                        require mem[_1657] == mem[_1657 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = _1633
                        require t < mem[_162 + (32 * s) + 32]
                        mem[(32 * t) + _162 + (32 * s) + 64] = 0
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1503 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1503))
                            staticcall address(_1503).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _162 + (64 * s) + -mem[64] + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1633
                            v = 0
                            v = _1665
                            continue 
                    else:
                        _1538 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1546 = mem[_1538]
                        require mem[_1538] == mem[_1538 + 18 len 14]
                        _1554 = mem[_1538 + 32]
                        require mem[_1538 + 32] == mem[_1538 + 50 len 14]
                        require mem[_1538 + 64] == mem[_1538 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1607 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1546)
                        mem[mem[64] + 68] = Mask(112, 0, _1554)
                        require ext_code.size(address(_1607))
                        staticcall address(_1607).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1546 << 144, Mask(112, 0, _1554)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1626 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1634 = mem[_1626]
                        require ext_code.size(address(_1503))
                        staticcall address(_1503).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1658 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1666 = mem[_1658]
                        require mem[_1658] == mem[_1658 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = 0
                        require t < mem[_162 + (32 * s) + 32]
                        mem[(32 * t) + _162 + (32 * s) + 64] = _1634
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1503 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1503))
                            staticcall address(_1503).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _162 + (64 * s) + -mem[64] + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1634
                            v = _1634
                            v = _1666
                            continue 
                    ('ge', ('add', 1, ('var', 2)), ('mem', ('range', ('mem', ('range', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), 32)))
                    require idx < mem[96]
                    require t < mem[mem[mem[(32 * idx + 1) + 128]]]
                    _1503 = mem[(32 * t) + mem[mem[(32 * idx + 1) + 128]] + 32]
                    mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1503))
                    staticcall address(_1503).token0() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _162 + (64 * s) + -mem[64] + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_162 + (32 * s) + 64 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                require idx < mem[96]
                if var92003 >= mem[mem[mem[(32 * idx) + 128]]]:
                    idx = idx + 1
                    continue 
                require var94001 < mem[mem[mem[(32 * idx) + 128]]]
                _1506 = mem[(32 * var94001) + mem[mem[(32 * idx) + 128]] + 32]
                mem[_162 + (64 * s) + 64] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1506))
                staticcall address(_1506).token0() with:
                        gas gas_remaining wei
                       args mem[_162 + (64 * s) + 68 len 127 * s]
                mem[_162 + (64 * s) + 64] = ext_call.return_data[0]
                t = var94001
                u = var94002
                v = var94003
                v = var94005
                while ext_call.success:
                    _1512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1512] == mem[_1512 + 12 len 20]
                    require ext_code.size(address(_1506))
                    staticcall address(_1506).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(v) != mem[_1512 + 12 len 20]:
                        _1539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1547 = mem[_1539]
                        require mem[_1539] == mem[_1539 + 18 len 14]
                        _1555 = mem[_1539 + 32]
                        require mem[_1539 + 32] == mem[_1539 + 50 len 14]
                        require mem[_1539 + 64] == mem[_1539 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1609 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1555)
                        mem[mem[64] + 68] = Mask(112, 0, _1547)
                        require ext_code.size(address(_1609))
                        staticcall address(_1609).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1555 << 144, Mask(112, 0, _1547)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1635 = mem[_1627]
                        require ext_code.size(address(_1506))
                        staticcall address(_1506).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1667 = mem[_1659]
                        require mem[_1659] == mem[_1659 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = _1635
                        require t < mem[_162 + (32 * s) + 32]
                        mem[(32 * t) + _162 + (32 * s) + 64] = 0
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1506 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1506))
                            staticcall address(_1506).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _162 + (64 * s) + -mem[64] + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1635
                            v = 0
                            v = _1667
                            continue 
                    else:
                        _1540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1548 = mem[_1540]
                        require mem[_1540] == mem[_1540 + 18 len 14]
                        _1556 = mem[_1540 + 32]
                        require mem[_1540 + 32] == mem[_1540 + 50 len 14]
                        require mem[_1540 + 64] == mem[_1540 + 92 len 4]
                        require idx < mem[96]
                        require t < mem[mem[mem[(32 * idx) + 128] + 32]]
                        _1611 = mem[(32 * t) + mem[mem[(32 * idx) + 128] + 32] + 32]
                        mem[mem[64] + 4] = u
                        mem[mem[64] + 36] = Mask(112, 0, _1548)
                        mem[mem[64] + 68] = Mask(112, 0, _1556)
                        require ext_code.size(address(_1611))
                        staticcall address(_1611).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args u, _1548 << 144, Mask(112, 0, _1556)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1636 = mem[_1628]
                        require ext_code.size(address(_1506))
                        staticcall address(_1506).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1668 = mem[_1660]
                        require mem[_1660] == mem[_1660 + 12 len 20]
                        require t < mem[_162]
                        mem[(32 * t) + _162 + 32] = 0
                        require t < mem[_162 + (32 * s) + 32]
                        mem[(32 * t) + _162 + (32 * s) + 64] = _1636
                        require idx < mem[96]
                        if t + 1 < mem[mem[mem[(32 * idx) + 128]]]:
                            require idx < mem[96]
                            require t + 1 < mem[mem[mem[(32 * idx) + 128]]]
                            _1506 = mem[(32 * t + 1) + mem[mem[(32 * idx) + 128]] + 32]
                            mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1506))
                            staticcall address(_1506).token0() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _162 + (64 * s) + -mem[64] + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            t = t + 1
                            u = _1636
                            v = _1636
                            v = _1668
                            continue 
                    ('ge', ('add', 1, ('var', 2)), ('mem', ('range', ('mem', ('range', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), 32)))
                    require idx < mem[96]
                    require t < mem[mem[mem[(32 * idx + 1) + 128]]]
                    _1506 = mem[(32 * t) + mem[mem[(32 * idx + 1) + 128]] + 32]
                    mem[mem[64]] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1506))
                    staticcall address(_1506).token0() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _162 + (64 * s) + -mem[64] + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
}



}
