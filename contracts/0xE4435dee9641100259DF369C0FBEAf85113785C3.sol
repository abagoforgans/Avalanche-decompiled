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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cce62369(?) payable {
    require calldata.size - 4 >= 160
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
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _28
    require return_data.size >= _27 + (32 * _28) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _28] = mem[_27 + 128 len 32 * _28]
    if 1 >= _28:
        revert with 0, 50
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
        revert with 0, 65
    if _67 + ceil32(return_data.size) + ceil32(32 * mem[_67 + mem[_67]]) + 1 > test266151307() or ceil32(32 * mem[_67 + mem[_67]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _67 + ceil32(return_data.size) + ceil32(32 * mem[_67 + mem[_67]]) + 1
    mem[_67 + ceil32(return_data.size)] = _69
    require return_data.size >= _68 + (32 * _69) + 32
    mem[_67 + ceil32(return_data.size) + 32 len 32 * _69] = mem[_67 + _68 + 32 len 32 * _69]
    if 1 >= _69:
        revert with 0, 50
    if cd[4] < mem[_67 + ceil32(return_data.size) + 64]:
        return 0
    if 1 >= _69:
        revert with 0, 50
    if mem[_67 + ceil32(return_data.size) + 64] < cd[4]:
        revert with 0, 17
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
        if 10^16 > !idx:
            revert with 0, 17
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
                _304 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _305 = mem[_304]
                require mem[_304] <= test266151307()
                require _304 + mem[_304] + 31 < _304 + return_data.size
                _306 = mem[_304 + mem[_304]]
                if mem[_304 + mem[_304]] > test266151307():
                    revert with 0, 65
                else:
                    if _304 + ceil32(return_data.size) + ceil32(32 * mem[_304 + mem[_304]]) + 1 > test266151307() or ceil32(32 * mem[_304 + mem[_304]]) + 1 < 0:
                        revert with 0, 65
                    else:
                        mem[64] = _304 + ceil32(return_data.size) + ceil32(32 * mem[_304 + mem[_304]]) + 1
                        mem[_304 + ceil32(return_data.size)] = _306
                        require return_data.size >= _305 + (32 * _306) + 32
                        t = _304 + _305 + 32
                        u = _304 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _306:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if 1 >= _306:
                            revert with 0, 50
                        else:
                            _454 = mem[_304 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _454
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
                                   args _454, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _597 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _598 = mem[_597]
                                require mem[_597] <= test266151307()
                                require _597 + mem[_597] + 31 < _597 + return_data.size
                                _599 = mem[_597 + mem[_597]]
                                if mem[_597 + mem[_597]] > test266151307():
                                    revert with 0, 65
                                else:
                                    if _597 + ceil32(return_data.size) + ceil32(32 * mem[_597 + mem[_597]]) + 1 > test266151307() or ceil32(32 * mem[_597 + mem[_597]]) + 1 < 0:
                                        revert with 0, 65
                                    else:
                                        mem[64] = _597 + ceil32(return_data.size) + ceil32(32 * mem[_597 + mem[_597]]) + 1
                                        mem[_597 + ceil32(return_data.size)] = _599
                                        require return_data.size >= _598 + (32 * _599) + 32
                                        t = _597 + _598 + 32
                                        u = _597 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _599:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 1 >= _599:
                                            revert with 0, 50
                                        else:
                                            if idx + 10^16 / 2 >= mem[_597 + ceil32(return_data.size) + 64]:
                                                if 1 >= _599:
                                                    revert with 0, 50
                                                else:
                                                    _740 = mem[_597 + ceil32(return_data.size) + 64]
                                                    if mem[_597 + ceil32(return_data.size) + 64] < idx + 10^16 / 2:
                                                        revert with 0, 17
                                                    else:
                                                        if idx + 10^16 / 2 < 10^16:
                                                            revert with 0, 17
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
                                                                _873 = mem[64]
                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _875 = mem[_873]
                                                                require mem[_873] <= test266151307()
                                                                require _873 + mem[_873] + 31 < _873 + return_data.size
                                                                _877 = mem[_873 + mem[_873]]
                                                                if mem[_873 + mem[_873]] > test266151307():
                                                                    revert with 0, 65
                                                                else:
                                                                    if _873 + ceil32(return_data.size) + ceil32(32 * mem[_873 + mem[_873]]) + 1 > test266151307() or ceil32(32 * mem[_873 + mem[_873]]) + 1 < 0:
                                                                        revert with 0, 65
                                                                    else:
                                                                        mem[64] = _873 + ceil32(return_data.size) + ceil32(32 * mem[_873 + mem[_873]]) + 1
                                                                        mem[_873 + ceil32(return_data.size)] = _877
                                                                        require return_data.size >= _875 + (32 * _877) + 32
                                                                        t = _873 + _875 + 32
                                                                        u = _873 + ceil32(return_data.size) + 32
                                                                        s = 0
                                                                        while s < _877:
                                                                            mem[u] = mem[t]
                                                                            t = t + 32
                                                                            u = u + 32
                                                                            s = s + 1
                                                                            continue 
                                                                        if 1 >= _877:
                                                                            revert with 0, 50
                                                                        else:
                                                                            _1003 = mem[_873 + ceil32(return_data.size) + 64]
                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _1003
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
                                                                                   args _1003, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1119 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _1121 = mem[_1119]
                                                                                require mem[_1119] <= test266151307()
                                                                                require _1119 + mem[_1119] + 31 < _1119 + return_data.size
                                                                                _1123 = mem[_1119 + mem[_1119]]
                                                                                if mem[_1119 + mem[_1119]] > test266151307():
                                                                                    revert with 0, 65
                                                                                else:
                                                                                    if _1119 + ceil32(return_data.size) + ceil32(32 * mem[_1119 + mem[_1119]]) + 1 > test266151307() or ceil32(32 * mem[_1119 + mem[_1119]]) + 1 < 0:
                                                                                        revert with 0, 65
                                                                                    else:
                                                                                        mem[64] = _1119 + ceil32(return_data.size) + ceil32(32 * mem[_1119 + mem[_1119]]) + 1
                                                                                        mem[_1119 + ceil32(return_data.size)] = _1123
                                                                                        require return_data.size >= _1121 + (32 * _1123) + 32
                                                                                        t = _1119 + _1121 + 32
                                                                                        u = _1119 + ceil32(return_data.size) + 32
                                                                                        s = 0
                                                                                        while s < _1123:
                                                                                            mem[u] = mem[t]
                                                                                            t = t + 32
                                                                                            u = u + 32
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        if 1 >= _1123:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            if (idx + 10^16 / 2) - 10^16 >= mem[_1119 + ceil32(return_data.size) + 64]:
                                                                                                if 1 >= _1123:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    _1235 = mem[_1119 + ceil32(return_data.size) + 64]
                                                                                                    if mem[_1119 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                                            revert with 0, 17
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
                                                                                                                _1331 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1335 = mem[_1331]
                                                                                                                require mem[_1331] <= test266151307()
                                                                                                                require _1331 + mem[_1331] + 31 < _1331 + return_data.size
                                                                                                                _1339 = mem[_1331 + mem[_1331]]
                                                                                                                if mem[_1331 + mem[_1331]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _1331 + ceil32(return_data.size) + ceil32(32 * mem[_1331 + mem[_1331]]) + 1 > test266151307() or ceil32(32 * mem[_1331 + mem[_1331]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _1331 + ceil32(return_data.size) + ceil32(32 * mem[_1331 + mem[_1331]]) + 1
                                                                                                                        mem[_1331 + ceil32(return_data.size)] = _1339
                                                                                                                        require return_data.size >= _1335 + (32 * _1339) + 32
                                                                                                                        t = _1331 + _1335 + 32
                                                                                                                        u = _1331 + ceil32(return_data.size) + 32
                                                                                                                        s = 0
                                                                                                                        while s < _1339:
                                                                                                                            mem[u] = mem[t]
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                        if 1 >= _1339:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            _1421 = mem[_1331 + ceil32(return_data.size) + 64]
                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1421
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
                                                                                                                                   args _1421, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1483 = mem[64]
                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1487 = mem[_1483]
                                                                                                                                require mem[_1483] <= test266151307()
                                                                                                                                require _1483 + mem[_1483] + 31 < _1483 + return_data.size
                                                                                                                                _1491 = mem[_1483 + mem[_1483]]
                                                                                                                                if mem[_1483 + mem[_1483]] > test266151307():
                                                                                                                                    revert with 0, 65
                                                                                                                                else:
                                                                                                                                    if _1483 + ceil32(return_data.size) + ceil32(32 * mem[_1483 + mem[_1483]]) + 1 > test266151307() or ceil32(32 * mem[_1483 + mem[_1483]]) + 1 < 0:
                                                                                                                                        revert with 0, 65
                                                                                                                                    else:
                                                                                                                                        mem[64] = _1483 + ceil32(return_data.size) + ceil32(32 * mem[_1483 + mem[_1483]]) + 1
                                                                                                                                        mem[_1483 + ceil32(return_data.size)] = _1491
                                                                                                                                        require return_data.size >= _1487 + (32 * _1491) + 32
                                                                                                                                        t = _1483 + _1487 + 32
                                                                                                                                        u = _1483 + ceil32(return_data.size) + 32
                                                                                                                                        s = 0
                                                                                                                                        while s < _1491:
                                                                                                                                            mem[u] = mem[t]
                                                                                                                                            t = t + 32
                                                                                                                                            u = u + 32
                                                                                                                                            s = s + 1
                                                                                                                                            continue 
                                                                                                                                        if 1 >= _1491:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if (idx + 10^16 / 2) + 10^16 >= mem[_1483 + ceil32(return_data.size) + 64]:
                                                                                                                                                if 1 >= _1491:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if mem[_1483 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if _1235 + 10^16 >= _740:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _740 <= mem[_1483 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                if _1235 + 10^16 >= _740:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if _740 >= mem[_1483 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                                        continue 
                                                                                                                                                                    else:
                                                                                                                                                                        if mem[_1483 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                                            continue 
                                                                                                                                                                        else:
                                                                                                                                                                            if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                                idx = idx
                                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                return (idx + 10^16 / 2)
                                                                                                                                            else:
                                                                                                                                                if _1235 + 10^16 >= _740:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _740 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                        if _1235 + 10^16 >= _740:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _740 - (idx + 10^16 / 2) >= 0:
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
                                                                                                    revert with 0, 17
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
                                                                                                        _1332 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1336 = mem[_1332]
                                                                                                        require mem[_1332] <= test266151307()
                                                                                                        require _1332 + mem[_1332] + 31 < _1332 + return_data.size
                                                                                                        _1340 = mem[_1332 + mem[_1332]]
                                                                                                        if mem[_1332 + mem[_1332]] > test266151307():
                                                                                                            revert with 0, 65
                                                                                                        else:
                                                                                                            if _1332 + ceil32(return_data.size) + ceil32(32 * mem[_1332 + mem[_1332]]) + 1 > test266151307() or ceil32(32 * mem[_1332 + mem[_1332]]) + 1 < 0:
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                mem[64] = _1332 + ceil32(return_data.size) + ceil32(32 * mem[_1332 + mem[_1332]]) + 1
                                                                                                                mem[_1332 + ceil32(return_data.size)] = _1340
                                                                                                                require return_data.size >= _1336 + (32 * _1340) + 32
                                                                                                                t = _1332 + _1336 + 32
                                                                                                                u = _1332 + ceil32(return_data.size) + 32
                                                                                                                s = 0
                                                                                                                while s < _1340:
                                                                                                                    mem[u] = mem[t]
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                if 1 >= _1340:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    _1423 = mem[_1332 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1423
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
                                                                                                                           args _1423, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1484 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1488 = mem[_1484]
                                                                                                                        require mem[_1484] <= test266151307()
                                                                                                                        require _1484 + mem[_1484] + 31 < _1484 + return_data.size
                                                                                                                        _1492 = mem[_1484 + mem[_1484]]
                                                                                                                        if mem[_1484 + mem[_1484]] > test266151307():
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            if _1484 + ceil32(return_data.size) + ceil32(32 * mem[_1484 + mem[_1484]]) + 1 > test266151307() or ceil32(32 * mem[_1484 + mem[_1484]]) + 1 < 0:
                                                                                                                                revert with 0, 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1484 + ceil32(return_data.size) + ceil32(32 * mem[_1484 + mem[_1484]]) + 1
                                                                                                                                mem[_1484 + ceil32(return_data.size)] = _1492
                                                                                                                                require return_data.size >= _1488 + (32 * _1492) + 32
                                                                                                                                t = _1484 + _1488 + 32
                                                                                                                                u = _1484 + ceil32(return_data.size) + 32
                                                                                                                                s = 0
                                                                                                                                while s < _1492:
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    s = s + 1
                                                                                                                                    continue 
                                                                                                                                if 1 >= _1492:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 >= mem[_1484 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _1492:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if mem[_1484 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= _740 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _740 <= mem[_1484 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                        if 0 >= _740 - (idx + 10^16 / 2):
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _740 >= mem[_1484 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_1484 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx
                                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        return (idx + 10^16 / 2)
                                                                                                                                    else:
                                                                                                                                        if 0 >= _740 - (idx + 10^16 / 2):
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _740 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                if 0 >= _740 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _740 - (idx + 10^16 / 2) >= 0:
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
                                                    revert with 0, 17
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
                                                        _874 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _876 = mem[_874]
                                                        require mem[_874] <= test266151307()
                                                        require _874 + mem[_874] + 31 < _874 + return_data.size
                                                        _878 = mem[_874 + mem[_874]]
                                                        if mem[_874 + mem[_874]] > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            if _874 + ceil32(return_data.size) + ceil32(32 * mem[_874 + mem[_874]]) + 1 > test266151307() or ceil32(32 * mem[_874 + mem[_874]]) + 1 < 0:
                                                                revert with 0, 65
                                                            else:
                                                                mem[64] = _874 + ceil32(return_data.size) + ceil32(32 * mem[_874 + mem[_874]]) + 1
                                                                mem[_874 + ceil32(return_data.size)] = _878
                                                                require return_data.size >= _876 + (32 * _878) + 32
                                                                t = _874 + _876 + 32
                                                                u = _874 + ceil32(return_data.size) + 32
                                                                s = 0
                                                                while s < _878:
                                                                    mem[u] = mem[t]
                                                                    t = t + 32
                                                                    u = u + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 1 >= _878:
                                                                    revert with 0, 50
                                                                else:
                                                                    _1005 = mem[_874 + ceil32(return_data.size) + 64]
                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _1005
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
                                                                           args _1005, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1120 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _1122 = mem[_1120]
                                                                        require mem[_1120] <= test266151307()
                                                                        require _1120 + mem[_1120] + 31 < _1120 + return_data.size
                                                                        _1124 = mem[_1120 + mem[_1120]]
                                                                        if mem[_1120 + mem[_1120]] > test266151307():
                                                                            revert with 0, 65
                                                                        else:
                                                                            if _1120 + ceil32(return_data.size) + ceil32(32 * mem[_1120 + mem[_1120]]) + 1 > test266151307() or ceil32(32 * mem[_1120 + mem[_1120]]) + 1 < 0:
                                                                                revert with 0, 65
                                                                            else:
                                                                                mem[64] = _1120 + ceil32(return_data.size) + ceil32(32 * mem[_1120 + mem[_1120]]) + 1
                                                                                mem[_1120 + ceil32(return_data.size)] = _1124
                                                                                require return_data.size >= _1122 + (32 * _1124) + 32
                                                                                t = _1120 + _1122 + 32
                                                                                u = _1120 + ceil32(return_data.size) + 32
                                                                                s = 0
                                                                                while s < _1124:
                                                                                    mem[u] = mem[t]
                                                                                    t = t + 32
                                                                                    u = u + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                if 1 >= _1124:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    if (idx + 10^16 / 2) - 10^16 >= mem[_1120 + ceil32(return_data.size) + 64]:
                                                                                        if 1 >= _1124:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            _1236 = mem[_1120 + ceil32(return_data.size) + 64]
                                                                                            if mem[_1120 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 0, 17
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
                                                                                                        _1333 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1337 = mem[_1333]
                                                                                                        require mem[_1333] <= test266151307()
                                                                                                        require _1333 + mem[_1333] + 31 < _1333 + return_data.size
                                                                                                        _1341 = mem[_1333 + mem[_1333]]
                                                                                                        if mem[_1333 + mem[_1333]] > test266151307():
                                                                                                            revert with 0, 65
                                                                                                        else:
                                                                                                            if _1333 + ceil32(return_data.size) + ceil32(32 * mem[_1333 + mem[_1333]]) + 1 > test266151307() or ceil32(32 * mem[_1333 + mem[_1333]]) + 1 < 0:
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                mem[64] = _1333 + ceil32(return_data.size) + ceil32(32 * mem[_1333 + mem[_1333]]) + 1
                                                                                                                mem[_1333 + ceil32(return_data.size)] = _1341
                                                                                                                require return_data.size >= _1337 + (32 * _1341) + 32
                                                                                                                t = _1333 + _1337 + 32
                                                                                                                u = _1333 + ceil32(return_data.size) + 32
                                                                                                                s = 0
                                                                                                                while s < _1341:
                                                                                                                    mem[u] = mem[t]
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                if 1 >= _1341:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    _1425 = mem[_1333 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1425
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
                                                                                                                           args _1425, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1485 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1489 = mem[_1485]
                                                                                                                        require mem[_1485] <= test266151307()
                                                                                                                        require _1485 + mem[_1485] + 31 < _1485 + return_data.size
                                                                                                                        _1493 = mem[_1485 + mem[_1485]]
                                                                                                                        if mem[_1485 + mem[_1485]] > test266151307():
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            if _1485 + ceil32(return_data.size) + ceil32(32 * mem[_1485 + mem[_1485]]) + 1 > test266151307() or ceil32(32 * mem[_1485 + mem[_1485]]) + 1 < 0:
                                                                                                                                revert with 0, 65
                                                                                                                            else:
                                                                                                                                mem[64] = _1485 + ceil32(return_data.size) + ceil32(32 * mem[_1485 + mem[_1485]]) + 1
                                                                                                                                mem[_1485 + ceil32(return_data.size)] = _1493
                                                                                                                                require return_data.size >= _1489 + (32 * _1493) + 32
                                                                                                                                t = _1485 + _1489 + 32
                                                                                                                                u = _1485 + ceil32(return_data.size) + 32
                                                                                                                                s = 0
                                                                                                                                while s < _1493:
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    s = s + 1
                                                                                                                                    continue 
                                                                                                                                if 1 >= _1493:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 >= mem[_1485 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _1493:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if mem[_1485 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if _1236 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if 0 <= mem[_1485 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                        if _1236 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= mem[_1485 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_1485 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx
                                                                                                                                                                        continue 
                                                                                                                                                    else:
                                                                                                                                                        return (idx + 10^16 / 2)
                                                                                                                                    else:
                                                                                                                                        if _1236 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _1236 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                    else:
                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                            revert with 0, 17
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
                                                                                                _1334 = mem[64]
                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _1338 = mem[_1334]
                                                                                                require mem[_1334] <= test266151307()
                                                                                                require _1334 + mem[_1334] + 31 < _1334 + return_data.size
                                                                                                _1342 = mem[_1334 + mem[_1334]]
                                                                                                if mem[_1334 + mem[_1334]] > test266151307():
                                                                                                    revert with 0, 65
                                                                                                else:
                                                                                                    if _1334 + ceil32(return_data.size) + ceil32(32 * mem[_1334 + mem[_1334]]) + 1 > test266151307() or ceil32(32 * mem[_1334 + mem[_1334]]) + 1 < 0:
                                                                                                        revert with 0, 65
                                                                                                    else:
                                                                                                        mem[64] = _1334 + ceil32(return_data.size) + ceil32(32 * mem[_1334 + mem[_1334]]) + 1
                                                                                                        mem[_1334 + ceil32(return_data.size)] = _1342
                                                                                                        require return_data.size >= _1338 + (32 * _1342) + 32
                                                                                                        t = _1334 + _1338 + 32
                                                                                                        u = _1334 + ceil32(return_data.size) + 32
                                                                                                        s = 0
                                                                                                        while s < _1342:
                                                                                                            mem[u] = mem[t]
                                                                                                            t = t + 32
                                                                                                            u = u + 32
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        if 1 >= _1342:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            _1427 = mem[_1334 + ceil32(return_data.size) + 64]
                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = _1427
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
                                                                                                                   args _1427, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1486 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1490 = mem[_1486]
                                                                                                                require mem[_1486] <= test266151307()
                                                                                                                require _1486 + mem[_1486] + 31 < _1486 + return_data.size
                                                                                                                _1494 = mem[_1486 + mem[_1486]]
                                                                                                                if mem[_1486 + mem[_1486]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _1486 + ceil32(return_data.size) + ceil32(32 * mem[_1486 + mem[_1486]]) + 1 > test266151307() or ceil32(32 * mem[_1486 + mem[_1486]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _1486 + ceil32(return_data.size) + ceil32(32 * mem[_1486 + mem[_1486]]) + 1
                                                                                                                        mem[_1486 + ceil32(return_data.size)] = _1494
                                                                                                                        require return_data.size >= _1490 + (32 * _1494) + 32
                                                                                                                        t = _1486 + _1490 + 32
                                                                                                                        u = _1486 + ceil32(return_data.size) + 32
                                                                                                                        s = 0
                                                                                                                        while s < _1494:
                                                                                                                            mem[u] = mem[t]
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                        if 1 >= _1494:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if (idx + 10^16 / 2) + 10^16 >= mem[_1486 + ceil32(return_data.size) + 64]:
                                                                                                                                if 1 >= _1494:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if mem[_1486 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                        revert with 0, 17
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
        revert with 0, 50
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
        if 10^16 > !idx:
            revert with 0, 17
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
                _428 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _430 = mem[_428]
                require mem[_428] <= test266151307()
                require _428 + mem[_428] + 31 < _428 + return_data.size
                _432 = mem[_428 + mem[_428]]
                if mem[_428 + mem[_428]] > test266151307():
                    revert with 0, 65
                else:
                    if _428 + ceil32(return_data.size) + ceil32(32 * mem[_428 + mem[_428]]) + 1 > test266151307() or ceil32(32 * mem[_428 + mem[_428]]) + 1 < 0:
                        revert with 0, 65
                    else:
                        mem[64] = _428 + ceil32(return_data.size) + ceil32(32 * mem[_428 + mem[_428]]) + 1
                        mem[_428 + ceil32(return_data.size)] = _432
                        require return_data.size >= _430 + (32 * _432) + 32
                        t = _428 + _430 + 32
                        u = _428 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _432:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if 1 >= _432:
                            revert with 0, 50
                        else:
                            _710 = mem[_428 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _710
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
                                   args _710, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
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
                                    revert with 0, 65
                                else:
                                    if _982 + ceil32(return_data.size) + ceil32(32 * mem[_982 + mem[_982]]) + 1 > test266151307() or ceil32(32 * mem[_982 + mem[_982]]) + 1 < 0:
                                        revert with 0, 65
                                    else:
                                        mem[64] = _982 + ceil32(return_data.size) + ceil32(32 * mem[_982 + mem[_982]]) + 1
                                        mem[_982 + ceil32(return_data.size)] = _986
                                        require return_data.size >= _984 + (32 * _986) + 32
                                        t = _982 + _984 + 32
                                        u = _982 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _986:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 1 >= _986:
                                            revert with 0, 50
                                        else:
                                            if idx + 10^16 / 2 >= mem[_982 + ceil32(return_data.size) + 64]:
                                                if 1 >= _986:
                                                    revert with 0, 50
                                                else:
                                                    _1244 = mem[_982 + ceil32(return_data.size) + 64]
                                                    if mem[_982 + ceil32(return_data.size) + 64] < idx + 10^16 / 2:
                                                        revert with 0, 17
                                                    else:
                                                        if idx + 10^16 / 2 < 10^16:
                                                            revert with 0, 17
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
                                                                _1487 = mem[64]
                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1489 = mem[_1487]
                                                                require mem[_1487] <= test266151307()
                                                                require _1487 + mem[_1487] + 31 < _1487 + return_data.size
                                                                _1491 = mem[_1487 + mem[_1487]]
                                                                if mem[_1487 + mem[_1487]] > test266151307():
                                                                    revert with 0, 65
                                                                else:
                                                                    if _1487 + ceil32(return_data.size) + ceil32(32 * mem[_1487 + mem[_1487]]) + 1 > test266151307() or ceil32(32 * mem[_1487 + mem[_1487]]) + 1 < 0:
                                                                        revert with 0, 65
                                                                    else:
                                                                        mem[64] = _1487 + ceil32(return_data.size) + ceil32(32 * mem[_1487 + mem[_1487]]) + 1
                                                                        mem[_1487 + ceil32(return_data.size)] = _1491
                                                                        require return_data.size >= _1489 + (32 * _1491) + 32
                                                                        t = _1487 + _1489 + 32
                                                                        u = _1487 + ceil32(return_data.size) + 32
                                                                        s = 0
                                                                        while s < _1491:
                                                                            mem[u] = mem[t]
                                                                            t = t + 32
                                                                            u = u + 32
                                                                            s = s + 1
                                                                            continue 
                                                                        if 1 >= _1491:
                                                                            revert with 0, 50
                                                                        else:
                                                                            _1727 = mem[_1487 + ceil32(return_data.size) + 64]
                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _1727
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
                                                                                   args _1727, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1953 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _1955 = mem[_1953]
                                                                                require mem[_1953] <= test266151307()
                                                                                require _1953 + mem[_1953] + 31 < _1953 + return_data.size
                                                                                _1957 = mem[_1953 + mem[_1953]]
                                                                                if mem[_1953 + mem[_1953]] > test266151307():
                                                                                    revert with 0, 65
                                                                                else:
                                                                                    if _1953 + ceil32(return_data.size) + ceil32(32 * mem[_1953 + mem[_1953]]) + 1 > test266151307() or ceil32(32 * mem[_1953 + mem[_1953]]) + 1 < 0:
                                                                                        revert with 0, 65
                                                                                    else:
                                                                                        mem[64] = _1953 + ceil32(return_data.size) + ceil32(32 * mem[_1953 + mem[_1953]]) + 1
                                                                                        mem[_1953 + ceil32(return_data.size)] = _1957
                                                                                        require return_data.size >= _1955 + (32 * _1957) + 32
                                                                                        t = _1953 + _1955 + 32
                                                                                        u = _1953 + ceil32(return_data.size) + 32
                                                                                        s = 0
                                                                                        while s < _1957:
                                                                                            mem[u] = mem[t]
                                                                                            t = t + 32
                                                                                            u = u + 32
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        if 1 >= _1957:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            if (idx + 10^16 / 2) - 10^16 >= mem[_1953 + ceil32(return_data.size) + 64]:
                                                                                                if 1 >= _1957:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    _2179 = mem[_1953 + ceil32(return_data.size) + 64]
                                                                                                    if mem[_1953 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                                            revert with 0, 17
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
                                                                                                                _2385 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _2389 = mem[_2385]
                                                                                                                require mem[_2385] <= test266151307()
                                                                                                                require _2385 + mem[_2385] + 31 < _2385 + return_data.size
                                                                                                                _2393 = mem[_2385 + mem[_2385]]
                                                                                                                if mem[_2385 + mem[_2385]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _2385 + ceil32(return_data.size) + ceil32(32 * mem[_2385 + mem[_2385]]) + 1 > test266151307() or ceil32(32 * mem[_2385 + mem[_2385]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _2385 + ceil32(return_data.size) + ceil32(32 * mem[_2385 + mem[_2385]]) + 1
                                                                                                                        mem[_2385 + ceil32(return_data.size)] = _2393
                                                                                                                        require return_data.size >= _2389 + (32 * _2393) + 32
                                                                                                                        t = _2385 + _2389 + 32
                                                                                                                        u = _2385 + ceil32(return_data.size) + 32
                                                                                                                        s = 0
                                                                                                                        while s < _2393:
                                                                                                                            mem[u] = mem[t]
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                        if 1 >= _2393:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            _2585 = mem[_2385 + ceil32(return_data.size) + 64]
                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _2585
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
                                                                                                                                   args _2585, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2757 = mem[64]
                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _2761 = mem[_2757]
                                                                                                                                require mem[_2757] <= test266151307()
                                                                                                                                require _2757 + mem[_2757] + 31 < _2757 + return_data.size
                                                                                                                                _2765 = mem[_2757 + mem[_2757]]
                                                                                                                                if mem[_2757 + mem[_2757]] > test266151307():
                                                                                                                                    revert with 0, 65
                                                                                                                                else:
                                                                                                                                    if _2757 + ceil32(return_data.size) + ceil32(32 * mem[_2757 + mem[_2757]]) + 1 > test266151307() or ceil32(32 * mem[_2757 + mem[_2757]]) + 1 < 0:
                                                                                                                                        revert with 0, 65
                                                                                                                                    else:
                                                                                                                                        mem[64] = _2757 + ceil32(return_data.size) + ceil32(32 * mem[_2757 + mem[_2757]]) + 1
                                                                                                                                        mem[_2757 + ceil32(return_data.size)] = _2765
                                                                                                                                        require return_data.size >= _2761 + (32 * _2765) + 32
                                                                                                                                        t = _2757 + _2761 + 32
                                                                                                                                        u = _2757 + ceil32(return_data.size) + 32
                                                                                                                                        s = 0
                                                                                                                                        while s < _2765:
                                                                                                                                            mem[u] = mem[t]
                                                                                                                                            t = t + 32
                                                                                                                                            u = u + 32
                                                                                                                                            s = s + 1
                                                                                                                                            continue 
                                                                                                                                        if 1 >= _2765:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if (idx + 10^16 / 2) + 10^16 >= mem[_2757 + ceil32(return_data.size) + 64]:
                                                                                                                                                if 1 >= _2765:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if mem[_2757 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if _2179 + 10^16 >= _1244:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _1244 <= mem[_2757 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                if _2179 + 10^16 >= _1244:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if _1244 >= mem[_2757 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                        s = idx + 10^16 / 2
                                                                                                                                                                        idx = idx + 10^16 / 2
                                                                                                                                                                        continue 
                                                                                                                                                                    else:
                                                                                                                                                                        if mem[_2757 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                                            continue 
                                                                                                                                                                        else:
                                                                                                                                                                            if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                                revert with 0, 17
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
                                                                                                                                                                    _3058 = mem[64]
                                                                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    _3063 = mem[_3058]
                                                                                                                                                                    require mem[_3058] <= test266151307()
                                                                                                                                                                    require _3058 + mem[_3058] + 31 < _3058 + return_data.size
                                                                                                                                                                    _3068 = mem[_3058 + mem[_3058]]
                                                                                                                                                                    if mem[_3058 + mem[_3058]] > test266151307():
                                                                                                                                                                        revert with 0, 65
                                                                                                                                                                    else:
                                                                                                                                                                        if _3058 + ceil32(return_data.size) + ceil32(32 * mem[_3058 + mem[_3058]]) + 1 > test266151307() or ceil32(32 * mem[_3058 + mem[_3058]]) + 1 < 0:
                                                                                                                                                                            revert with 0, 65
                                                                                                                                                                        else:
                                                                                                                                                                            mem[64] = _3058 + ceil32(return_data.size) + ceil32(32 * mem[_3058 + mem[_3058]]) + 1
                                                                                                                                                                            mem[_3058 + ceil32(return_data.size)] = _3068
                                                                                                                                                                            require return_data.size >= _3063 + (32 * _3068) + 32
                                                                                                                                                                            t = _3058 + _3063 + 32
                                                                                                                                                                            u = _3058 + ceil32(return_data.size) + 32
                                                                                                                                                                            s = 0
                                                                                                                                                                            while s < _3068:
                                                                                                                                                                                mem[u] = mem[t]
                                                                                                                                                                                t = t + 32
                                                                                                                                                                                u = u + 32
                                                                                                                                                                                s = s + 1
                                                                                                                                                                                continue 
                                                                                                                                                                            if 1 >= ('cd', 68).length:
                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                            else:
                                                                                                                                                                                require ('cd', 68)[1] == address(('cd', 68)[1])
                                                                                                                                                                                if 1 >= _3068:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    _3178 = mem[_3058 + ceil32(return_data.size) + 64]
                                                                                                                                                                                    mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                                    mem[mem[64] + 36] = _3178
                                                                                                                                                                                    require ext_code.size(address(('cd', 68)[1]))
                                                                                                                                                                                    call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                        args address(cd[36]), _3178
                                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                    else:
                                                                                                                                                                                        _3193 = mem[64]
                                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                        require mem[_3193] == bool(mem[_3193])
                                                                                                                                                                                        require mem[_3193]
                                                                                                                                                                                        if 1 >= _3068:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            _3208 = mem[_3058 + ceil32(return_data.size) + 64]
                                                                                                                                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                            mem[mem[64] + 4] = _3208
                                                                                                                                                                                            mem[mem[64] + 36] = 0
                                                                                                                                                                                            mem[mem[64] + 68] = 160
                                                                                                                                                                                            mem[mem[64] + 164] = ('cd', 100).length
                                                                                                                                                                                            s = 0
                                                                                                                                                                                            t = cd[100] + 36
                                                                                                                                                                                            u = mem[64] + 196
                                                                                                                                                                                            while s < ('cd', 100).length:
                                                                                                                                                                                                require cd[t] == address(cd[t])
                                                                                                                                                                                                mem[u] = address(cd[t])
                                                                                                                                                                                                s = s + 1
                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                u = u + 32
                                                                                                                                                                                                continue 
                                                                                                                                                                                            mem[mem[64] + 100] = this.address
                                                                                                                                                                                            mem[mem[64] + 132] = 1711275212
                                                                                                                                                                                            require ext_code.size(address(cd[36]))
                                                                                                                                                                                            call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                args _3208, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                            else:
                                                                                                                                                                                                _3263 = mem[64]
                                                                                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                _3268 = mem[_3263]
                                                                                                                                                                                                require mem[_3263] <= test266151307()
                                                                                                                                                                                                require _3263 + mem[_3263] + 31 < _3263 + return_data.size
                                                                                                                                                                                                _3273 = mem[_3263 + mem[_3263]]
                                                                                                                                                                                                if mem[_3263 + mem[_3263]] > test266151307():
                                                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if _3263 + ceil32(return_data.size) + ceil32(32 * mem[_3263 + mem[_3263]]) + 1 > test266151307() or ceil32(32 * mem[_3263 + mem[_3263]]) + 1 < 0:
                                                                                                                                                                                                        revert with 0, 65
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[64] = _3263 + ceil32(return_data.size) + ceil32(32 * mem[_3263 + mem[_3263]]) + 1
                                                                                                                                                                                                        mem[_3263 + ceil32(return_data.size)] = _3273
                                                                                                                                                                                                        require return_data.size >= _3268 + (32 * _3273) + 32
                                                                                                                                                                                                        t = _3263 + _3268 + 32
                                                                                                                                                                                                        u = _3263 + ceil32(return_data.size) + 32
                                                                                                                                                                                                        s = 0
                                                                                                                                                                                                        while s < _3273:
                                                                                                                                                                                                            mem[u] = mem[t]
                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                            u = u + 32
                                                                                                                                                                                                            s = s + 1
                                                                                                                                                                                                            continue 
                                                                                                                                                                                                        if 1 >= _3273:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            require mem[_3263 + ceil32(return_data.size) + 64] > idx + 10^16 / 2
                                                                                                                                            else:
                                                                                                                                                if _2179 + 10^16 >= _1244:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _1244 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                        if _2179 + 10^16 >= _1244:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _1244 - (idx + 10^16 / 2) >= 0:
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
                                                                                                                                                            _3059 = mem[64]
                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            _3064 = mem[_3059]
                                                                                                                                                            require mem[_3059] <= test266151307()
                                                                                                                                                            require _3059 + mem[_3059] + 31 < _3059 + return_data.size
                                                                                                                                                            _3069 = mem[_3059 + mem[_3059]]
                                                                                                                                                            if mem[_3059 + mem[_3059]] > test266151307():
                                                                                                                                                                revert with 0, 65
                                                                                                                                                            else:
                                                                                                                                                                if _3059 + ceil32(return_data.size) + ceil32(32 * mem[_3059 + mem[_3059]]) + 1 > test266151307() or ceil32(32 * mem[_3059 + mem[_3059]]) + 1 < 0:
                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                else:
                                                                                                                                                                    mem[64] = _3059 + ceil32(return_data.size) + ceil32(32 * mem[_3059 + mem[_3059]]) + 1
                                                                                                                                                                    mem[_3059 + ceil32(return_data.size)] = _3069
                                                                                                                                                                    require return_data.size >= _3064 + (32 * _3069) + 32
                                                                                                                                                                    t = _3059 + _3064 + 32
                                                                                                                                                                    u = _3059 + ceil32(return_data.size) + 32
                                                                                                                                                                    s = 0
                                                                                                                                                                    while s < _3069:
                                                                                                                                                                        mem[u] = mem[t]
                                                                                                                                                                        t = t + 32
                                                                                                                                                                        u = u + 32
                                                                                                                                                                        s = s + 1
                                                                                                                                                                        continue 
                                                                                                                                                                    if 1 >= ('cd', 68).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ('cd', 68)[1] == address(('cd', 68)[1])
                                                                                                                                                                        if 1 >= _3069:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            _3180 = mem[_3059 + ceil32(return_data.size) + 64]
                                                                                                                                                                            mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                            mem[mem[64] + 36] = _3180
                                                                                                                                                                            require ext_code.size(address(('cd', 68)[1]))
                                                                                                                                                                            call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                args address(cd[36]), _3180
                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _3194 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                require mem[_3194] == bool(mem[_3194])
                                                                                                                                                                                require mem[_3194]
                                                                                                                                                                                if 1 >= _3069:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    _3210 = mem[_3059 + ceil32(return_data.size) + 64]
                                                                                                                                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                    mem[mem[64] + 4] = _3210
                                                                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                                                                    mem[mem[64] + 164] = ('cd', 100).length
                                                                                                                                                                                    s = 0
                                                                                                                                                                                    t = cd[100] + 36
                                                                                                                                                                                    u = mem[64] + 196
                                                                                                                                                                                    while s < ('cd', 100).length:
                                                                                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                                                                                        mem[u] = address(cd[t])
                                                                                                                                                                                        s = s + 1
                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                        u = u + 32
                                                                                                                                                                                        continue 
                                                                                                                                                                                    mem[mem[64] + 100] = this.address
                                                                                                                                                                                    mem[mem[64] + 132] = 1711275212
                                                                                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                                                                                    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                        args _3210, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                    else:
                                                                                                                                                                                        _3264 = mem[64]
                                                                                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                        _3269 = mem[_3264]
                                                                                                                                                                                        require mem[_3264] <= test266151307()
                                                                                                                                                                                        require _3264 + mem[_3264] + 31 < _3264 + return_data.size
                                                                                                                                                                                        _3274 = mem[_3264 + mem[_3264]]
                                                                                                                                                                                        if mem[_3264 + mem[_3264]] > test266151307():
                                                                                                                                                                                            revert with 0, 65
                                                                                                                                                                                        else:
                                                                                                                                                                                            if _3264 + ceil32(return_data.size) + ceil32(32 * mem[_3264 + mem[_3264]]) + 1 > test266151307() or ceil32(32 * mem[_3264 + mem[_3264]]) + 1 < 0:
                                                                                                                                                                                                revert with 0, 65
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[64] = _3264 + ceil32(return_data.size) + ceil32(32 * mem[_3264 + mem[_3264]]) + 1
                                                                                                                                                                                                mem[_3264 + ceil32(return_data.size)] = _3274
                                                                                                                                                                                                require return_data.size >= _3269 + (32 * _3274) + 32
                                                                                                                                                                                                t = _3264 + _3269 + 32
                                                                                                                                                                                                u = _3264 + ceil32(return_data.size) + 32
                                                                                                                                                                                                s = 0
                                                                                                                                                                                                while s < _3274:
                                                                                                                                                                                                    mem[u] = mem[t]
                                                                                                                                                                                                    t = t + 32
                                                                                                                                                                                                    u = u + 32
                                                                                                                                                                                                    s = s + 1
                                                                                                                                                                                                    continue 
                                                                                                                                                                                                if 1 >= _3274:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    require mem[_3264 + ceil32(return_data.size) + 64] > idx + 10^16 / 2
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 0, 17
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
                                                                                                        _2386 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _2390 = mem[_2386]
                                                                                                        require mem[_2386] <= test266151307()
                                                                                                        require _2386 + mem[_2386] + 31 < _2386 + return_data.size
                                                                                                        _2394 = mem[_2386 + mem[_2386]]
                                                                                                        if mem[_2386 + mem[_2386]] > test266151307():
                                                                                                            revert with 0, 65
                                                                                                        else:
                                                                                                            if _2386 + ceil32(return_data.size) + ceil32(32 * mem[_2386 + mem[_2386]]) + 1 > test266151307() or ceil32(32 * mem[_2386 + mem[_2386]]) + 1 < 0:
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                mem[64] = _2386 + ceil32(return_data.size) + ceil32(32 * mem[_2386 + mem[_2386]]) + 1
                                                                                                                mem[_2386 + ceil32(return_data.size)] = _2394
                                                                                                                require return_data.size >= _2390 + (32 * _2394) + 32
                                                                                                                t = _2386 + _2390 + 32
                                                                                                                u = _2386 + ceil32(return_data.size) + 32
                                                                                                                s = 0
                                                                                                                while s < _2394:
                                                                                                                    mem[u] = mem[t]
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                if 1 >= _2394:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    _2587 = mem[_2386 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _2587
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
                                                                                                                           args _2587, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2758 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _2762 = mem[_2758]
                                                                                                                        require mem[_2758] <= test266151307()
                                                                                                                        require _2758 + mem[_2758] + 31 < _2758 + return_data.size
                                                                                                                        _2766 = mem[_2758 + mem[_2758]]
                                                                                                                        if mem[_2758 + mem[_2758]] > test266151307():
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            if _2758 + ceil32(return_data.size) + ceil32(32 * mem[_2758 + mem[_2758]]) + 1 > test266151307() or ceil32(32 * mem[_2758 + mem[_2758]]) + 1 < 0:
                                                                                                                                revert with 0, 65
                                                                                                                            else:
                                                                                                                                mem[64] = _2758 + ceil32(return_data.size) + ceil32(32 * mem[_2758 + mem[_2758]]) + 1
                                                                                                                                mem[_2758 + ceil32(return_data.size)] = _2766
                                                                                                                                require return_data.size >= _2762 + (32 * _2766) + 32
                                                                                                                                t = _2758 + _2762 + 32
                                                                                                                                u = _2758 + ceil32(return_data.size) + 32
                                                                                                                                s = 0
                                                                                                                                while s < _2766:
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    s = s + 1
                                                                                                                                    continue 
                                                                                                                                if 1 >= _2766:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 >= mem[_2758 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _2766:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if mem[_2758 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= _1244 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _1244 <= mem[_2758 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                        if 0 >= _1244 - (idx + 10^16 / 2):
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if _1244 >= mem[_2758 + ceil32(return_data.size) + 64] - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_2758 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 0, 17
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
                                                                                                                                                            _3060 = mem[64]
                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            _3065 = mem[_3060]
                                                                                                                                                            require mem[_3060] <= test266151307()
                                                                                                                                                            require _3060 + mem[_3060] + 31 < _3060 + return_data.size
                                                                                                                                                            _3070 = mem[_3060 + mem[_3060]]
                                                                                                                                                            if mem[_3060 + mem[_3060]] > test266151307():
                                                                                                                                                                revert with 0, 65
                                                                                                                                                            else:
                                                                                                                                                                if _3060 + ceil32(return_data.size) + ceil32(32 * mem[_3060 + mem[_3060]]) + 1 > test266151307() or ceil32(32 * mem[_3060 + mem[_3060]]) + 1 < 0:
                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                else:
                                                                                                                                                                    mem[64] = _3060 + ceil32(return_data.size) + ceil32(32 * mem[_3060 + mem[_3060]]) + 1
                                                                                                                                                                    mem[_3060 + ceil32(return_data.size)] = _3070
                                                                                                                                                                    require return_data.size >= _3065 + (32 * _3070) + 32
                                                                                                                                                                    t = _3060 + _3065 + 32
                                                                                                                                                                    u = _3060 + ceil32(return_data.size) + 32
                                                                                                                                                                    s = 0
                                                                                                                                                                    while s < _3070:
                                                                                                                                                                        mem[u] = mem[t]
                                                                                                                                                                        t = t + 32
                                                                                                                                                                        u = u + 32
                                                                                                                                                                        s = s + 1
                                                                                                                                                                        continue 
                                                                                                                                                                    if 1 >= ('cd', 68).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ('cd', 68)[1] == address(('cd', 68)[1])
                                                                                                                                                                        if 1 >= _3070:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            _3182 = mem[_3060 + ceil32(return_data.size) + 64]
                                                                                                                                                                            mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                            mem[mem[64] + 36] = _3182
                                                                                                                                                                            require ext_code.size(address(('cd', 68)[1]))
                                                                                                                                                                            call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                args address(cd[36]), _3182
                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _3195 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                require mem[_3195] == bool(mem[_3195])
                                                                                                                                                                                require mem[_3195]
                                                                                                                                                                                if 1 >= _3070:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    _3212 = mem[_3060 + ceil32(return_data.size) + 64]
                                                                                                                                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                    mem[mem[64] + 4] = _3212
                                                                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                                                                    mem[mem[64] + 164] = ('cd', 100).length
                                                                                                                                                                                    s = 0
                                                                                                                                                                                    t = cd[100] + 36
                                                                                                                                                                                    u = mem[64] + 196
                                                                                                                                                                                    while s < ('cd', 100).length:
                                                                                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                                                                                        mem[u] = address(cd[t])
                                                                                                                                                                                        s = s + 1
                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                        u = u + 32
                                                                                                                                                                                        continue 
                                                                                                                                                                                    mem[mem[64] + 100] = this.address
                                                                                                                                                                                    mem[mem[64] + 132] = 1711275212
                                                                                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                                                                                    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                        args _3212, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                    else:
                                                                                                                                                                                        _3265 = mem[64]
                                                                                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                        _3270 = mem[_3265]
                                                                                                                                                                                        require mem[_3265] <= test266151307()
                                                                                                                                                                                        require _3265 + mem[_3265] + 31 < _3265 + return_data.size
                                                                                                                                                                                        _3275 = mem[_3265 + mem[_3265]]
                                                                                                                                                                                        if mem[_3265 + mem[_3265]] > test266151307():
                                                                                                                                                                                            revert with 0, 65
                                                                                                                                                                                        else:
                                                                                                                                                                                            if _3265 + ceil32(return_data.size) + ceil32(32 * mem[_3265 + mem[_3265]]) + 1 > test266151307() or ceil32(32 * mem[_3265 + mem[_3265]]) + 1 < 0:
                                                                                                                                                                                                revert with 0, 65
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[64] = _3265 + ceil32(return_data.size) + ceil32(32 * mem[_3265 + mem[_3265]]) + 1
                                                                                                                                                                                                mem[_3265 + ceil32(return_data.size)] = _3275
                                                                                                                                                                                                require return_data.size >= _3270 + (32 * _3275) + 32
                                                                                                                                                                                                t = _3265 + _3270 + 32
                                                                                                                                                                                                u = _3265 + ceil32(return_data.size) + 32
                                                                                                                                                                                                s = 0
                                                                                                                                                                                                while s < _3275:
                                                                                                                                                                                                    mem[u] = mem[t]
                                                                                                                                                                                                    t = t + 32
                                                                                                                                                                                                    u = u + 32
                                                                                                                                                                                                    s = s + 1
                                                                                                                                                                                                    continue 
                                                                                                                                                                                                if 1 >= _3275:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    require mem[_3265 + ceil32(return_data.size) + 64] > idx + 10^16 / 2
                                                                                                                                    else:
                                                                                                                                        if 0 >= _1244 - (idx + 10^16 / 2):
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _1244 - (idx + 10^16 / 2) <= 0:
                                                                                                                                                if 0 >= _1244 - (idx + 10^16 / 2):
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if _1244 - (idx + 10^16 / 2) >= 0:
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
                                                                                                                                                    _3061 = mem[64]
                                                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    _3066 = mem[_3061]
                                                                                                                                                    require mem[_3061] <= test266151307()
                                                                                                                                                    require _3061 + mem[_3061] + 31 < _3061 + return_data.size
                                                                                                                                                    _3071 = mem[_3061 + mem[_3061]]
                                                                                                                                                    if mem[_3061 + mem[_3061]] > test266151307():
                                                                                                                                                        revert with 0, 65
                                                                                                                                                    else:
                                                                                                                                                        if _3061 + ceil32(return_data.size) + ceil32(32 * mem[_3061 + mem[_3061]]) + 1 > test266151307() or ceil32(32 * mem[_3061 + mem[_3061]]) + 1 < 0:
                                                                                                                                                            revert with 0, 65
                                                                                                                                                        else:
                                                                                                                                                            mem[64] = _3061 + ceil32(return_data.size) + ceil32(32 * mem[_3061 + mem[_3061]]) + 1
                                                                                                                                                            mem[_3061 + ceil32(return_data.size)] = _3071
                                                                                                                                                            require return_data.size >= _3066 + (32 * _3071) + 32
                                                                                                                                                            t = _3061 + _3066 + 32
                                                                                                                                                            u = _3061 + ceil32(return_data.size) + 32
                                                                                                                                                            s = 0
                                                                                                                                                            while s < _3071:
                                                                                                                                                                mem[u] = mem[t]
                                                                                                                                                                t = t + 32
                                                                                                                                                                u = u + 32
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                                            if 1 >= ('cd', 68).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ('cd', 68)[1] == address(('cd', 68)[1])
                                                                                                                                                                if 1 >= _3071:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    _3184 = mem[_3061 + ceil32(return_data.size) + 64]
                                                                                                                                                                    mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                    mem[mem[64] + 36] = _3184
                                                                                                                                                                    require ext_code.size(address(('cd', 68)[1]))
                                                                                                                                                                    call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args address(cd[36]), _3184
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _3196 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_3196] == bool(mem[_3196])
                                                                                                                                                                        require mem[_3196]
                                                                                                                                                                        if 1 >= _3071:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            _3214 = mem[_3061 + ceil32(return_data.size) + 64]
                                                                                                                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                                            mem[mem[64] + 4] = _3214
                                                                                                                                                                            mem[mem[64] + 36] = 0
                                                                                                                                                                            mem[mem[64] + 68] = 160
                                                                                                                                                                            mem[mem[64] + 164] = ('cd', 100).length
                                                                                                                                                                            s = 0
                                                                                                                                                                            t = cd[100] + 36
                                                                                                                                                                            u = mem[64] + 196
                                                                                                                                                                            while s < ('cd', 100).length:
                                                                                                                                                                                require cd[t] == address(cd[t])
                                                                                                                                                                                mem[u] = address(cd[t])
                                                                                                                                                                                s = s + 1
                                                                                                                                                                                t = t + 32
                                                                                                                                                                                u = u + 32
                                                                                                                                                                                continue 
                                                                                                                                                                            mem[mem[64] + 100] = this.address
                                                                                                                                                                            mem[mem[64] + 132] = 1711275212
                                                                                                                                                                            require ext_code.size(address(cd[36]))
                                                                                                                                                                            call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                args _3214, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _3266 = mem[64]
                                                                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                _3271 = mem[_3266]
                                                                                                                                                                                require mem[_3266] <= test266151307()
                                                                                                                                                                                require _3266 + mem[_3266] + 31 < _3266 + return_data.size
                                                                                                                                                                                _3276 = mem[_3266 + mem[_3266]]
                                                                                                                                                                                if mem[_3266 + mem[_3266]] > test266151307():
                                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                                else:
                                                                                                                                                                                    if _3266 + ceil32(return_data.size) + ceil32(32 * mem[_3266 + mem[_3266]]) + 1 > test266151307() or ceil32(32 * mem[_3266 + mem[_3266]]) + 1 < 0:
                                                                                                                                                                                        revert with 0, 65
                                                                                                                                                                                    else:
                                                                                                                                                                                        mem[64] = _3266 + ceil32(return_data.size) + ceil32(32 * mem[_3266 + mem[_3266]]) + 1
                                                                                                                                                                                        mem[_3266 + ceil32(return_data.size)] = _3276
                                                                                                                                                                                        require return_data.size >= _3271 + (32 * _3276) + 32
                                                                                                                                                                                        t = _3266 + _3271 + 32
                                                                                                                                                                                        u = _3266 + ceil32(return_data.size) + 32
                                                                                                                                                                                        s = 0
                                                                                                                                                                                        while s < _3276:
                                                                                                                                                                                            mem[u] = mem[t]
                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                            u = u + 32
                                                                                                                                                                                            s = s + 1
                                                                                                                                                                                            continue 
                                                                                                                                                                                        if 1 >= _3276:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            require mem[_3266 + ceil32(return_data.size) + 64] > idx + 10^16 / 2
                                            else:
                                                if idx + 10^16 / 2 < 10^16:
                                                    revert with 0, 17
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
                                                        _1488 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1490 = mem[_1488]
                                                        require mem[_1488] <= test266151307()
                                                        require _1488 + mem[_1488] + 31 < _1488 + return_data.size
                                                        _1492 = mem[_1488 + mem[_1488]]
                                                        if mem[_1488 + mem[_1488]] > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            if _1488 + ceil32(return_data.size) + ceil32(32 * mem[_1488 + mem[_1488]]) + 1 > test266151307() or ceil32(32 * mem[_1488 + mem[_1488]]) + 1 < 0:
                                                                revert with 0, 65
                                                            else:
                                                                mem[64] = _1488 + ceil32(return_data.size) + ceil32(32 * mem[_1488 + mem[_1488]]) + 1
                                                                mem[_1488 + ceil32(return_data.size)] = _1492
                                                                require return_data.size >= _1490 + (32 * _1492) + 32
                                                                t = _1488 + _1490 + 32
                                                                u = _1488 + ceil32(return_data.size) + 32
                                                                s = 0
                                                                while s < _1492:
                                                                    mem[u] = mem[t]
                                                                    t = t + 32
                                                                    u = u + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 1 >= _1492:
                                                                    revert with 0, 50
                                                                else:
                                                                    _1729 = mem[_1488 + ceil32(return_data.size) + 64]
                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _1729
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
                                                                           args _1729, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1954 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _1956 = mem[_1954]
                                                                        require mem[_1954] <= test266151307()
                                                                        require _1954 + mem[_1954] + 31 < _1954 + return_data.size
                                                                        _1958 = mem[_1954 + mem[_1954]]
                                                                        if mem[_1954 + mem[_1954]] > test266151307():
                                                                            revert with 0, 65
                                                                        else:
                                                                            if _1954 + ceil32(return_data.size) + ceil32(32 * mem[_1954 + mem[_1954]]) + 1 > test266151307() or ceil32(32 * mem[_1954 + mem[_1954]]) + 1 < 0:
                                                                                revert with 0, 65
                                                                            else:
                                                                                mem[64] = _1954 + ceil32(return_data.size) + ceil32(32 * mem[_1954 + mem[_1954]]) + 1
                                                                                mem[_1954 + ceil32(return_data.size)] = _1958
                                                                                require return_data.size >= _1956 + (32 * _1958) + 32
                                                                                t = _1954 + _1956 + 32
                                                                                u = _1954 + ceil32(return_data.size) + 32
                                                                                s = 0
                                                                                while s < _1958:
                                                                                    mem[u] = mem[t]
                                                                                    t = t + 32
                                                                                    u = u + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                if 1 >= _1958:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    if (idx + 10^16 / 2) - 10^16 >= mem[_1954 + ceil32(return_data.size) + 64]:
                                                                                        if 1 >= _1958:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            _2180 = mem[_1954 + ceil32(return_data.size) + 64]
                                                                                            if mem[_1954 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) - 10^16:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if idx + 10^16 / 2 > -10000000000000001:
                                                                                                    revert with 0, 17
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
                                                                                                        _2387 = mem[64]
                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _2391 = mem[_2387]
                                                                                                        require mem[_2387] <= test266151307()
                                                                                                        require _2387 + mem[_2387] + 31 < _2387 + return_data.size
                                                                                                        _2395 = mem[_2387 + mem[_2387]]
                                                                                                        if mem[_2387 + mem[_2387]] > test266151307():
                                                                                                            revert with 0, 65
                                                                                                        else:
                                                                                                            if _2387 + ceil32(return_data.size) + ceil32(32 * mem[_2387 + mem[_2387]]) + 1 > test266151307() or ceil32(32 * mem[_2387 + mem[_2387]]) + 1 < 0:
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                mem[64] = _2387 + ceil32(return_data.size) + ceil32(32 * mem[_2387 + mem[_2387]]) + 1
                                                                                                                mem[_2387 + ceil32(return_data.size)] = _2395
                                                                                                                require return_data.size >= _2391 + (32 * _2395) + 32
                                                                                                                t = _2387 + _2391 + 32
                                                                                                                u = _2387 + ceil32(return_data.size) + 32
                                                                                                                s = 0
                                                                                                                while s < _2395:
                                                                                                                    mem[u] = mem[t]
                                                                                                                    t = t + 32
                                                                                                                    u = u + 32
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                if 1 >= _2395:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    _2589 = mem[_2387 + ceil32(return_data.size) + 64]
                                                                                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _2589
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
                                                                                                                           args _2589, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2759 = mem[64]
                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _2763 = mem[_2759]
                                                                                                                        require mem[_2759] <= test266151307()
                                                                                                                        require _2759 + mem[_2759] + 31 < _2759 + return_data.size
                                                                                                                        _2767 = mem[_2759 + mem[_2759]]
                                                                                                                        if mem[_2759 + mem[_2759]] > test266151307():
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            if _2759 + ceil32(return_data.size) + ceil32(32 * mem[_2759 + mem[_2759]]) + 1 > test266151307() or ceil32(32 * mem[_2759 + mem[_2759]]) + 1 < 0:
                                                                                                                                revert with 0, 65
                                                                                                                            else:
                                                                                                                                mem[64] = _2759 + ceil32(return_data.size) + ceil32(32 * mem[_2759 + mem[_2759]]) + 1
                                                                                                                                mem[_2759 + ceil32(return_data.size)] = _2767
                                                                                                                                require return_data.size >= _2763 + (32 * _2767) + 32
                                                                                                                                t = _2759 + _2763 + 32
                                                                                                                                u = _2759 + ceil32(return_data.size) + 32
                                                                                                                                s = 0
                                                                                                                                while s < _2767:
                                                                                                                                    mem[u] = mem[t]
                                                                                                                                    t = t + 32
                                                                                                                                    u = u + 32
                                                                                                                                    s = s + 1
                                                                                                                                    continue 
                                                                                                                                if 1 >= _2767:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if (idx + 10^16 / 2) + 10^16 >= mem[_2759 + ceil32(return_data.size) + 64]:
                                                                                                                                        if 1 >= _2767:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if mem[_2759 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if _2180 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    if 0 <= mem[_2759 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                        if _2180 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                                            continue 
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= mem[_2759 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16:
                                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                                continue 
                                                                                                                                                            else:
                                                                                                                                                                if mem[_2759 + ceil32(return_data.size) + 64] + -(idx + 10^16 / 2) - 10^16 <= 0:
                                                                                                                                                                    s = idx + 10^16 / 2
                                                                                                                                                                    idx = idx + 10^16 / 2
                                                                                                                                                                    continue 
                                                                                                                                                                else:
                                                                                                                                                                    if idx + 10^16 / 2 > -10000000000000001:
                                                                                                                                                                        revert with 0, 17
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
                                                                                                                                                            _3062 = mem[64]
                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            _3067 = mem[_3062]
                                                                                                                                                            require mem[_3062] <= test266151307()
                                                                                                                                                            require _3062 + mem[_3062] + 31 < _3062 + return_data.size
                                                                                                                                                            _3072 = mem[_3062 + mem[_3062]]
                                                                                                                                                            if mem[_3062 + mem[_3062]] > test266151307():
                                                                                                                                                                revert with 0, 65
                                                                                                                                                            else:
                                                                                                                                                                if _3062 + ceil32(return_data.size) + ceil32(32 * mem[_3062 + mem[_3062]]) + 1 > test266151307() or ceil32(32 * mem[_3062 + mem[_3062]]) + 1 < 0:
                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                else:
                                                                                                                                                                    mem[64] = _3062 + ceil32(return_data.size) + ceil32(32 * mem[_3062 + mem[_3062]]) + 1
                                                                                                                                                                    mem[_3062 + ceil32(return_data.size)] = _3072
                                                                                                                                                                    require return_data.size >= _3067 + (32 * _3072) + 32
                                                                                                                                                                    t = _3062 + _3067 + 32
                                                                                                                                                                    u = _3062 + ceil32(return_data.size) + 32
                                                                                                                                                                    s = 0
                                                                                                                                                                    while s < _3072:
                                                                                                                                                                        mem[u] = mem[t]
                                                                                                                                                                        t = t + 32
                                                                                                                                                                        u = u + 32
                                                                                                                                                                        s = s + 1
                                                                                                                                                                        continue 
                                                                                                                                                                    if 1 >= ('cd', 68).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ('cd', 68)[1] == address(('cd', 68)[1])
                                                                                                                                                                        if 1 >= _3072:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            _3186 = mem[_3062 + ceil32(return_data.size) + 64]
                                                                                                                                                                            mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                            mem[mem[64] + 36] = _3186
                                                                                                                                                                            require ext_code.size(address(('cd', 68)[1]))
                                                                                                                                                                            call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                args address(cd[36]), _3186
                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _3197 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                require mem[_3197] == bool(mem[_3197])
                                                                                                                                                                                require mem[_3197]
                                                                                                                                                                                if 1 >= _3072:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    _3216 = mem[_3062 + ceil32(return_data.size) + 64]
                                                                                                                                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                    mem[mem[64] + 4] = _3216
                                                                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                                                                    mem[mem[64] + 164] = ('cd', 100).length
                                                                                                                                                                                    s = 0
                                                                                                                                                                                    t = cd[100] + 36
                                                                                                                                                                                    u = mem[64] + 196
                                                                                                                                                                                    while s < ('cd', 100).length:
                                                                                                                                                                                        require cd[t] == address(cd[t])
                                                                                                                                                                                        mem[u] = address(cd[t])
                                                                                                                                                                                        s = s + 1
                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                        u = u + 32
                                                                                                                                                                                        continue 
                                                                                                                                                                                    mem[mem[64] + 100] = this.address
                                                                                                                                                                                    mem[mem[64] + 132] = 1711275212
                                                                                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                                                                                    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                        args _3216, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                    else:
                                                                                                                                                                                        _3267 = mem[64]
                                                                                                                                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                                        _3272 = mem[_3267]
                                                                                                                                                                                        require mem[_3267] <= test266151307()
                                                                                                                                                                                        require _3267 + mem[_3267] + 31 < _3267 + return_data.size
                                                                                                                                                                                        _3277 = mem[_3267 + mem[_3267]]
                                                                                                                                                                                        if mem[_3267 + mem[_3267]] > test266151307():
                                                                                                                                                                                            revert with 0, 65
                                                                                                                                                                                        else:
                                                                                                                                                                                            if _3267 + ceil32(return_data.size) + ceil32(32 * mem[_3267 + mem[_3267]]) + 1 > test266151307() or ceil32(32 * mem[_3267 + mem[_3267]]) + 1 < 0:
                                                                                                                                                                                                revert with 0, 65
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[64] = _3267 + ceil32(return_data.size) + ceil32(32 * mem[_3267 + mem[_3267]]) + 1
                                                                                                                                                                                                mem[_3267 + ceil32(return_data.size)] = _3277
                                                                                                                                                                                                require return_data.size >= _3272 + (32 * _3277) + 32
                                                                                                                                                                                                t = _3267 + _3272 + 32
                                                                                                                                                                                                u = _3267 + ceil32(return_data.size) + 32
                                                                                                                                                                                                s = 0
                                                                                                                                                                                                while s < _3277:
                                                                                                                                                                                                    mem[u] = mem[t]
                                                                                                                                                                                                    t = t + 32
                                                                                                                                                                                                    u = u + 32
                                                                                                                                                                                                    s = s + 1
                                                                                                                                                                                                    continue 
                                                                                                                                                                                                if 1 >= _3277:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    require mem[_3267 + ceil32(return_data.size) + 64] > idx + 10^16 / 2
                                                                                                                                    else:
                                                                                                                                        if _2180 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                            s = idx + 10^16 / 2
                                                                                                                                            idx = idx + 10^16 / 2
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            if _2180 + -(idx + 10^16 / 2) + 10^16 >= 0:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = idx + 10^16 / 2
                                                                                                                                                idx = idx + 10^16 / 2
                                                                                                                                                continue 
                                                                                    else:
                                                                                        if idx + 10^16 / 2 > -10000000000000001:
                                                                                            revert with 0, 17
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
                                                                                                _2388 = mem[64]
                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _2392 = mem[_2388]
                                                                                                require mem[_2388] <= test266151307()
                                                                                                require _2388 + mem[_2388] + 31 < _2388 + return_data.size
                                                                                                _2396 = mem[_2388 + mem[_2388]]
                                                                                                if mem[_2388 + mem[_2388]] > test266151307():
                                                                                                    revert with 0, 65
                                                                                                else:
                                                                                                    if _2388 + ceil32(return_data.size) + ceil32(32 * mem[_2388 + mem[_2388]]) + 1 > test266151307() or ceil32(32 * mem[_2388 + mem[_2388]]) + 1 < 0:
                                                                                                        revert with 0, 65
                                                                                                    else:
                                                                                                        mem[64] = _2388 + ceil32(return_data.size) + ceil32(32 * mem[_2388 + mem[_2388]]) + 1
                                                                                                        mem[_2388 + ceil32(return_data.size)] = _2396
                                                                                                        require return_data.size >= _2392 + (32 * _2396) + 32
                                                                                                        t = _2388 + _2392 + 32
                                                                                                        u = _2388 + ceil32(return_data.size) + 32
                                                                                                        s = 0
                                                                                                        while s < _2396:
                                                                                                            mem[u] = mem[t]
                                                                                                            t = t + 32
                                                                                                            u = u + 32
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        if 1 >= _2396:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            _2591 = mem[_2388 + ceil32(return_data.size) + 64]
                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = _2591
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
                                                                                                                   args _2591, Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _2760 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _2764 = mem[_2760]
                                                                                                                require mem[_2760] <= test266151307()
                                                                                                                require _2760 + mem[_2760] + 31 < _2760 + return_data.size
                                                                                                                _2768 = mem[_2760 + mem[_2760]]
                                                                                                                if mem[_2760 + mem[_2760]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _2760 + ceil32(return_data.size) + ceil32(32 * mem[_2760 + mem[_2760]]) + 1 > test266151307() or ceil32(32 * mem[_2760 + mem[_2760]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _2760 + ceil32(return_data.size) + ceil32(32 * mem[_2760 + mem[_2760]]) + 1
                                                                                                                        mem[_2760 + ceil32(return_data.size)] = _2768
                                                                                                                        require return_data.size >= _2764 + (32 * _2768) + 32
                                                                                                                        t = _2760 + _2764 + 32
                                                                                                                        u = _2760 + ceil32(return_data.size) + 32
                                                                                                                        s = 0
                                                                                                                        while s < _2768:
                                                                                                                            mem[u] = mem[t]
                                                                                                                            t = t + 32
                                                                                                                            u = u + 32
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                        if 1 >= _2768:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if (idx + 10^16 / 2) + 10^16 >= mem[_2760 + ceil32(return_data.size) + 64]:
                                                                                                                                if 1 >= _2768:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if mem[_2760 + ceil32(return_data.size) + 64] < (idx + 10^16 / 2) + 10^16:
                                                                                                                                        revert with 0, 17
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
    _427 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _429 = mem[_427]
    require mem[_427] <= test266151307()
    require _427 + mem[_427] + 31 < _427 + return_data.size
    _431 = mem[_427 + mem[_427]]
    if mem[_427 + mem[_427]] > test266151307():
        revert with 0, 65
    if _427 + ceil32(return_data.size) + ceil32(32 * mem[_427 + mem[_427]]) + 1 > test266151307() or ceil32(32 * mem[_427 + mem[_427]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _427 + ceil32(return_data.size) + ceil32(32 * mem[_427 + mem[_427]]) + 1
    mem[_427 + ceil32(return_data.size)] = _431
    require return_data.size >= _429 + (32 * _431) + 32
    mem[_427 + ceil32(return_data.size) + 32 len 32 * _431] = mem[_427 + _429 + 32 len 32 * _431]
    if 1 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[1] == address(('cd', 68)[1])
    if 1 >= _431:
        revert with 0, 50
    _714 = mem[_427 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _714
    require ext_code.size(address(('cd', 68)[1]))
    call address(('cd', 68)[1]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _714
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _718 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_718] == bool(mem[_718])
    require mem[_718]
    if 1 >= _431:
        revert with 0, 50
    _724 = mem[_427 + ceil32(return_data.size) + 64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _724
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
        args _724, 0, 160, address(this.address), 1711275212, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _981 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _983 = mem[_981]
    require mem[_981] <= test266151307()
    require _981 + mem[_981] + 31 < _981 + return_data.size
    _985 = mem[_981 + mem[_981]]
    if mem[_981 + mem[_981]] > test266151307():
        revert with 0, 65
    if _981 + ceil32(return_data.size) + ceil32(32 * mem[_981 + mem[_981]]) + 1 > test266151307() or ceil32(32 * mem[_981 + mem[_981]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _981 + ceil32(return_data.size) + ceil32(32 * mem[_981 + mem[_981]]) + 1
    mem[_981 + ceil32(return_data.size)] = _985
    require return_data.size >= _983 + (32 * _985) + 32
    mem[_981 + ceil32(return_data.size) + 32 len 32 * _985] = mem[_981 + _983 + 32 len 32 * _985]
    if 1 >= _985:
        revert with 0, 50
    require mem[_981 + ceil32(return_data.size) + 64] > s
}



}
