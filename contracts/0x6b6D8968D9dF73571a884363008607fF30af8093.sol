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
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cce62369(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 100).length, data=mem[196 len 32 * ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _27 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _28 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _28
    require _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = _27 + 128
    t = ceil32(return_data.size) + 128
    while idx < _28:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _28:
        revert with 'NH{q', 50
    _50 = mem[ceil32(return_data.size) + 160]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _50
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 100
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _50, Array(len=('cd', 132).length, data=mem[mem[64] + 100 len 32 * ('cd', 132).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _68 = mem[_67]
    require mem[_67] <= test266151307()
    require _67 + mem[_67] + 31 < _67 + return_data.size
    _69 = mem[_67 + mem[_67]]
    if mem[_67 + mem[_67]] > test266151307():
        revert with 'NH{q', 65
    if _67 + ceil32(return_data.size) + floor32(mem[_67 + mem[_67]]) + 1 > test266151307() or floor32(mem[_67 + mem[_67]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _67 + ceil32(return_data.size) + floor32(mem[_67 + mem[_67]]) + 1
    mem[_67 + ceil32(return_data.size)] = _69
    require _68 + (32 * _69) + 32 <= return_data.size
    idx = 0
    s = _67 + _68 + 32
    t = _67 + ceil32(return_data.size) + 32
    while idx < _69:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _69:
        revert with 'NH{q', 50
    if cd[4] > mem[_67 + ceil32(return_data.size) + 64]:
        return 0
    if 1 >= _69:
        revert with 'NH{q', 50
    if mem[_67 + ceil32(return_data.size) + 64] < cd[4]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_67 + ceil32(return_data.size) + 64] - cd[4]
    return memory
      from mem[64]
       len 32
}

function sub_afd17737(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = 0
    idx = 100 * 10^18
    while 10^16 < idx:
        if 10^16 > -idx - 1:
            revert with 'NH{q', 17
        else:
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx + 10^16 / 2
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            s = 0
            t = cd[68] + 36
            u = mem[64] + 100
            while s < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, idx + 10^16), Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _605 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _606 = mem[_605]
                require mem[_605] <= test266151307()
                require _605 + mem[_605] + 31 < _605 + return_data.size
                _607 = mem[_605 + mem[_605]]
                if mem[_605 + mem[_605]] > test266151307():
                    revert with 'NH{q', 65
                else:
                    if _605 + ceil32(return_data.size) + floor32(mem[_605 + mem[_605]]) + 1 > test266151307() or floor32(mem[_605 + mem[_605]]) + 1 < 0:
                        revert with 'NH{q', 65
                    else:
                        mem[64] = _605 + ceil32(return_data.size) + floor32(mem[_605 + mem[_605]]) + 1
                        mem[_605 + ceil32(return_data.size)] = _607
                        require _606 + (32 * _607) + 32 <= return_data.size
                        s = 0
                        t = _605 + _606 + 32
                        u = _605 + ceil32(return_data.size) + 32
                        while s < _607:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if 1 >= _607:
                            revert with 'NH{q', 50
                        else:
                            _677 = mem[_605 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _677
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = ('cd', 100).length
                            s = 0
                            t = cd[100] + 36
                            u = mem[64] + 100
                            while s < ('cd', 100).length:
                                require cd[t] == address(cd[t])
                                mem[u] = address(cd[t])
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _677, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _766 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _767 = mem[_766]
                                require mem[_766] <= test266151307()
                                require _766 + mem[_766] + 31 < _766 + return_data.size
                                _768 = mem[_766 + mem[_766]]
                                if mem[_766 + mem[_766]] > test266151307():
                                    revert with 'NH{q', 65
                                else:
                                    if _766 + ceil32(return_data.size) + floor32(mem[_766 + mem[_766]]) + 1 > test266151307() or floor32(mem[_766 + mem[_766]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    else:
                                        mem[64] = _766 + ceil32(return_data.size) + floor32(mem[_766 + mem[_766]]) + 1
                                        mem[_766 + ceil32(return_data.size)] = _768
                                        require _767 + (32 * _768) + 32 <= return_data.size
                                        s = 0
                                        t = _766 + _767 + 32
                                        u = _766 + ceil32(return_data.size) + 32
                                        while s < _768:
                                            require mem[t] == mem[t]
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        if 1 >= _768:
                                            revert with 'NH{q', 50
                                        else:
                                            if idx + 10^16 / 2 <= mem[_766 + ceil32(return_data.size) + 64]:
                                                if 1 >= _768:
                                                    revert with 'NH{q', 50
                                                else:
                                                    _867 = mem[_766 + ceil32(return_data.size) + 64]
                                                    if mem[_766 + ceil32(return_data.size) + 64] < idx + 10^16 / 2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if idx + 10^16 / 2 < 10^16:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = (idx + 10^16 / 2) - 10^16
                                                            mem[mem[64] + 36] = 64
                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                            s = 0
                                                            t = cd[68] + 36
                                                            u = mem[64] + 100
                                                            while s < ('cd', 68).length:
                                                                require cd[t] == address(cd[t])
                                                                mem[u] = address(cd[t])
                                                                s = s + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                    gas gas_remaining wei
                                                                   args (idx + 10^16 / 2) - 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _981 = mem[64]
                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _983 = mem[_981]
                                                                require mem[_981] <= test266151307()
                                                                require _981 + mem[_981] + 31 < _981 + return_data.size
                                                                _985 = mem[_981 + mem[_981]]
                                                                if mem[_981 + mem[_981]] > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    if _981 + ceil32(return_data.size) + floor32(mem[_981 + mem[_981]]) + 1 > test266151307() or floor32(mem[_981 + mem[_981]]) + 1 < 0:
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        mem[64] = _981 + ceil32(return_data.size) + floor32(mem[_981 + mem[_981]]) + 1
                                                                        mem[_981 + ceil32(return_data.size)] = _985
                                                                        require _983 + (32 * _985) + 32 <= return_data.size
                                                                        s = 0
                                                                        t = _981 + _983 + 32
                                                                        u = _981 + ceil32(return_data.size) + 32
                                                                        while s < _985:
                                                                            require mem[t] == mem[t]
                                                                            mem[u] = mem[t]
                                                                            s = s + 1
                                                                            t = t + 32
                                                                            u = u + 32
                                                                            continue 
                                                                        if 1 >= _985:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            _1111 = mem[_981 + ceil32(return_data.size) + 64]
                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _1111
                                                                            mem[mem[64] + 36] = 64
                                                                            mem[mem[64] + 68] = ('cd', 100).length
                                                                            s = 0
                                                                            t = cd[100] + 36
                                                                            u = mem[64] + 100
                                                                            while s < ('cd', 100).length:
                                                                                require cd[t] == address(cd[t])
                                                                                mem[u] = address(cd[t])
                                                                                s = s + 1
                                                                                t = t + 32
                                                                                u = u + 32
                                                                                continue 
                                                                            require ext_code.size(address(cd[36]))
                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1111, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1227 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _1229 = mem[_1227]
                                                                                require mem[_1227] <= test266151307()
                                                                                require _1227 + mem[_1227] + 31 < _1227 + return_data.size
                                                                                _1231 = mem[_1227 + mem[_1227]]
                                                                                if mem[_1227 + mem[_1227]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _1227 + ceil32(return_data.size) + floor32(mem[_1227 + mem[_1227]]) + 1 > test266151307() or floor32(mem[_1227 + mem[_1227]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _1227 + ceil32(return_data.size) + floor32(mem[_1227 + mem[_1227]]) + 1
                                                                                        mem[_1227 + ceil32(return_data.size)] = _1231
                                                                                        require _1229 + (32 * _1231) + 32 <= return_data.size
                                                                                        s = 0
                                                                                        t = _1227 + _1229 + 32
                                                                                        u = _1227 + ceil32(return_data.size) + 32
                                                                                        while s < _1231:
                                                                                            require mem[t] == mem[t]
                                                                                            mem[u] = mem[t]
                                                                                            s = s + 1
                                                                                            t = t + 32
                                                                                            u = u + 32
                                                                                            continue 
                                                                                        if 1 >= _1231:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            if (idx + 10^16 / 2) - 10^16 <= mem[_1227 + ceil32(return_data.size) + 64]:
                                                                                                if 1 >= _1231:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    _1343 = mem[_1227 + ceil32(return_data.size) + 64]
                                                                                                    if mem[_1227 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                                            mem[mem[64] + 36] = 64
                                                                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                                                                            s = 0
                                                                                                            t = cd[68] + 36
                                                                                                            u = mem[64] + 100
                                                                                                            while s < ('cd', 68).length:
                                                                                                                require cd[t] == address(cd[t])
                                                                                                                mem[u] = address(cd[t])
                                                                                                                s = s + 1
                                                                                                                t = t + 32
                                                                                                                u = u + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(cd[4]))
                                                                                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1439 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1443 = mem[_1439]
                                                                                                                require mem[_1439] <= test266151307()
                                                                                                                require _1439 + mem[_1439] + 31 < _1439 + return_data.size
                                                                                                                _1447 = mem[_1439 + mem[_1439]]
                                                                                                                if mem[_1439 + mem[_1439]] > test266151307():
                                                                                                                    revert with 'NH{q', 65
                                                                                                                else:
                                                                                                                    if _1439 + ceil32(return_data.size) + floor32(mem[_1439 + mem[_1439]]) + 1 > test266151307() or floor32(mem[_1439 + mem[_1439]]) + 1 < 0:
                                                                                                                        revert with 'NH{q', 65
                                                                                                                    else:
                                                                                                                        mem[64] = _1439 + ceil32(return_data.size) + floor32(mem[_1439 + mem[_1439]]) + 1
                                                                                                                        mem[_1439 + ceil32(return_data.size)] = _1447
                                                                                                                        require _1443 + (32 * _1447) + 32 <= return_data.size
                                                                                                                        s = 0
                                                                                                                        t = _1439 + _1443 + 32
                                                                                                                        u = _1439 + ceil32(return_data.size) + 32
                                                                                                                        while s < _1447:
                                                                                                                            require mem[t] == mem[t]
                                                                                                                            mem[u] = mem[t]
                                                                                                                            s = s + 1
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            continue 
                                                                                                                        if 1 >= _1447:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            _1529 = mem[_1439 + ceil32(return_data.size) + 64]
                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1529
                                                                                                                            mem[mem[64] + 36] = 64
                                                                                                                            mem[mem[64] + 68] = ('cd', 100).length
                                                                                                                            s = 0
                                                                                                                            t = cd[100] + 36
                                                                                                                            u = mem[64] + 100
                                                                                                                            while s < ('cd', 100).length:
                                                                                                                                require cd[t] == address(cd[t])
                                                                                                                                mem[u] = address(cd[t])
                                                                                                                                s = s + 1
                                                                                                                                t = t + 32
                                                                                                                                u = u + 32
                                                                                                                                continue 
                                                                                                                            require ext_code.size(address(cd[36]))
                                                                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args _1529, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1591 = mem[64]
                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1595 = mem[_1591]
                                                                                                                                require mem[_1591] <= test266151307()
                                                                                                                                require _1591 + mem[_1591] + 31 < _1591 + return_data.size
                                                                                                                                _1599 = mem[_1591 + mem[_1591]]
                                                                                                                                if mem[_1591 + mem[_1591]] > test266151307():
                                                                                                                                    revert with 'NH{q', 65
                                                                                                                                else:
                                                                                                                                    if _1591 + ceil32(return_data.size) + floor32(mem[_1591 + mem[_1591]]) + 1 > test266151307() or floor32(mem[_1591 + mem[_1591]]) + 1 < 0:
                                                                                                                                        revert with 'NH{q', 65
                                                                                                                                    else:
                                                                                                                                        mem[64] = _1591 + ceil32(return_data.size) + floor32(mem[_1591 + mem[_1591]]) + 1
                                                                                                                                        mem[_1591 + ceil32(return_data.size)] = _1599
                                                                                                                                        require _1595 + (32 * _1599) + 32 <= return_data.size
                                                                                                                                        s = 0
                                                                                                                                        t = _1591 + _1595 + 32
                                                                                                                                        u = _1591 + ceil32(return_data.size) + 32
                                                                                                                                        while s < _1599:
                                                                                                                                            require mem[t] == mem[t]
                                                                                                                                            mem[u] = mem[t]
                                                                                                                                            s = s + 1
                                                                                                                                            t = t + 32
                                                                                                                                            u = u + 32
                                                                                                                                            continue 
                                                                                                                                        if 1 >= _1599:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            if (idx + 10^16 / 2) + 10^16 <= mem[_1591 + ceil32(return_data.size) + 64]:
                                                                                                                                                if 1 >= _1599:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    if mem[_1591 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        if _1343 + 10^16 >= _867:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _867 <= mem[_1591 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                if _1343 + 10^16 >= _867:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if _867 >= mem[_1591 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                                        continue 
                                                                                                                                                                    else:
                                                                                                                                                                        if mem[_1591 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                                            continue 
                                                                                                                                                                        else:
                                                                                                                                                                            if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                                            else:
                                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                                idx = idx
                                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                return (idx + 10^16 / 2)
                                                                                                                                            else:
                                                                                                                                                if _1343 + 10^16 >= _867:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _867 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                        if _1343 + 10^16 >= _867:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _867 - (idx + 10^16 / 2) >= 0:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                    else:
                                                                                                                                                        return (idx + 10^16 / 2)
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                                    mem[mem[64] + 36] = 64
                                                                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                                                                    s = 0
                                                                                                    t = cd[68] + 36
                                                                                                    u = mem[64] + 100
                                                                                                    while s < ('cd', 68).length:
                                                                                                        require cd[t] == address(cd[t])
                                                                                                        mem[u] = address(cd[t])
                                                                                                        s = s + 1
                                                                                                        t = t + 32
                                                                                                        u = u + 32
                                                                                                        continue 
                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1440 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1444 = mem[_1440]
                                                                                                        require mem[_1440] <= test266151307()
                                                                                                        require _1440 + mem[_1440] + 31 < _1440 + return_data.size
                                                                                                        _1448 = mem[_1440 + mem[_1440]]
                                                                                                        if mem[_1440 + mem[_1440]] > test266151307():
                                                                                                            revert with 'NH{q', 65
                                                                                                        else:
                                                                                                            if _1440 + ceil32(return_data.size) + floor32(mem[_1440 + mem[_1440]]) + 1 > test266151307() or floor32(mem[_1440 + mem[_1440]]) + 1 < 0:
                                                                                                                revert with 'NH{q', 65
                                                                                                            else:
                                                                                                                mem[64] = _1440 + ceil32(return_data.size) + floor32(mem[_1440 + mem[_1440]]) + 1
                                                                                                                mem[_1440 + ceil32(return_data.size)] = _1448
                                                                                                                require _1444 + (32 * _1448) + 32 <= return_data.size
                                                                                                                s = 0
                                                                                                                t = _1440 + _1444 + 32
                                                                                                                u = _1440 + ceil32(return_data.size) + 32
                                                                                                                while s < _1448:
                                                                                                                    require mem[t] == mem[t]
                                                                                                                    mem[u] = mem[t]
                                                                                                                    s = s + 1
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    continue 
                                                                                                                if 1 >= _1448:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    _1531 = mem[_1440 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1531
                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                    mem[mem[64] + 68] = ('cd', 100).length
                                                                                                                    s = 0
                                                                                                                    t = cd[100] + 36
                                                                                                                    u = mem[64] + 100
                                                                                                                    while s < ('cd', 100).length:
                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                        mem[u] = address(cd[t])
                                                                                                                        s = s + 1
                                                                                                                        t = t + 32
                                                                                                                        u = u + 32
                                                                                                                        continue 
                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args _1531, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1592 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1596 = mem[_1592]
                                                                                                                        require mem[_1592] <= test266151307()
                                                                                                                        require _1592 + mem[_1592] + 31 < _1592 + return_data.size
                                                                                                                        _1600 = mem[_1592 + mem[_1592]]
                                                                                                                        if mem[_1592 + mem[_1592]] > test266151307():
                                                                                                                            revert with 'NH{q', 65
                                                                                                                        else:
                                                                                                                            if _1592 + ceil32(return_data.size) + floor32(mem[_1592 + mem[_1592]]) + 1 > test266151307() or floor32(mem[_1592 + mem[_1592]]) + 1 < 0:
                                                                                                                                revert with 'NH{q', 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1592 + ceil32(return_data.size) + floor32(mem[_1592 + mem[_1592]]) + 1
                                                                                                                                mem[_1592 + ceil32(return_data.size)] = _1600
                                                                                                                                require _1596 + (32 * _1600) + 32 <= return_data.size
                                                                                                                                s = 0
                                                                                                                                t = _1592 + _1596 + 32
                                                                                                                                u = _1592 + ceil32(return_data.size) + 32
                                                                                                                                while s < _1600:
                                                                                                                                    require mem[t] == mem[t]
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    s = s + 1
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    continue 
                                                                                                                                if 1 >= _1600:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 <= mem[_1592 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _1600:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            if mem[_1592 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= _867 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _867 <= mem[_1592 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                        if 0 >= _867 - (idx + 10^16 / 2):
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _867 >= mem[_1592 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_1592 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                                    else:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx
                                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        return (idx + 10^16 / 2)
                                                                                                                                    else:
                                                                                                                                        if 0 >= _867 - (idx + 10^16 / 2):
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _867 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                if 0 >= _867 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _867 - (idx + 10^16 / 2) >= 0:
                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                return (idx + 10^16 / 2)
                                            else:
                                                if idx + 10^16 / 2 < 10^16:
                                                    revert with 'NH{q', 17
                                                else:
                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = (idx + 10^16 / 2) - 10^16
                                                    mem[mem[64] + 36] = 64
                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                    s = 0
                                                    t = cd[68] + 36
                                                    u = mem[64] + 100
                                                    while s < ('cd', 68).length:
                                                        require cd[t] == address(cd[t])
                                                        mem[u] = address(cd[t])
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args (idx + 10^16 / 2) - 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _982 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _984 = mem[_982]
                                                        require mem[_982] <= test266151307()
                                                        require _982 + mem[_982] + 31 < _982 + return_data.size
                                                        _986 = mem[_982 + mem[_982]]
                                                        if mem[_982 + mem[_982]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _982 + ceil32(return_data.size) + floor32(mem[_982 + mem[_982]]) + 1 > test266151307() or floor32(mem[_982 + mem[_982]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _982 + ceil32(return_data.size) + floor32(mem[_982 + mem[_982]]) + 1
                                                                mem[_982 + ceil32(return_data.size)] = _986
                                                                require _984 + (32 * _986) + 32 <= return_data.size
                                                                s = 0
                                                                t = _982 + _984 + 32
                                                                u = _982 + ceil32(return_data.size) + 32
                                                                while s < _986:
                                                                    require mem[t] == mem[t]
                                                                    mem[u] = mem[t]
                                                                    s = s + 1
                                                                    t = t + 32
                                                                    u = u + 32
                                                                    continue 
                                                                if 1 >= _986:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1113 = mem[_982 + ceil32(return_data.size) + 64]
                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _1113
                                                                    mem[mem[64] + 36] = 64
                                                                    mem[mem[64] + 68] = ('cd', 100).length
                                                                    s = 0
                                                                    t = cd[100] + 36
                                                                    u = mem[64] + 100
                                                                    while s < ('cd', 100).length:
                                                                        require cd[t] == address(cd[t])
                                                                        mem[u] = address(cd[t])
                                                                        s = s + 1
                                                                        t = t + 32
                                                                        u = u + 32
                                                                        continue 
                                                                    require ext_code.size(address(cd[36]))
                                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                            gas gas_remaining wei
                                                                           args _1113, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1228 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _1230 = mem[_1228]
                                                                        require mem[_1228] <= test266151307()
                                                                        require _1228 + mem[_1228] + 31 < _1228 + return_data.size
                                                                        _1232 = mem[_1228 + mem[_1228]]
                                                                        if mem[_1228 + mem[_1228]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _1228 + ceil32(return_data.size) + floor32(mem[_1228 + mem[_1228]]) + 1 > test266151307() or floor32(mem[_1228 + mem[_1228]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _1228 + ceil32(return_data.size) + floor32(mem[_1228 + mem[_1228]]) + 1
                                                                                mem[_1228 + ceil32(return_data.size)] = _1232
                                                                                require _1230 + (32 * _1232) + 32 <= return_data.size
                                                                                s = 0
                                                                                t = _1228 + _1230 + 32
                                                                                u = _1228 + ceil32(return_data.size) + 32
                                                                                while s < _1232:
                                                                                    require mem[t] == mem[t]
                                                                                    mem[u] = mem[t]
                                                                                    s = s + 1
                                                                                    t = t + 32
                                                                                    u = u + 32
                                                                                    continue 
                                                                                if 1 >= _1232:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    if (idx + 10^16 / 2) - 10^16 <= mem[_1228 + ceil32(return_data.size) + 64]:
                                                                                        if 1 >= _1232:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _1344 = mem[_1228 + ceil32(return_data.size) + 64]
                                                                                            if mem[_1228 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                                    mem[mem[64] + 36] = 64
                                                                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                                                                    s = 0
                                                                                                    t = cd[68] + 36
                                                                                                    u = mem[64] + 100
                                                                                                    while s < ('cd', 68).length:
                                                                                                        require cd[t] == address(cd[t])
                                                                                                        mem[u] = address(cd[t])
                                                                                                        s = s + 1
                                                                                                        t = t + 32
                                                                                                        u = u + 32
                                                                                                        continue 
                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1441 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1445 = mem[_1441]
                                                                                                        require mem[_1441] <= test266151307()
                                                                                                        require _1441 + mem[_1441] + 31 < _1441 + return_data.size
                                                                                                        _1449 = mem[_1441 + mem[_1441]]
                                                                                                        if mem[_1441 + mem[_1441]] > test266151307():
                                                                                                            revert with 'NH{q', 65
                                                                                                        else:
                                                                                                            if _1441 + ceil32(return_data.size) + floor32(mem[_1441 + mem[_1441]]) + 1 > test266151307() or floor32(mem[_1441 + mem[_1441]]) + 1 < 0:
                                                                                                                revert with 'NH{q', 65
                                                                                                            else:
                                                                                                                mem[64] = _1441 + ceil32(return_data.size) + floor32(mem[_1441 + mem[_1441]]) + 1
                                                                                                                mem[_1441 + ceil32(return_data.size)] = _1449
                                                                                                                require _1445 + (32 * _1449) + 32 <= return_data.size
                                                                                                                s = 0
                                                                                                                t = _1441 + _1445 + 32
                                                                                                                u = _1441 + ceil32(return_data.size) + 32
                                                                                                                while s < _1449:
                                                                                                                    require mem[t] == mem[t]
                                                                                                                    mem[u] = mem[t]
                                                                                                                    s = s + 1
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    continue 
                                                                                                                if 1 >= _1449:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    _1533 = mem[_1441 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1533
                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                    mem[mem[64] + 68] = ('cd', 100).length
                                                                                                                    s = 0
                                                                                                                    t = cd[100] + 36
                                                                                                                    u = mem[64] + 100
                                                                                                                    while s < ('cd', 100).length:
                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                        mem[u] = address(cd[t])
                                                                                                                        s = s + 1
                                                                                                                        t = t + 32
                                                                                                                        u = u + 32
                                                                                                                        continue 
                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args _1533, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1593 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1597 = mem[_1593]
                                                                                                                        require mem[_1593] <= test266151307()
                                                                                                                        require _1593 + mem[_1593] + 31 < _1593 + return_data.size
                                                                                                                        _1601 = mem[_1593 + mem[_1593]]
                                                                                                                        if mem[_1593 + mem[_1593]] > test266151307():
                                                                                                                            revert with 'NH{q', 65
                                                                                                                        else:
                                                                                                                            if _1593 + ceil32(return_data.size) + floor32(mem[_1593 + mem[_1593]]) + 1 > test266151307() or floor32(mem[_1593 + mem[_1593]]) + 1 < 0:
                                                                                                                                revert with 'NH{q', 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1593 + ceil32(return_data.size) + floor32(mem[_1593 + mem[_1593]]) + 1
                                                                                                                                mem[_1593 + ceil32(return_data.size)] = _1601
                                                                                                                                require _1597 + (32 * _1601) + 32 <= return_data.size
                                                                                                                                s = 0
                                                                                                                                t = _1593 + _1597 + 32
                                                                                                                                u = _1593 + ceil32(return_data.size) + 32
                                                                                                                                while s < _1601:
                                                                                                                                    require mem[t] == mem[t]
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    s = s + 1
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    continue 
                                                                                                                                if 1 >= _1601:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 <= mem[_1593 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _1601:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            if mem[_1593 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if _1344 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if 0 <= mem[_1593 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                        if _1344 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= mem[_1593 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_1593 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                                    else:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx
                                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        return (idx + 10^16 / 2)
                                                                                                                                    else:
                                                                                                                                        if _1344 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _1344 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                    else:
                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                            mem[mem[64] + 36] = 64
                                                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                                                            s = 0
                                                                                            t = cd[68] + 36
                                                                                            u = mem[64] + 100
                                                                                            while s < ('cd', 68).length:
                                                                                                require cd[t] == address(cd[t])
                                                                                                mem[u] = address(cd[t])
                                                                                                s = s + 1
                                                                                                t = t + 32
                                                                                                u = u + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(cd[4]))
                                                                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1442 = mem[64]
                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _1446 = mem[_1442]
                                                                                                require mem[_1442] <= test266151307()
                                                                                                require _1442 + mem[_1442] + 31 < _1442 + return_data.size
                                                                                                _1450 = mem[_1442 + mem[_1442]]
                                                                                                if mem[_1442 + mem[_1442]] > test266151307():
                                                                                                    revert with 'NH{q', 65
                                                                                                else:
                                                                                                    if _1442 + ceil32(return_data.size) + floor32(mem[_1442 + mem[_1442]]) + 1 > test266151307() or floor32(mem[_1442 + mem[_1442]]) + 1 < 0:
                                                                                                        revert with 'NH{q', 65
                                                                                                    else:
                                                                                                        mem[64] = _1442 + ceil32(return_data.size) + floor32(mem[_1442 + mem[_1442]]) + 1
                                                                                                        mem[_1442 + ceil32(return_data.size)] = _1450
                                                                                                        require _1446 + (32 * _1450) + 32 <= return_data.size
                                                                                                        s = 0
                                                                                                        t = _1442 + _1446 + 32
                                                                                                        u = _1442 + ceil32(return_data.size) + 32
                                                                                                        while s < _1450:
                                                                                                            require mem[t] == mem[t]
                                                                                                            mem[u] = mem[t]
                                                                                                            s = s + 1
                                                                                                            t = t + 32
                                                                                                            u = u + 32
                                                                                                            continue 
                                                                                                        if 1 >= _1450:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            _1535 = mem[_1442 + ceil32(return_data.size) + 64]
                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = _1535
                                                                                                            mem[mem[64] + 36] = 64
                                                                                                            mem[mem[64] + 68] = ('cd', 100).length
                                                                                                            s = 0
                                                                                                            t = cd[100] + 36
                                                                                                            u = mem[64] + 100
                                                                                                            while s < ('cd', 100).length:
                                                                                                                require cd[t] == address(cd[t])
                                                                                                                mem[u] = address(cd[t])
                                                                                                                s = s + 1
                                                                                                                t = t + 32
                                                                                                                u = u + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(cd[36]))
                                                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args _1535, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1594 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1598 = mem[_1594]
                                                                                                                require mem[_1594] <= test266151307()
                                                                                                                require _1594 + mem[_1594] + 31 < _1594 + return_data.size
                                                                                                                _1602 = mem[_1594 + mem[_1594]]
                                                                                                                if mem[_1594 + mem[_1594]] > test266151307():
                                                                                                                    revert with 'NH{q', 65
                                                                                                                else:
                                                                                                                    if _1594 + ceil32(return_data.size) + floor32(mem[_1594 + mem[_1594]]) + 1 > test266151307() or floor32(mem[_1594 + mem[_1594]]) + 1 < 0:
                                                                                                                        revert with 'NH{q', 65
                                                                                                                    else:
                                                                                                                        mem[64] = _1594 + ceil32(return_data.size) + floor32(mem[_1594 + mem[_1594]]) + 1
                                                                                                                        mem[_1594 + ceil32(return_data.size)] = _1602
                                                                                                                        require _1598 + (32 * _1602) + 32 <= return_data.size
                                                                                                                        s = 0
                                                                                                                        t = _1594 + _1598 + 32
                                                                                                                        u = _1594 + ceil32(return_data.size) + 32
                                                                                                                        while s < _1602:
                                                                                                                            require mem[t] == mem[t]
                                                                                                                            mem[u] = mem[t]
                                                                                                                            s = s + 1
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            continue 
                                                                                                                        if 1 >= _1602:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            if (idx + 10^16 / 2) + 10^16 <= mem[_1594 + ceil32(return_data.size) + 64]:
                                                                                                                                if 1 >= _1602:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[_1594 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                continue 
    return s
}

function sub_4f1af049(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[100] = address(cd[4])
    mem[132] = 100 * 10^18
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), 100 * 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    s = 0
    idx = 100 * 10^18
    while 10^16 < idx:
        if 10^16 > -idx - 1:
            revert with 'NH{q', 17
        else:
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx + 10^16 / 2
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            s = 0
            t = cd[68] + 36
            u = mem[64] + 100
            while s < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, idx + 10^16), Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _610 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _611 = mem[_610]
                require mem[_610] <= test266151307()
                require _610 + mem[_610] + 31 < _610 + return_data.size
                _612 = mem[_610 + mem[_610]]
                if mem[_610 + mem[_610]] > test266151307():
                    revert with 'NH{q', 65
                else:
                    if _610 + ceil32(return_data.size) + floor32(mem[_610 + mem[_610]]) + 1 > test266151307() or floor32(mem[_610 + mem[_610]]) + 1 < 0:
                        revert with 'NH{q', 65
                    else:
                        mem[64] = _610 + ceil32(return_data.size) + floor32(mem[_610 + mem[_610]]) + 1
                        mem[_610 + ceil32(return_data.size)] = _612
                        require _611 + (32 * _612) + 32 <= return_data.size
                        s = 0
                        t = _610 + _611 + 32
                        u = _610 + ceil32(return_data.size) + 32
                        while s < _612:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if 1 >= _612:
                            revert with 'NH{q', 50
                        else:
                            _706 = mem[_610 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _706
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = ('cd', 100).length
                            s = 0
                            t = cd[100] + 36
                            u = mem[64] + 100
                            while s < ('cd', 100).length:
                                require cd[t] == address(cd[t])
                                mem[u] = address(cd[t])
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _706, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _812 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _813 = mem[_812]
                                require mem[_812] <= test266151307()
                                require _812 + mem[_812] + 31 < _812 + return_data.size
                                _814 = mem[_812 + mem[_812]]
                                if mem[_812 + mem[_812]] > test266151307():
                                    revert with 'NH{q', 65
                                else:
                                    if _812 + ceil32(return_data.size) + floor32(mem[_812 + mem[_812]]) + 1 > test266151307() or floor32(mem[_812 + mem[_812]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    else:
                                        mem[64] = _812 + ceil32(return_data.size) + floor32(mem[_812 + mem[_812]]) + 1
                                        mem[_812 + ceil32(return_data.size)] = _814
                                        require _813 + (32 * _814) + 32 <= return_data.size
                                        s = 0
                                        t = _812 + _813 + 32
                                        u = _812 + ceil32(return_data.size) + 32
                                        while s < _814:
                                            require mem[t] == mem[t]
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        if 1 >= _814:
                                            revert with 'NH{q', 50
                                        else:
                                            if idx + 10^16 / 2 <= mem[_812 + ceil32(return_data.size) + 64]:
                                                if 1 >= _814:
                                                    revert with 'NH{q', 50
                                                else:
                                                    _924 = mem[_812 + ceil32(return_data.size) + 64]
                                                    if mem[_812 + ceil32(return_data.size) + 64] < idx + 10^16 / 2:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if idx + 10^16 / 2 < 10^16:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = (idx + 10^16 / 2) - 10^16
                                                            mem[mem[64] + 36] = 64
                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                            s = 0
                                                            t = cd[68] + 36
                                                            u = mem[64] + 100
                                                            while s < ('cd', 68).length:
                                                                require cd[t] == address(cd[t])
                                                                mem[u] = address(cd[t])
                                                                s = s + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                    gas gas_remaining wei
                                                                   args (idx + 10^16 / 2) - 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1038 = mem[64]
                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1040 = mem[_1038]
                                                                require mem[_1038] <= test266151307()
                                                                require _1038 + mem[_1038] + 31 < _1038 + return_data.size
                                                                _1042 = mem[_1038 + mem[_1038]]
                                                                if mem[_1038 + mem[_1038]] > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    if _1038 + ceil32(return_data.size) + floor32(mem[_1038 + mem[_1038]]) + 1 > test266151307() or floor32(mem[_1038 + mem[_1038]]) + 1 < 0:
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        mem[64] = _1038 + ceil32(return_data.size) + floor32(mem[_1038 + mem[_1038]]) + 1
                                                                        mem[_1038 + ceil32(return_data.size)] = _1042
                                                                        require _1040 + (32 * _1042) + 32 <= return_data.size
                                                                        s = 0
                                                                        t = _1038 + _1040 + 32
                                                                        u = _1038 + ceil32(return_data.size) + 32
                                                                        while s < _1042:
                                                                            require mem[t] == mem[t]
                                                                            mem[u] = mem[t]
                                                                            s = s + 1
                                                                            t = t + 32
                                                                            u = u + 32
                                                                            continue 
                                                                        if 1 >= _1042:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            _1163 = mem[_1038 + ceil32(return_data.size) + 64]
                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _1163
                                                                            mem[mem[64] + 36] = 64
                                                                            mem[mem[64] + 68] = ('cd', 100).length
                                                                            s = 0
                                                                            t = cd[100] + 36
                                                                            u = mem[64] + 100
                                                                            while s < ('cd', 100).length:
                                                                                require cd[t] == address(cd[t])
                                                                                mem[u] = address(cd[t])
                                                                                s = s + 1
                                                                                t = t + 32
                                                                                u = u + 32
                                                                                continue 
                                                                            require ext_code.size(address(cd[36]))
                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1163, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1293 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _1295 = mem[_1293]
                                                                                require mem[_1293] <= test266151307()
                                                                                require _1293 + mem[_1293] + 31 < _1293 + return_data.size
                                                                                _1297 = mem[_1293 + mem[_1293]]
                                                                                if mem[_1293 + mem[_1293]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _1293 + ceil32(return_data.size) + floor32(mem[_1293 + mem[_1293]]) + 1 > test266151307() or floor32(mem[_1293 + mem[_1293]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _1293 + ceil32(return_data.size) + floor32(mem[_1293 + mem[_1293]]) + 1
                                                                                        mem[_1293 + ceil32(return_data.size)] = _1297
                                                                                        require _1295 + (32 * _1297) + 32 <= return_data.size
                                                                                        s = 0
                                                                                        t = _1293 + _1295 + 32
                                                                                        u = _1293 + ceil32(return_data.size) + 32
                                                                                        while s < _1297:
                                                                                            require mem[t] == mem[t]
                                                                                            mem[u] = mem[t]
                                                                                            s = s + 1
                                                                                            t = t + 32
                                                                                            u = u + 32
                                                                                            continue 
                                                                                        if 1 >= _1297:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            if (idx + 10^16 / 2) - 10^16 <= mem[_1293 + ceil32(return_data.size) + 64]:
                                                                                                if 1 >= _1297:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    _1432 = mem[_1293 + ceil32(return_data.size) + 64]
                                                                                                    if mem[_1293 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                                            mem[mem[64] + 36] = 64
                                                                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                                                                            s = 0
                                                                                                            t = cd[68] + 36
                                                                                                            u = mem[64] + 100
                                                                                                            while s < ('cd', 68).length:
                                                                                                                require cd[t] == address(cd[t])
                                                                                                                mem[u] = address(cd[t])
                                                                                                                s = s + 1
                                                                                                                t = t + 32
                                                                                                                u = u + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(cd[4]))
                                                                                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1573 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1577 = mem[_1573]
                                                                                                                require mem[_1573] <= test266151307()
                                                                                                                require _1573 + mem[_1573] + 31 < _1573 + return_data.size
                                                                                                                _1581 = mem[_1573 + mem[_1573]]
                                                                                                                if mem[_1573 + mem[_1573]] > test266151307():
                                                                                                                    revert with 'NH{q', 65
                                                                                                                else:
                                                                                                                    if _1573 + ceil32(return_data.size) + floor32(mem[_1573 + mem[_1573]]) + 1 > test266151307() or floor32(mem[_1573 + mem[_1573]]) + 1 < 0:
                                                                                                                        revert with 'NH{q', 65
                                                                                                                    else:
                                                                                                                        mem[64] = _1573 + ceil32(return_data.size) + floor32(mem[_1573 + mem[_1573]]) + 1
                                                                                                                        mem[_1573 + ceil32(return_data.size)] = _1581
                                                                                                                        require _1577 + (32 * _1581) + 32 <= return_data.size
                                                                                                                        s = 0
                                                                                                                        t = _1573 + _1577 + 32
                                                                                                                        u = _1573 + ceil32(return_data.size) + 32
                                                                                                                        while s < _1581:
                                                                                                                            require mem[t] == mem[t]
                                                                                                                            mem[u] = mem[t]
                                                                                                                            s = s + 1
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            continue 
                                                                                                                        if 1 >= _1581:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            _1733 = mem[_1573 + ceil32(return_data.size) + 64]
                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1733
                                                                                                                            mem[mem[64] + 36] = 64
                                                                                                                            mem[mem[64] + 68] = ('cd', 100).length
                                                                                                                            s = 0
                                                                                                                            t = cd[100] + 36
                                                                                                                            u = mem[64] + 100
                                                                                                                            while s < ('cd', 100).length:
                                                                                                                                require cd[t] == address(cd[t])
                                                                                                                                mem[u] = address(cd[t])
                                                                                                                                s = s + 1
                                                                                                                                t = t + 32
                                                                                                                                u = u + 32
                                                                                                                                continue 
                                                                                                                            require ext_code.size(address(cd[36]))
                                                                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args _1733, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1887 = mem[64]
                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1891 = mem[_1887]
                                                                                                                                require mem[_1887] <= test266151307()
                                                                                                                                require _1887 + mem[_1887] + 31 < _1887 + return_data.size
                                                                                                                                _1895 = mem[_1887 + mem[_1887]]
                                                                                                                                if mem[_1887 + mem[_1887]] > test266151307():
                                                                                                                                    revert with 'NH{q', 65
                                                                                                                                else:
                                                                                                                                    if _1887 + ceil32(return_data.size) + floor32(mem[_1887 + mem[_1887]]) + 1 > test266151307() or floor32(mem[_1887 + mem[_1887]]) + 1 < 0:
                                                                                                                                        revert with 'NH{q', 65
                                                                                                                                    else:
                                                                                                                                        mem[64] = _1887 + ceil32(return_data.size) + floor32(mem[_1887 + mem[_1887]]) + 1
                                                                                                                                        mem[_1887 + ceil32(return_data.size)] = _1895
                                                                                                                                        require _1891 + (32 * _1895) + 32 <= return_data.size
                                                                                                                                        s = 0
                                                                                                                                        t = _1887 + _1891 + 32
                                                                                                                                        u = _1887 + ceil32(return_data.size) + 32
                                                                                                                                        while s < _1895:
                                                                                                                                            require mem[t] == mem[t]
                                                                                                                                            mem[u] = mem[t]
                                                                                                                                            s = s + 1
                                                                                                                                            t = t + 32
                                                                                                                                            u = u + 32
                                                                                                                                            continue 
                                                                                                                                        if 1 >= _1895:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            if (idx + 10^16 / 2) + 10^16 <= mem[_1887 + ceil32(return_data.size) + 64]:
                                                                                                                                                if 1 >= _1895:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    if mem[_1887 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        if _1432 + 10^16 >= _924:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _924 <= mem[_1887 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                if _1432 + 10^16 >= _924:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if _924 >= mem[_1887 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                                        continue 
                                                                                                                                                                    else:
                                                                                                                                                                        if mem[_1887 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                                            continue 
                                                                                                                                                                        else:
                                                                                                                                                                            if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                                            else:
                                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                                idx = idx
                                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                                mem[mem[64] + 4] = idx + 10^16 / 2
                                                                                                                                                                mem[mem[64] + 36] = 0
                                                                                                                                                                mem[mem[64] + 68] = 160
                                                                                                                                                                mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                                s = 0
                                                                                                                                                                t = cd[68] + 36
                                                                                                                                                                u = mem[64] + 196
                                                                                                                                                                while s < ('cd', 68).length:
                                                                                                                                                                    require cd[t] == address(cd[t])
                                                                                                                                                                    mem[u] = address(cd[t])
                                                                                                                                                                    s = s + 1
                                                                                                                                                                    t = t + 32
                                                                                                                                                                    u = u + 32
                                                                                                                                                                    continue 
                                                                                                                                                                mem[mem[64] + 100] = this.address
                                                                                                                                                                mem[mem[64] + 132] = 1711275212
                                                                                                                                                                require ext_code.size(address(cd[4]))
                                                                                                                                                                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                    args Mask(255, 1, idx + 10^16), 0, 160, address(this.address), 1711275212, ('cd', 68).length, mem[mem[64] + 196 len 32 * ('cd', 68).length]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    _2179 = mem[64]
                                                                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    require mem[_2179] <= test266151307()
                                                                                                                                                                    require _2179 + mem[_2179] + 31 < _2179 + return_data.size
                                                                                                                                                                    if mem[_2179 + mem[_2179]] > test266151307():
                                                                                                                                                                        revert with 'NH{q', 65
                                                                                                                                                                    else:
                                                                                                                                                                        if _2179 + ceil32(return_data.size) + floor32(mem[_2179 + mem[_2179]]) + 1 > test266151307() or floor32(mem[_2179 + mem[_2179]]) + 1 < 0:
                                                                                                                                                                            revert with 'NH{q', 65
                                                                                                                                                                        else:
                                                                                                                                                                            require mem[_2179] + (32 * mem[_2179 + mem[_2179]]) + 32 <= return_data.size
                                                                                                                                                                            # nil
                                                                                                                                            else:
                                                                                                                                                if _1432 + 10^16 >= _924:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _924 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                        if _1432 + 10^16 >= _924:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _924 - (idx + 10^16 / 2) >= 0:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                        mem[mem[64] + 4] = idx + 10^16 / 2
                                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                                        mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                        s = 0
                                                                                                                                                        t = cd[68] + 36
                                                                                                                                                        u = mem[64] + 196
                                                                                                                                                        while s < ('cd', 68).length:
                                                                                                                                                            require cd[t] == address(cd[t])
                                                                                                                                                            mem[u] = address(cd[t])
                                                                                                                                                            s = s + 1
                                                                                                                                                            t = t + 32
                                                                                                                                                            u = u + 32
                                                                                                                                                            continue 
                                                                                                                                                        mem[mem[64] + 100] = this.address
                                                                                                                                                        mem[mem[64] + 132] = 1711275212
                                                                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                                                                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args Mask(255, 1, idx + 10^16), 0, 160, address(this.address), 1711275212, ('cd', 68).length, mem[mem[64] + 196 len 32 * ('cd', 68).length]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _2180 = mem[64]
                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_2180] <= test266151307()
                                                                                                                                                            require _2180 + mem[_2180] + 31 < _2180 + return_data.size
                                                                                                                                                            if mem[_2180 + mem[_2180]] > test266151307():
                                                                                                                                                                revert with 'NH{q', 65
                                                                                                                                                            else:
                                                                                                                                                                if _2180 + ceil32(return_data.size) + floor32(mem[_2180 + mem[_2180]]) + 1 > test266151307() or floor32(mem[_2180 + mem[_2180]]) + 1 < 0:
                                                                                                                                                                    revert with 'NH{q', 65
                                                                                                                                                                else:
                                                                                                                                                                    require mem[_2180] + (32 * mem[_2180 + mem[_2180]]) + 32 <= return_data.size
                                                                                                                                                                    # nil
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                                    mem[mem[64] + 36] = 64
                                                                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                                                                    s = 0
                                                                                                    t = cd[68] + 36
                                                                                                    u = mem[64] + 100
                                                                                                    while s < ('cd', 68).length:
                                                                                                        require cd[t] == address(cd[t])
                                                                                                        mem[u] = address(cd[t])
                                                                                                        s = s + 1
                                                                                                        t = t + 32
                                                                                                        u = u + 32
                                                                                                        continue 
                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1574 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1578 = mem[_1574]
                                                                                                        require mem[_1574] <= test266151307()
                                                                                                        require _1574 + mem[_1574] + 31 < _1574 + return_data.size
                                                                                                        _1582 = mem[_1574 + mem[_1574]]
                                                                                                        if mem[_1574 + mem[_1574]] > test266151307():
                                                                                                            revert with 'NH{q', 65
                                                                                                        else:
                                                                                                            if _1574 + ceil32(return_data.size) + floor32(mem[_1574 + mem[_1574]]) + 1 > test266151307() or floor32(mem[_1574 + mem[_1574]]) + 1 < 0:
                                                                                                                revert with 'NH{q', 65
                                                                                                            else:
                                                                                                                mem[64] = _1574 + ceil32(return_data.size) + floor32(mem[_1574 + mem[_1574]]) + 1
                                                                                                                mem[_1574 + ceil32(return_data.size)] = _1582
                                                                                                                require _1578 + (32 * _1582) + 32 <= return_data.size
                                                                                                                s = 0
                                                                                                                t = _1574 + _1578 + 32
                                                                                                                u = _1574 + ceil32(return_data.size) + 32
                                                                                                                while s < _1582:
                                                                                                                    require mem[t] == mem[t]
                                                                                                                    mem[u] = mem[t]
                                                                                                                    s = s + 1
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    continue 
                                                                                                                if 1 >= _1582:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    _1735 = mem[_1574 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1735
                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                    mem[mem[64] + 68] = ('cd', 100).length
                                                                                                                    s = 0
                                                                                                                    t = cd[100] + 36
                                                                                                                    u = mem[64] + 100
                                                                                                                    while s < ('cd', 100).length:
                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                        mem[u] = address(cd[t])
                                                                                                                        s = s + 1
                                                                                                                        t = t + 32
                                                                                                                        u = u + 32
                                                                                                                        continue 
                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args _1735, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1888 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1892 = mem[_1888]
                                                                                                                        require mem[_1888] <= test266151307()
                                                                                                                        require _1888 + mem[_1888] + 31 < _1888 + return_data.size
                                                                                                                        _1896 = mem[_1888 + mem[_1888]]
                                                                                                                        if mem[_1888 + mem[_1888]] > test266151307():
                                                                                                                            revert with 'NH{q', 65
                                                                                                                        else:
                                                                                                                            if _1888 + ceil32(return_data.size) + floor32(mem[_1888 + mem[_1888]]) + 1 > test266151307() or floor32(mem[_1888 + mem[_1888]]) + 1 < 0:
                                                                                                                                revert with 'NH{q', 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1888 + ceil32(return_data.size) + floor32(mem[_1888 + mem[_1888]]) + 1
                                                                                                                                mem[_1888 + ceil32(return_data.size)] = _1896
                                                                                                                                require _1892 + (32 * _1896) + 32 <= return_data.size
                                                                                                                                s = 0
                                                                                                                                t = _1888 + _1892 + 32
                                                                                                                                u = _1888 + ceil32(return_data.size) + 32
                                                                                                                                while s < _1896:
                                                                                                                                    require mem[t] == mem[t]
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    s = s + 1
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    continue 
                                                                                                                                if 1 >= _1896:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 <= mem[_1888 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _1896:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            if mem[_1888 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= _924 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _924 <= mem[_1888 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                        if 0 >= _924 - (idx + 10^16 / 2):
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _924 >= mem[_1888 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_1888 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                                    else:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx
                                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                        mem[mem[64] + 4] = idx + 10^16 / 2
                                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                                        mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                        s = 0
                                                                                                                                                        t = cd[68] + 36
                                                                                                                                                        u = mem[64] + 196
                                                                                                                                                        while s < ('cd', 68).length:
                                                                                                                                                            require cd[t] == address(cd[t])
                                                                                                                                                            mem[u] = address(cd[t])
                                                                                                                                                            s = s + 1
                                                                                                                                                            t = t + 32
                                                                                                                                                            u = u + 32
                                                                                                                                                            continue 
                                                                                                                                                        mem[mem[64] + 100] = this.address
                                                                                                                                                        mem[mem[64] + 132] = 1711275212
                                                                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                                                                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args Mask(255, 1, idx + 10^16), 0, 160, address(this.address), 1711275212, ('cd', 68).length, mem[mem[64] + 196 len 32 * ('cd', 68).length]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _2181 = mem[64]
                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_2181] <= test266151307()
                                                                                                                                                            require _2181 + mem[_2181] + 31 < _2181 + return_data.size
                                                                                                                                                            if mem[_2181 + mem[_2181]] > test266151307():
                                                                                                                                                                revert with 'NH{q', 65
                                                                                                                                                            else:
                                                                                                                                                                if _2181 + ceil32(return_data.size) + floor32(mem[_2181 + mem[_2181]]) + 1 > test266151307() or floor32(mem[_2181 + mem[_2181]]) + 1 < 0:
                                                                                                                                                                    revert with 'NH{q', 65
                                                                                                                                                                else:
                                                                                                                                                                    require mem[_2181] + (32 * mem[_2181 + mem[_2181]]) + 32 <= return_data.size
                                                                                                                                                                    # nil
                                                                                                                                    else:
                                                                                                                                        if 0 >= _924 - (idx + 10^16 / 2):
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _924 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                if 0 >= _924 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _924 - (idx + 10^16 / 2) >= 0:
                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                mem[mem[64] + 4] = idx + 10^16 / 2
                                                                                                                                                mem[mem[64] + 36] = 0
                                                                                                                                                mem[mem[64] + 68] = 160
                                                                                                                                                mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                s = 0
                                                                                                                                                t = cd[68] + 36
                                                                                                                                                u = mem[64] + 196
                                                                                                                                                while s < ('cd', 68).length:
                                                                                                                                                    require cd[t] == address(cd[t])
                                                                                                                                                    mem[u] = address(cd[t])
                                                                                                                                                    s = s + 1
                                                                                                                                                    t = t + 32
                                                                                                                                                    u = u + 32
                                                                                                                                                    continue 
                                                                                                                                                mem[mem[64] + 100] = this.address
                                                                                                                                                mem[mem[64] + 132] = 1711275212
                                                                                                                                                require ext_code.size(address(cd[4]))
                                                                                                                                                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args Mask(255, 1, idx + 10^16), 0, 160, address(this.address), 1711275212, ('cd', 68).length, mem[mem[64] + 196 len 32 * ('cd', 68).length]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _2182 = mem[64]
                                                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_2182] <= test266151307()
                                                                                                                                                    require _2182 + mem[_2182] + 31 < _2182 + return_data.size
                                                                                                                                                    if mem[_2182 + mem[_2182]] > test266151307():
                                                                                                                                                        revert with 'NH{q', 65
                                                                                                                                                    else:
                                                                                                                                                        if _2182 + ceil32(return_data.size) + floor32(mem[_2182 + mem[_2182]]) + 1 > test266151307() or floor32(mem[_2182 + mem[_2182]]) + 1 < 0:
                                                                                                                                                            revert with 'NH{q', 65
                                                                                                                                                        else:
                                                                                                                                                            require mem[_2182] + (32 * mem[_2182 + mem[_2182]]) + 32 <= return_data.size
                                                                                                                                                            # nil
                                            else:
                                                if idx + 10^16 / 2 < 10^16:
                                                    revert with 'NH{q', 17
                                                else:
                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = (idx + 10^16 / 2) - 10^16
                                                    mem[mem[64] + 36] = 64
                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                    s = 0
                                                    t = cd[68] + 36
                                                    u = mem[64] + 100
                                                    while s < ('cd', 68).length:
                                                        require cd[t] == address(cd[t])
                                                        mem[u] = address(cd[t])
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args (idx + 10^16 / 2) - 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1039 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1041 = mem[_1039]
                                                        require mem[_1039] <= test266151307()
                                                        require _1039 + mem[_1039] + 31 < _1039 + return_data.size
                                                        _1043 = mem[_1039 + mem[_1039]]
                                                        if mem[_1039 + mem[_1039]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _1039 + ceil32(return_data.size) + floor32(mem[_1039 + mem[_1039]]) + 1 > test266151307() or floor32(mem[_1039 + mem[_1039]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _1039 + ceil32(return_data.size) + floor32(mem[_1039 + mem[_1039]]) + 1
                                                                mem[_1039 + ceil32(return_data.size)] = _1043
                                                                require _1041 + (32 * _1043) + 32 <= return_data.size
                                                                s = 0
                                                                t = _1039 + _1041 + 32
                                                                u = _1039 + ceil32(return_data.size) + 32
                                                                while s < _1043:
                                                                    require mem[t] == mem[t]
                                                                    mem[u] = mem[t]
                                                                    s = s + 1
                                                                    t = t + 32
                                                                    u = u + 32
                                                                    continue 
                                                                if 1 >= _1043:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1165 = mem[_1039 + ceil32(return_data.size) + 64]
                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _1165
                                                                    mem[mem[64] + 36] = 64
                                                                    mem[mem[64] + 68] = ('cd', 100).length
                                                                    s = 0
                                                                    t = cd[100] + 36
                                                                    u = mem[64] + 100
                                                                    while s < ('cd', 100).length:
                                                                        require cd[t] == address(cd[t])
                                                                        mem[u] = address(cd[t])
                                                                        s = s + 1
                                                                        t = t + 32
                                                                        u = u + 32
                                                                        continue 
                                                                    require ext_code.size(address(cd[36]))
                                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                            gas gas_remaining wei
                                                                           args _1165, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1294 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _1296 = mem[_1294]
                                                                        require mem[_1294] <= test266151307()
                                                                        require _1294 + mem[_1294] + 31 < _1294 + return_data.size
                                                                        _1298 = mem[_1294 + mem[_1294]]
                                                                        if mem[_1294 + mem[_1294]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _1294 + ceil32(return_data.size) + floor32(mem[_1294 + mem[_1294]]) + 1 > test266151307() or floor32(mem[_1294 + mem[_1294]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _1294 + ceil32(return_data.size) + floor32(mem[_1294 + mem[_1294]]) + 1
                                                                                mem[_1294 + ceil32(return_data.size)] = _1298
                                                                                require _1296 + (32 * _1298) + 32 <= return_data.size
                                                                                s = 0
                                                                                t = _1294 + _1296 + 32
                                                                                u = _1294 + ceil32(return_data.size) + 32
                                                                                while s < _1298:
                                                                                    require mem[t] == mem[t]
                                                                                    mem[u] = mem[t]
                                                                                    s = s + 1
                                                                                    t = t + 32
                                                                                    u = u + 32
                                                                                    continue 
                                                                                if 1 >= _1298:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    if (idx + 10^16 / 2) - 10^16 <= mem[_1294 + ceil32(return_data.size) + 64]:
                                                                                        if 1 >= _1298:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _1433 = mem[_1294 + ceil32(return_data.size) + 64]
                                                                                            if mem[_1294 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                                    mem[mem[64] + 36] = 64
                                                                                                    mem[mem[64] + 68] = ('cd', 68).length
                                                                                                    s = 0
                                                                                                    t = cd[68] + 36
                                                                                                    u = mem[64] + 100
                                                                                                    while s < ('cd', 68).length:
                                                                                                        require cd[t] == address(cd[t])
                                                                                                        mem[u] = address(cd[t])
                                                                                                        s = s + 1
                                                                                                        t = t + 32
                                                                                                        u = u + 32
                                                                                                        continue 
                                                                                                    require ext_code.size(address(cd[4]))
                                                                                                    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1575 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1579 = mem[_1575]
                                                                                                        require mem[_1575] <= test266151307()
                                                                                                        require _1575 + mem[_1575] + 31 < _1575 + return_data.size
                                                                                                        _1583 = mem[_1575 + mem[_1575]]
                                                                                                        if mem[_1575 + mem[_1575]] > test266151307():
                                                                                                            revert with 'NH{q', 65
                                                                                                        else:
                                                                                                            if _1575 + ceil32(return_data.size) + floor32(mem[_1575 + mem[_1575]]) + 1 > test266151307() or floor32(mem[_1575 + mem[_1575]]) + 1 < 0:
                                                                                                                revert with 'NH{q', 65
                                                                                                            else:
                                                                                                                mem[64] = _1575 + ceil32(return_data.size) + floor32(mem[_1575 + mem[_1575]]) + 1
                                                                                                                mem[_1575 + ceil32(return_data.size)] = _1583
                                                                                                                require _1579 + (32 * _1583) + 32 <= return_data.size
                                                                                                                s = 0
                                                                                                                t = _1575 + _1579 + 32
                                                                                                                u = _1575 + ceil32(return_data.size) + 32
                                                                                                                while s < _1583:
                                                                                                                    require mem[t] == mem[t]
                                                                                                                    mem[u] = mem[t]
                                                                                                                    s = s + 1
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    continue 
                                                                                                                if 1 >= _1583:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    _1737 = mem[_1575 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1737
                                                                                                                    mem[mem[64] + 36] = 64
                                                                                                                    mem[mem[64] + 68] = ('cd', 100).length
                                                                                                                    s = 0
                                                                                                                    t = cd[100] + 36
                                                                                                                    u = mem[64] + 100
                                                                                                                    while s < ('cd', 100).length:
                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                        mem[u] = address(cd[t])
                                                                                                                        s = s + 1
                                                                                                                        t = t + 32
                                                                                                                        u = u + 32
                                                                                                                        continue 
                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args _1737, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1889 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1893 = mem[_1889]
                                                                                                                        require mem[_1889] <= test266151307()
                                                                                                                        require _1889 + mem[_1889] + 31 < _1889 + return_data.size
                                                                                                                        _1897 = mem[_1889 + mem[_1889]]
                                                                                                                        if mem[_1889 + mem[_1889]] > test266151307():
                                                                                                                            revert with 'NH{q', 65
                                                                                                                        else:
                                                                                                                            if _1889 + ceil32(return_data.size) + floor32(mem[_1889 + mem[_1889]]) + 1 > test266151307() or floor32(mem[_1889 + mem[_1889]]) + 1 < 0:
                                                                                                                                revert with 'NH{q', 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1889 + ceil32(return_data.size) + floor32(mem[_1889 + mem[_1889]]) + 1
                                                                                                                                mem[_1889 + ceil32(return_data.size)] = _1897
                                                                                                                                require _1893 + (32 * _1897) + 32 <= return_data.size
                                                                                                                                s = 0
                                                                                                                                t = _1889 + _1893 + 32
                                                                                                                                u = _1889 + ceil32(return_data.size) + 32
                                                                                                                                while s < _1897:
                                                                                                                                    require mem[t] == mem[t]
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    s = s + 1
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    continue 
                                                                                                                                if 1 >= _1897:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 <= mem[_1889 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _1897:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            if mem[_1889 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if _1433 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if 0 <= mem[_1889 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                        if _1433 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= mem[_1889 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_1889 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                                    else:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx
                                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                        mem[mem[64] + 4] = idx + 10^16 / 2
                                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                                        mem[mem[64] + 164] = ('cd', 68).length
                                                                                                                                                        s = 0
                                                                                                                                                        t = cd[68] + 36
                                                                                                                                                        u = mem[64] + 196
                                                                                                                                                        while s < ('cd', 68).length:
                                                                                                                                                            require cd[t] == address(cd[t])
                                                                                                                                                            mem[u] = address(cd[t])
                                                                                                                                                            s = s + 1
                                                                                                                                                            t = t + 32
                                                                                                                                                            u = u + 32
                                                                                                                                                            continue 
                                                                                                                                                        mem[mem[64] + 100] = this.address
                                                                                                                                                        mem[mem[64] + 132] = 1711275212
                                                                                                                                                        require ext_code.size(address(cd[4]))
                                                                                                                                                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args Mask(255, 1, idx + 10^16), 0, 160, address(this.address), 1711275212, ('cd', 68).length, mem[mem[64] + 196 len 32 * ('cd', 68).length]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _2183 = mem[64]
                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_2183] <= test266151307()
                                                                                                                                                            require _2183 + mem[_2183] + 31 < _2183 + return_data.size
                                                                                                                                                            if mem[_2183 + mem[_2183]] > test266151307():
                                                                                                                                                                revert with 'NH{q', 65
                                                                                                                                                            else:
                                                                                                                                                                if _2183 + ceil32(return_data.size) + floor32(mem[_2183 + mem[_2183]]) + 1 > test266151307() or floor32(mem[_2183 + mem[_2183]]) + 1 < 0:
                                                                                                                                                                    revert with 'NH{q', 65
                                                                                                                                                                else:
                                                                                                                                                                    require mem[_2183] + (32 * mem[_2183 + mem[_2183]]) + 32 <= return_data.size
                                                                                                                                                                    # nil
                                                                                                                                    else:
                                                                                                                                        if _1433 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _1433 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                    else:
                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = (idx + 10^16 / 2) + 10^16
                                                                                            mem[mem[64] + 36] = 64
                                                                                            mem[mem[64] + 68] = ('cd', 68).length
                                                                                            s = 0
                                                                                            t = cd[68] + 36
                                                                                            u = mem[64] + 100
                                                                                            while s < ('cd', 68).length:
                                                                                                require cd[t] == address(cd[t])
                                                                                                mem[u] = address(cd[t])
                                                                                                s = s + 1
                                                                                                t = t + 32
                                                                                                u = u + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(cd[4]))
                                                                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args (idx + 10^16 / 2) + 10^16, Array(len=('cd', 68).length, data=mem[mem[64] + 100 len 32 * ('cd', 68).length])
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1576 = mem[64]
                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _1580 = mem[_1576]
                                                                                                require mem[_1576] <= test266151307()
                                                                                                require _1576 + mem[_1576] + 31 < _1576 + return_data.size
                                                                                                _1584 = mem[_1576 + mem[_1576]]
                                                                                                if mem[_1576 + mem[_1576]] > test266151307():
                                                                                                    revert with 'NH{q', 65
                                                                                                else:
                                                                                                    if _1576 + ceil32(return_data.size) + floor32(mem[_1576 + mem[_1576]]) + 1 > test266151307() or floor32(mem[_1576 + mem[_1576]]) + 1 < 0:
                                                                                                        revert with 'NH{q', 65
                                                                                                    else:
                                                                                                        mem[64] = _1576 + ceil32(return_data.size) + floor32(mem[_1576 + mem[_1576]]) + 1
                                                                                                        mem[_1576 + ceil32(return_data.size)] = _1584
                                                                                                        require _1580 + (32 * _1584) + 32 <= return_data.size
                                                                                                        s = 0
                                                                                                        t = _1576 + _1580 + 32
                                                                                                        u = _1576 + ceil32(return_data.size) + 32
                                                                                                        while s < _1584:
                                                                                                            require mem[t] == mem[t]
                                                                                                            mem[u] = mem[t]
                                                                                                            s = s + 1
                                                                                                            t = t + 32
                                                                                                            u = u + 32
                                                                                                            continue 
                                                                                                        if 1 >= _1584:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            _1739 = mem[_1576 + ceil32(return_data.size) + 64]
                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = _1739
                                                                                                            mem[mem[64] + 36] = 64
                                                                                                            mem[mem[64] + 68] = ('cd', 100).length
                                                                                                            s = 0
                                                                                                            t = cd[100] + 36
                                                                                                            u = mem[64] + 100
                                                                                                            while s < ('cd', 100).length:
                                                                                                                require cd[t] == address(cd[t])
                                                                                                                mem[u] = address(cd[t])
                                                                                                                s = s + 1
                                                                                                                t = t + 32
                                                                                                                u = u + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(cd[36]))
                                                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args _1739, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1890 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1894 = mem[_1890]
                                                                                                                require mem[_1890] <= test266151307()
                                                                                                                require _1890 + mem[_1890] + 31 < _1890 + return_data.size
                                                                                                                _1898 = mem[_1890 + mem[_1890]]
                                                                                                                if mem[_1890 + mem[_1890]] > test266151307():
                                                                                                                    revert with 'NH{q', 65
                                                                                                                else:
                                                                                                                    if _1890 + ceil32(return_data.size) + floor32(mem[_1890 + mem[_1890]]) + 1 > test266151307() or floor32(mem[_1890 + mem[_1890]]) + 1 < 0:
                                                                                                                        revert with 'NH{q', 65
                                                                                                                    else:
                                                                                                                        mem[64] = _1890 + ceil32(return_data.size) + floor32(mem[_1890 + mem[_1890]]) + 1
                                                                                                                        mem[_1890 + ceil32(return_data.size)] = _1898
                                                                                                                        require _1894 + (32 * _1898) + 32 <= return_data.size
                                                                                                                        s = 0
                                                                                                                        t = _1890 + _1894 + 32
                                                                                                                        u = _1890 + ceil32(return_data.size) + 32
                                                                                                                        while s < _1898:
                                                                                                                            require mem[t] == mem[t]
                                                                                                                            mem[u] = mem[t]
                                                                                                                            s = s + 1
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            continue 
                                                                                                                        if 1 >= _1898:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            if (idx + 10^16 / 2) + 10^16 <= mem[_1890 + ceil32(return_data.size) + 64]:
                                                                                                                                if 1 >= _1898:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[_1890 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                continue 
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = s
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    t = cd[68] + 36
    u = mem[64] + 196
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[u] = address(cd[t])
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = 1711275212
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args s, 0, 160, address(this.address), 1711275212, ('cd', 68).length, mem[mem[64] + 196 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _615 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _616 = mem[_615]
    require mem[_615] <= test266151307()
    require _615 + mem[_615] + 31 < _615 + return_data.size
    _617 = mem[_615 + mem[_615]]
    if mem[_615 + mem[_615]] > test266151307():
        revert with 'NH{q', 65
    if _615 + ceil32(return_data.size) + floor32(mem[_615 + mem[_615]]) + 1 > test266151307() or floor32(mem[_615 + mem[_615]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _615 + ceil32(return_data.size) + floor32(mem[_615 + mem[_615]]) + 1
    mem[_615 + ceil32(return_data.size)] = _617
    require _616 + (32 * _617) + 32 <= return_data.size
    idx = 0
    t = _615 + _616 + 32
    u = _615 + ceil32(return_data.size) + 32
    while idx < _617:
        require mem[t] == mem[t]
        mem[u] = mem[t]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    if 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[1] == address(('cd', 68)[1])
    if 1 >= _617:
        revert with 'NH{q', 50
    _709 = mem[_615 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _709
    require ext_code.size(address(('cd', 68)[1]))
    call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _709
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _716 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_716] == bool(mem[_716])
    require mem[_716]
    if 1 >= _617:
        revert with 'NH{q', 50
    _721 = mem[_615 + ceil32(return_data.size) + 64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _721
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    t = cd[100] + 36
    u = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[t] == address(cd[t])
        mem[u] = address(cd[t])
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = 1711275212
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _721, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _817 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _818 = mem[_817]
    require mem[_817] <= test266151307()
    require _817 + mem[_817] + 31 < _817 + return_data.size
    _819 = mem[_817 + mem[_817]]
    if mem[_817 + mem[_817]] > test266151307():
        revert with 'NH{q', 65
    if _817 + ceil32(return_data.size) + floor32(mem[_817 + mem[_817]]) + 1 > test266151307() or floor32(mem[_817 + mem[_817]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _817 + ceil32(return_data.size) + floor32(mem[_817 + mem[_817]]) + 1
    mem[_817 + ceil32(return_data.size)] = _819
    require _818 + (32 * _819) + 32 <= return_data.size
    idx = 0
    t = _817 + _818 + 32
    u = _817 + ceil32(return_data.size) + 32
    while idx < _819:
        require mem[t] == mem[t]
        mem[u] = mem[t]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    if 1 >= _819:
        revert with 'NH{q', 50
    require mem[_817 + ceil32(return_data.size) + 64] > s
}



}
