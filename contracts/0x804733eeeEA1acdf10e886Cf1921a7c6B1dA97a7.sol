contract main {




// =====================  Runtime code  =====================


address DEFAULT_ROUTERAddress;
address DEFAULT_FACTORYAddress;
address WETHAddress;

function DEFAULT_FACTORY() payable {
    return DEFAULT_FACTORYAddress
}

function WETH() payable {
    return WETHAddress
}

function DEFAULT_ROUTER() payable {
    return DEFAULT_ROUTERAddress
}

function _fallback() payable {
    revert
}

function convertTwoByPair(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not arg2:
        return 0
    staticcall arg3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != arg1:
        if arg2 and ext_call.return_data[18 len 14] > -1 / arg2:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg2 and ext_call.return_data[50 len 14] > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function checkTokensDistanceByFactory(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 != arg3:
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            return 1
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), WETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]):
            if ext_call.return_data[12 len 20]:
                return 2
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function checkTokensDistance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != arg2:
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            return 1
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), WETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]):
            if ext_call.return_data[12 len 20]:
                return 2
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function convertTwo(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return arg3
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg3:
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != arg1:
        if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertTwoByFactory(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        return arg4
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg4:
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != arg2:
        if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function checkTokensDistanceByRouter(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 != arg3:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg2 != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20]:
                return 1
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), WETHAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(ext_call.return_data[0]):
                if ext_call.return_data[12 len 20]:
                    return 2
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function convertTwoByRouter(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        return arg4
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 == arg3:
        return arg4
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg4:
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != arg2:
        if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertChained(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
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
    if 2 > arg1.length:
        return arg2
    if var37001 < 1:
        revert with 0, 17
    if var41002 >= var41001:
        return arg2
    if var43001 < arg1.length:
        if 1 > !var47002:
            revert with 0, 17
        idx = var49003 + 1
        s = var49006
        t = var49009
        while idx < arg1.length:
            _374 = mem[(32 * idx) + 128]
            if address(s) == mem[(32 * idx) + 140 len 20]:
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return arg2
            else:
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_374)
                staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), address(_374)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _378 = mem[_377]
                require mem[_377] == mem[_377 + 12 len 20]
                if not mem[_377 + 12 len 20]:
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 >= mem[96] - 1:
                        return 0
                else:
                    if not arg2:
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return 0
                    else:
                        staticcall mem[_377 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _386 = mem[_383]
                        require mem[_383] == mem[_383 + 12 len 20]
                        staticcall address(_378).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_391] == mem[_391 + 18 len 14]
                        require mem[_391 + 32] == mem[_391 + 50 len 14]
                        require mem[_391 + 64] == mem[_391 + 92 len 4]
                        if 0 == mem[_391 + 18 len 14]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if not mem[_391 + 50 len 14]:
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return 0
                            else:
                                if address(_386) != address(s):
                                    if arg2 and mem[_391 + 18 len 14] > -1 / arg2:
                                        revert with 0, 17
                                    if not mem[_391 + 50 len 14]:
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        mem[mem[64]] = arg2 * mem[_391 + 18 len 14] / mem[_391 + 50 len 14]
                                        return memory
                                          from mem[64]
                                           len 32
                                else:
                                    if arg2 and mem[_391 + 50 len 14] > -1 / arg2:
                                        revert with 0, 17
                                    if not mem[_391 + 18 len 14]:
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        mem[mem[64]] = arg2 * mem[_391 + 50 len 14] / mem[_391 + 18 len 14]
                                        return memory
                                          from mem[64]
                                           len 32
            ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            continue 
    revert with 0, 50
}

function convertChainedByFactory(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
    mem[96] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 2 > arg2.length:
        return arg3
    if var39001 < 1:
        revert with 0, 17
    if var43002 >= var43001:
        return arg3
    if var45001 < arg2.length:
        if 1 > !var49002:
            revert with 0, 17
        idx = var51003 + 1
        s = var51006
        t = var51009
        while idx < arg2.length:
            _374 = mem[(32 * idx) + 128]
            if address(s) == mem[(32 * idx) + 140 len 20]:
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return arg3
            else:
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_374)
                staticcall arg1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), address(_374)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _378 = mem[_377]
                require mem[_377] == mem[_377 + 12 len 20]
                if not mem[_377 + 12 len 20]:
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 >= mem[96] - 1:
                        return 0
                else:
                    if not arg3:
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return 0
                    else:
                        staticcall mem[_377 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _387 = mem[_383]
                        require mem[_383] == mem[_383 + 12 len 20]
                        staticcall address(_378).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_391] == mem[_391 + 18 len 14]
                        require mem[_391 + 32] == mem[_391 + 50 len 14]
                        require mem[_391 + 64] == mem[_391 + 92 len 4]
                        if 0 == mem[_391 + 18 len 14]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if not mem[_391 + 50 len 14]:
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return 0
                            else:
                                if address(_387) != address(s):
                                    if arg3 and mem[_391 + 18 len 14] > -1 / arg3:
                                        revert with 0, 17
                                    if not mem[_391 + 50 len 14]:
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        mem[mem[64]] = arg3 * mem[_391 + 18 len 14] / mem[_391 + 50 len 14]
                                        return memory
                                          from mem[64]
                                           len 32
                                else:
                                    if arg3 and mem[_391 + 50 len 14] > -1 / arg3:
                                        revert with 0, 17
                                    if not mem[_391 + 18 len 14]:
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        mem[mem[64]] = arg3 * mem[_391 + 50 len 14] / mem[_391 + 18 len 14]
                                        return memory
                                          from mem[64]
                                           len 32
            ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            continue 
    revert with 0, 50
}

function convertChainedByRouter(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    staticcall arg1.factory() with:
            gas gas_remaining wei
    mem[ceil32(32 * arg2.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 2 > arg2.length:
        return arg3
    if var47001 < 1:
        revert with 0, 17
    if var51002 >= var51001:
        return arg3
    if var53001 < arg2.length:
        if 1 > !var57002:
            revert with 0, 17
        idx = var59003 + 1
        s = var59006
        t = var59009
        while idx < arg2.length:
            _382 = mem[(32 * idx) + 128]
            if address(s) == mem[(32 * idx) + 140 len 20]:
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return arg3
            else:
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_382)
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), address(_382)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _386 = mem[_385]
                require mem[_385] == mem[_385 + 12 len 20]
                if not mem[_385 + 12 len 20]:
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 >= mem[96] - 1:
                        return 0
                else:
                    if not arg3:
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return 0
                    else:
                        staticcall mem[_385 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _394 = mem[_391]
                        require mem[_391] == mem[_391 + 12 len 20]
                        staticcall address(_386).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_399] == mem[_399 + 18 len 14]
                        require mem[_399 + 32] == mem[_399 + 50 len 14]
                        require mem[_399 + 64] == mem[_399 + 92 len 4]
                        if 0 == mem[_399 + 18 len 14]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if not mem[_399 + 50 len 14]:
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return 0
                            else:
                                if address(_394) != address(s):
                                    if arg3 and mem[_399 + 18 len 14] > -1 / arg3:
                                        revert with 0, 17
                                    if not mem[_399 + 50 len 14]:
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        mem[mem[64]] = arg3 * mem[_399 + 18 len 14] / mem[_399 + 50 len 14]
                                        return memory
                                          from mem[64]
                                           len 32
                                else:
                                    if arg3 and mem[_399 + 50 len 14] > -1 / arg3:
                                        revert with 0, 17
                                    if not mem[_399 + 18 len 14]:
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        mem[mem[64]] = arg3 * mem[_399 + 50 len 14] / mem[_399 + 18 len 14]
                                        return memory
                                          from mem[64]
                                           len 32
            ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            continue 
    revert with 0, 50
}

function convertViaWETHByFactory(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        return arg4
    if arg2 == WETHAddress:
        if WETHAddress == arg3:
            return arg4
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not arg4:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if address(ext_call.return_data[0]) != arg2:
        if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if WETHAddress == arg3:
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if WETHAddress == arg3:
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != WETHAddress:
        if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertViaWETH(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return arg3
    if arg1 == WETHAddress:
        if WETHAddress == arg2:
            return arg3
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg3:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not arg3:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if address(ext_call.return_data[0]) != arg1:
        if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if WETHAddress == arg2:
            return (arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if WETHAddress == arg2:
        return (arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != WETHAddress:
        if arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertViaWETHByRouter(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        return arg4
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 == arg3:
        return arg4
    if arg2 == WETHAddress:
        if WETHAddress == arg3:
            return arg4
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not arg4:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if address(ext_call.return_data[0]) != arg2:
        if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if WETHAddress == arg3:
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if WETHAddress == arg3:
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != WETHAddress:
        if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertTwoUniversalByFactory(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        return arg4
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if arg2 == arg3:
            return arg4
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != arg2:
            if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        return 0
    if not ext_call.return_data[12 len 20]:
        return 0
    if arg2 == arg3:
        return arg4
    if arg2 == WETHAddress:
        if WETHAddress == arg3:
            return arg4
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not arg4:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if WETHAddress != arg3:
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if address(ext_call.return_data[0]) != arg2:
        if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if WETHAddress == arg3:
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if WETHAddress == arg3:
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != WETHAddress:
        if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertTwoUniversal(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return arg3
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if arg1 == arg2:
            return arg3
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg3:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != arg1:
            if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        return 0
    if not ext_call.return_data[12 len 20]:
        return 0
    if arg1 == arg2:
        return arg3
    if arg1 == WETHAddress:
        if WETHAddress == arg2:
            return arg3
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg3:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not arg3:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if WETHAddress != arg2:
            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if address(ext_call.return_data[0]) != arg1:
        if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if WETHAddress == arg2:
            return (arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if WETHAddress == arg2:
        return (arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != WETHAddress:
        if arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertTwoUniversalByRouter(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        return arg4
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 == arg3:
        return arg4
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if arg2 == arg3:
            return arg4
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != arg2:
            if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        return 0
    if not ext_call.return_data[12 len 20]:
        return 0
    if arg2 == arg3:
        return arg4
    if arg2 == WETHAddress:
        if WETHAddress == arg3:
            return arg4
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4:
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not arg4:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        if WETHAddress != arg3:
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args WETHAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        else:
            return 0
    if address(ext_call.return_data[0]) != arg2:
        if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if WETHAddress == arg3:
            return (arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0
        if not arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return 0
        if not ext_call.return_data[50 len 14]:
            return 0
        if address(ext_call.return_data[0]) != WETHAddress:
            if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        if arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    if arg4 and ext_call.return_data[50 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if WETHAddress == arg3:
        return (arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        return 0
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if address(ext_call.return_data[0]) != WETHAddress:
        if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    return (arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function convertChainedUniversalByFactory(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
    mem[96] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 2 > arg2.length:
        return arg3
    if var39001 < 1:
        revert with 0, 17
    if var43002 >= var43001:
        return arg3
    if var45001 < arg2.length:
        if 1 > !var49002:
            revert with 0, 17
        idx = var51003 + 1
        s = var51006
        t = var51009
        while idx < arg2.length:
            _2139 = mem[(32 * idx) + 128]
            if address(s) == mem[(32 * idx) + 140 len 20]:
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return arg3
            else:
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_2139)
                staticcall arg1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), address(_2139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2142] == mem[_2142 + 12 len 20]
                if mem[_2142 + 12 len 20]:
                    if address(s) == address(_2139):
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return arg3
                    else:
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_2139)
                        staticcall arg1.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_2139)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2159 = mem[_2155]
                        require mem[_2155] == mem[_2155 + 12 len 20]
                        if not mem[_2155 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if not arg3:
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return 0
                            else:
                                staticcall mem[_2155 + 12 len 20].token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2164 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2166 = mem[_2164]
                                require mem[_2164] == mem[_2164 + 12 len 20]
                                staticcall address(_2159).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2173 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2173] == mem[_2173 + 18 len 14]
                                require mem[_2173 + 32] == mem[_2173 + 50 len 14]
                                require mem[_2173 + 64] == mem[_2173 + 92 len 4]
                                if 0 == mem[_2173 + 18 len 14]:
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        return 0
                                else:
                                    if not mem[_2173 + 50 len 14]:
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return 0
                                    else:
                                        if address(_2166) != address(s):
                                            if arg3 and mem[_2173 + 18 len 14] > -1 / arg3:
                                                revert with 0, 17
                                            if not mem[_2173 + 50 len 14]:
                                                revert with 0, 18
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                mem[mem[64]] = arg3 * mem[_2173 + 18 len 14] / mem[_2173 + 50 len 14]
                                                return memory
                                                  from mem[64]
                                                   len 32
                                        else:
                                            if arg3 and mem[_2173 + 50 len 14] > -1 / arg3:
                                                revert with 0, 17
                                            if not mem[_2173 + 18 len 14]:
                                                revert with 0, 18
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                mem[mem[64]] = arg3 * mem[_2173 + 50 len 14] / mem[_2173 + 18 len 14]
                                                return memory
                                                  from mem[64]
                                                   len 32
                else:
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = WETHAddress
                    staticcall arg1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), WETHAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2152 = mem[_2148]
                    require mem[_2148] == mem[_2148 + 12 len 20]
                    mem[mem[64] + 4] = WETHAddress
                    mem[mem[64] + 36] = address(_2139)
                    staticcall arg1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args WETHAddress, address(_2139)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2158] == mem[_2158 + 12 len 20]
                    if not address(_2152):
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return 0
                    else:
                        if not mem[_2158 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if address(s) == address(_2139):
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return arg3
                            else:
                                if address(s) == WETHAddress:
                                    if WETHAddress == address(_2139):
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return arg3
                                    else:
                                        mem[mem[64] + 4] = WETHAddress
                                        mem[mem[64] + 36] = address(_2139)
                                        staticcall arg1.getPair(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args WETHAddress, address(_2139)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2193 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2203 = mem[_2193]
                                        require mem[_2193] == mem[_2193 + 12 len 20]
                                        if not mem[_2193 + 12 len 20]:
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                return 0
                                        else:
                                            if not arg3:
                                                if t == -1:
                                                    revert with 0, 17
                                                if mem[96] < 1:
                                                    revert with 0, 17
                                                if t + 1 >= mem[96] - 1:
                                                    return 0
                                            else:
                                                staticcall mem[_2193 + 12 len 20].token0() with:
                                                        gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2220 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2226 = mem[_2220]
                                                require mem[_2220] == mem[_2220 + 12 len 20]
                                                staticcall address(_2203).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2239 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2239] == mem[_2239 + 18 len 14]
                                                require mem[_2239 + 32] == mem[_2239 + 50 len 14]
                                                require mem[_2239 + 64] == mem[_2239 + 92 len 4]
                                                if 0 == mem[_2239 + 18 len 14]:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    if mem[96] < 1:
                                                        revert with 0, 17
                                                    if t + 1 >= mem[96] - 1:
                                                        return 0
                                                else:
                                                    if not mem[_2239 + 50 len 14]:
                                                        if t == -1:
                                                            revert with 0, 17
                                                        if mem[96] < 1:
                                                            revert with 0, 17
                                                        if t + 1 >= mem[96] - 1:
                                                            return 0
                                                    else:
                                                        if address(_2226) != WETHAddress:
                                                            if arg3 and mem[_2239 + 18 len 14] > -1 / arg3:
                                                                revert with 0, 17
                                                            if not mem[_2239 + 50 len 14]:
                                                                revert with 0, 18
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2239 + 18 len 14] / mem[_2239 + 50 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            if arg3 and mem[_2239 + 50 len 14] > -1 / arg3:
                                                                revert with 0, 17
                                                            if not mem[_2239 + 18 len 14]:
                                                                revert with 0, 18
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2239 + 50 len 14] / mem[_2239 + 18 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                else:
                                    mem[mem[64] + 4] = address(s)
                                    mem[mem[64] + 36] = WETHAddress
                                    staticcall arg1.getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(s), WETHAddress
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2179 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2185 = mem[_2179]
                                    require mem[_2179] == mem[_2179 + 12 len 20]
                                    if not mem[_2179 + 12 len 20]:
                                        if WETHAddress != address(_2139):
                                            mem[mem[64] + 4] = WETHAddress
                                            mem[mem[64] + 36] = address(_2139)
                                            staticcall arg1.getPair(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args WETHAddress, address(_2139)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2215 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2215] == mem[_2215 + 12 len 20]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return 0
                                    else:
                                        if not arg3:
                                            if WETHAddress != address(_2139):
                                                mem[mem[64] + 4] = WETHAddress
                                                mem[mem[64] + 36] = address(_2139)
                                                staticcall arg1.getPair(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args WETHAddress, address(_2139)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2225 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2225] == mem[_2225 + 12 len 20]
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                return 0
                                        else:
                                            staticcall mem[_2179 + 12 len 20].token0() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2208 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2214 = mem[_2208]
                                            require mem[_2208] == mem[_2208 + 12 len 20]
                                            staticcall address(_2185).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2227 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            _2234 = mem[_2227]
                                            require mem[_2227] == mem[_2227 + 18 len 14]
                                            _2241 = mem[_2227 + 32]
                                            require mem[_2227 + 32] == mem[_2227 + 50 len 14]
                                            require mem[_2227 + 64] == mem[_2227 + 92 len 4]
                                            if 0 == mem[_2227 + 18 len 14]:
                                                if WETHAddress != address(_2139):
                                                    mem[mem[64] + 4] = WETHAddress
                                                    mem[mem[64] + 36] = address(_2139)
                                                    staticcall arg1.getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args WETHAddress, address(_2139)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2291 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2291] == mem[_2291 + 12 len 20]
                                                if t == -1:
                                                    revert with 0, 17
                                                if mem[96] < 1:
                                                    revert with 0, 17
                                                if t + 1 >= mem[96] - 1:
                                                    return 0
                                            else:
                                                if not mem[_2227 + 50 len 14]:
                                                    if WETHAddress != address(_2139):
                                                        mem[mem[64] + 4] = WETHAddress
                                                        mem[mem[64] + 36] = address(_2139)
                                                        staticcall arg1.getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args WETHAddress, address(_2139)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2294 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_2294] == mem[_2294 + 12 len 20]
                                                    if t == -1:
                                                        revert with 0, 17
                                                    if mem[96] < 1:
                                                        revert with 0, 17
                                                    if t + 1 >= mem[96] - 1:
                                                        return 0
                                                else:
                                                    if address(_2214) != address(s):
                                                        if arg3 and mem[_2227 + 18 len 14] > -1 / arg3:
                                                            revert with 0, 17
                                                        if not mem[_2227 + 50 len 14]:
                                                            revert with 0, 18
                                                        if WETHAddress == address(_2139):
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2227 + 18 len 14] / mem[_2227 + 50 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            mem[mem[64] + 4] = WETHAddress
                                                            mem[mem[64] + 36] = address(_2139)
                                                            staticcall arg1.getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args WETHAddress, address(_2139)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2314 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2318 = mem[_2314]
                                                            require mem[_2314] == mem[_2314 + 12 len 20]
                                                            if not mem[_2314 + 12 len 20]:
                                                                if t == -1:
                                                                    revert with 0, 17
                                                                if mem[96] < 1:
                                                                    revert with 0, 17
                                                                if t + 1 >= mem[96] - 1:
                                                                    return 0
                                                            else:
                                                                if not arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241):
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    if mem[96] < 1:
                                                                        revert with 0, 17
                                                                    if t + 1 >= mem[96] - 1:
                                                                        return 0
                                                                else:
                                                                    staticcall mem[_2314 + 12 len 20].token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2347 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2350 = mem[_2347]
                                                                    require mem[_2347] == mem[_2347 + 12 len 20]
                                                                    staticcall address(_2318).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2383 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    require mem[_2383] == mem[_2383 + 18 len 14]
                                                                    require mem[_2383 + 32] == mem[_2383 + 50 len 14]
                                                                    require mem[_2383 + 64] == mem[_2383 + 92 len 4]
                                                                    if 0 == mem[_2383 + 18 len 14]:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        if mem[96] < 1:
                                                                            revert with 0, 17
                                                                        if t + 1 >= mem[96] - 1:
                                                                            return 0
                                                                    else:
                                                                        if not mem[_2383 + 50 len 14]:
                                                                            if t == -1:
                                                                                revert with 0, 17
                                                                            if mem[96] < 1:
                                                                                revert with 0, 17
                                                                            if t + 1 >= mem[96] - 1:
                                                                                return 0
                                                                        else:
                                                                            if address(_2350) != WETHAddress:
                                                                                if arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241) and mem[_2383 + 18 len 14] > -1 / arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241):
                                                                                    revert with 0, 17
                                                                                if not mem[_2383 + 50 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241) * mem[_2383 + 18 len 14] / mem[_2383 + 50 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                                            else:
                                                                                if arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241) and mem[_2383 + 50 len 14] > -1 / arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241):
                                                                                    revert with 0, 17
                                                                                if not mem[_2383 + 18 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2234) / Mask(112, 0, _2241) * mem[_2383 + 50 len 14] / mem[_2383 + 18 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                    else:
                                                        if arg3 and mem[_2227 + 50 len 14] > -1 / arg3:
                                                            revert with 0, 17
                                                        if not mem[_2227 + 18 len 14]:
                                                            revert with 0, 18
                                                        if WETHAddress == address(_2139):
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2227 + 50 len 14] / mem[_2227 + 18 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            mem[mem[64] + 4] = WETHAddress
                                                            mem[mem[64] + 36] = address(_2139)
                                                            staticcall arg1.getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args WETHAddress, address(_2139)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2315 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2319 = mem[_2315]
                                                            require mem[_2315] == mem[_2315 + 12 len 20]
                                                            if not mem[_2315 + 12 len 20]:
                                                                if t == -1:
                                                                    revert with 0, 17
                                                                if mem[96] < 1:
                                                                    revert with 0, 17
                                                                if t + 1 >= mem[96] - 1:
                                                                    return 0
                                                            else:
                                                                if not arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234):
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    if mem[96] < 1:
                                                                        revert with 0, 17
                                                                    if t + 1 >= mem[96] - 1:
                                                                        return 0
                                                                else:
                                                                    staticcall mem[_2315 + 12 len 20].token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2348 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2351 = mem[_2348]
                                                                    require mem[_2348] == mem[_2348 + 12 len 20]
                                                                    staticcall address(_2319).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2385 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    require mem[_2385] == mem[_2385 + 18 len 14]
                                                                    require mem[_2385 + 32] == mem[_2385 + 50 len 14]
                                                                    require mem[_2385 + 64] == mem[_2385 + 92 len 4]
                                                                    if 0 == mem[_2385 + 18 len 14]:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        if mem[96] < 1:
                                                                            revert with 0, 17
                                                                        if t + 1 >= mem[96] - 1:
                                                                            return 0
                                                                    else:
                                                                        if not mem[_2385 + 50 len 14]:
                                                                            if t == -1:
                                                                                revert with 0, 17
                                                                            if mem[96] < 1:
                                                                                revert with 0, 17
                                                                            if t + 1 >= mem[96] - 1:
                                                                                return 0
                                                                        else:
                                                                            if address(_2351) != WETHAddress:
                                                                                if arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234) and mem[_2385 + 18 len 14] > -1 / arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234):
                                                                                    revert with 0, 17
                                                                                if not mem[_2385 + 50 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234) * mem[_2385 + 18 len 14] / mem[_2385 + 50 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                                            else:
                                                                                if arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234) and mem[_2385 + 50 len 14] > -1 / arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234):
                                                                                    revert with 0, 17
                                                                                if not mem[_2385 + 18 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2234) * mem[_2385 + 50 len 14] / mem[_2385 + 18 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
            ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            continue 
    revert with 0, 50
}

function convertChainedUniversal(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
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
    if 2 > arg1.length:
        return arg2
    if var37001 < 1:
        revert with 0, 17
    if var41002 >= var41001:
        return arg2
    if var43001 < arg1.length:
        if 1 > !var47002:
            revert with 0, 17
        idx = var49003 + 1
        s = var49006
        t = var49009
        while idx < arg1.length:
            _2139 = mem[(32 * idx) + 128]
            if address(s) == mem[(32 * idx) + 140 len 20]:
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return arg2
            else:
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_2139)
                staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), address(_2139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2142] == mem[_2142 + 12 len 20]
                if mem[_2142 + 12 len 20]:
                    if address(s) == address(_2139):
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return arg2
                    else:
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_2139)
                        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_2139)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2159 = mem[_2155]
                        require mem[_2155] == mem[_2155 + 12 len 20]
                        if not mem[_2155 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if not arg2:
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return 0
                            else:
                                staticcall mem[_2155 + 12 len 20].token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2164 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2166 = mem[_2164]
                                require mem[_2164] == mem[_2164 + 12 len 20]
                                staticcall address(_2159).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2173 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2173] == mem[_2173 + 18 len 14]
                                require mem[_2173 + 32] == mem[_2173 + 50 len 14]
                                require mem[_2173 + 64] == mem[_2173 + 92 len 4]
                                if 0 == mem[_2173 + 18 len 14]:
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        return 0
                                else:
                                    if not mem[_2173 + 50 len 14]:
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return 0
                                    else:
                                        if address(_2166) != address(s):
                                            if arg2 and mem[_2173 + 18 len 14] > -1 / arg2:
                                                revert with 0, 17
                                            if not mem[_2173 + 50 len 14]:
                                                revert with 0, 18
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                mem[mem[64]] = arg2 * mem[_2173 + 18 len 14] / mem[_2173 + 50 len 14]
                                                return memory
                                                  from mem[64]
                                                   len 32
                                        else:
                                            if arg2 and mem[_2173 + 50 len 14] > -1 / arg2:
                                                revert with 0, 17
                                            if not mem[_2173 + 18 len 14]:
                                                revert with 0, 18
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                mem[mem[64]] = arg2 * mem[_2173 + 50 len 14] / mem[_2173 + 18 len 14]
                                                return memory
                                                  from mem[64]
                                                   len 32
                else:
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = WETHAddress
                    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), WETHAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2151 = mem[_2148]
                    require mem[_2148] == mem[_2148 + 12 len 20]
                    mem[mem[64] + 4] = WETHAddress
                    mem[mem[64] + 36] = address(_2139)
                    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args WETHAddress, address(_2139)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2158] == mem[_2158 + 12 len 20]
                    if not address(_2151):
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return 0
                    else:
                        if not mem[_2158 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if address(s) == address(_2139):
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return arg2
                            else:
                                if address(s) == WETHAddress:
                                    if WETHAddress == address(_2139):
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return arg2
                                    else:
                                        mem[mem[64] + 4] = WETHAddress
                                        mem[mem[64] + 36] = address(_2139)
                                        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args WETHAddress, address(_2139)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2192 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2201 = mem[_2192]
                                        require mem[_2192] == mem[_2192 + 12 len 20]
                                        if not mem[_2192 + 12 len 20]:
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                return 0
                                        else:
                                            if not arg2:
                                                if t == -1:
                                                    revert with 0, 17
                                                if mem[96] < 1:
                                                    revert with 0, 17
                                                if t + 1 >= mem[96] - 1:
                                                    return 0
                                            else:
                                                staticcall mem[_2192 + 12 len 20].token0() with:
                                                        gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2220 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2226 = mem[_2220]
                                                require mem[_2220] == mem[_2220 + 12 len 20]
                                                staticcall address(_2201).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2239 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2239] == mem[_2239 + 18 len 14]
                                                require mem[_2239 + 32] == mem[_2239 + 50 len 14]
                                                require mem[_2239 + 64] == mem[_2239 + 92 len 4]
                                                if 0 == mem[_2239 + 18 len 14]:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    if mem[96] < 1:
                                                        revert with 0, 17
                                                    if t + 1 >= mem[96] - 1:
                                                        return 0
                                                else:
                                                    if not mem[_2239 + 50 len 14]:
                                                        if t == -1:
                                                            revert with 0, 17
                                                        if mem[96] < 1:
                                                            revert with 0, 17
                                                        if t + 1 >= mem[96] - 1:
                                                            return 0
                                                    else:
                                                        if address(_2226) != WETHAddress:
                                                            if arg2 and mem[_2239 + 18 len 14] > -1 / arg2:
                                                                revert with 0, 17
                                                            if not mem[_2239 + 50 len 14]:
                                                                revert with 0, 18
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg2 * mem[_2239 + 18 len 14] / mem[_2239 + 50 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            if arg2 and mem[_2239 + 50 len 14] > -1 / arg2:
                                                                revert with 0, 17
                                                            if not mem[_2239 + 18 len 14]:
                                                                revert with 0, 18
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg2 * mem[_2239 + 50 len 14] / mem[_2239 + 18 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                else:
                                    mem[mem[64] + 4] = address(s)
                                    mem[mem[64] + 36] = WETHAddress
                                    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(s), WETHAddress
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2179 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2184 = mem[_2179]
                                    require mem[_2179] == mem[_2179 + 12 len 20]
                                    if not mem[_2179 + 12 len 20]:
                                        if WETHAddress != address(_2139):
                                            mem[mem[64] + 4] = WETHAddress
                                            mem[mem[64] + 36] = address(_2139)
                                            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args WETHAddress, address(_2139)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2214 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2214] == mem[_2214 + 12 len 20]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return 0
                                    else:
                                        if not arg2:
                                            if WETHAddress != address(_2139):
                                                mem[mem[64] + 4] = WETHAddress
                                                mem[mem[64] + 36] = address(_2139)
                                                staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args WETHAddress, address(_2139)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2225 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2225] == mem[_2225 + 12 len 20]
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                return 0
                                        else:
                                            staticcall mem[_2179 + 12 len 20].token0() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2208 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2213 = mem[_2208]
                                            require mem[_2208] == mem[_2208 + 12 len 20]
                                            staticcall address(_2184).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2227 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            _2233 = mem[_2227]
                                            require mem[_2227] == mem[_2227 + 18 len 14]
                                            _2241 = mem[_2227 + 32]
                                            require mem[_2227 + 32] == mem[_2227 + 50 len 14]
                                            require mem[_2227 + 64] == mem[_2227 + 92 len 4]
                                            if 0 == mem[_2227 + 18 len 14]:
                                                if WETHAddress != address(_2139):
                                                    mem[mem[64] + 4] = WETHAddress
                                                    mem[mem[64] + 36] = address(_2139)
                                                    staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args WETHAddress, address(_2139)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2290 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2290] == mem[_2290 + 12 len 20]
                                                if t == -1:
                                                    revert with 0, 17
                                                if mem[96] < 1:
                                                    revert with 0, 17
                                                if t + 1 >= mem[96] - 1:
                                                    return 0
                                            else:
                                                if not mem[_2227 + 50 len 14]:
                                                    if WETHAddress != address(_2139):
                                                        mem[mem[64] + 4] = WETHAddress
                                                        mem[mem[64] + 36] = address(_2139)
                                                        staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args WETHAddress, address(_2139)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2294 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_2294] == mem[_2294 + 12 len 20]
                                                    if t == -1:
                                                        revert with 0, 17
                                                    if mem[96] < 1:
                                                        revert with 0, 17
                                                    if t + 1 >= mem[96] - 1:
                                                        return 0
                                                else:
                                                    if address(_2213) != address(s):
                                                        if arg2 and mem[_2227 + 18 len 14] > -1 / arg2:
                                                            revert with 0, 17
                                                        if not mem[_2227 + 50 len 14]:
                                                            revert with 0, 18
                                                        if WETHAddress == address(_2139):
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg2 * mem[_2227 + 18 len 14] / mem[_2227 + 50 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            mem[mem[64] + 4] = WETHAddress
                                                            mem[mem[64] + 36] = address(_2139)
                                                            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args WETHAddress, address(_2139)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2313 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2318 = mem[_2313]
                                                            require mem[_2313] == mem[_2313 + 12 len 20]
                                                            if not mem[_2313 + 12 len 20]:
                                                                if t == -1:
                                                                    revert with 0, 17
                                                                if mem[96] < 1:
                                                                    revert with 0, 17
                                                                if t + 1 >= mem[96] - 1:
                                                                    return 0
                                                            else:
                                                                if not arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241):
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    if mem[96] < 1:
                                                                        revert with 0, 17
                                                                    if t + 1 >= mem[96] - 1:
                                                                        return 0
                                                                else:
                                                                    staticcall mem[_2313 + 12 len 20].token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2347 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2350 = mem[_2347]
                                                                    require mem[_2347] == mem[_2347 + 12 len 20]
                                                                    staticcall address(_2318).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2382 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    require mem[_2382] == mem[_2382 + 18 len 14]
                                                                    require mem[_2382 + 32] == mem[_2382 + 50 len 14]
                                                                    require mem[_2382 + 64] == mem[_2382 + 92 len 4]
                                                                    if 0 == mem[_2382 + 18 len 14]:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        if mem[96] < 1:
                                                                            revert with 0, 17
                                                                        if t + 1 >= mem[96] - 1:
                                                                            return 0
                                                                    else:
                                                                        if not mem[_2382 + 50 len 14]:
                                                                            if t == -1:
                                                                                revert with 0, 17
                                                                            if mem[96] < 1:
                                                                                revert with 0, 17
                                                                            if t + 1 >= mem[96] - 1:
                                                                                return 0
                                                                        else:
                                                                            if address(_2350) != WETHAddress:
                                                                                if arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241) and mem[_2382 + 18 len 14] > -1 / arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241):
                                                                                    revert with 0, 17
                                                                                if not mem[_2382 + 50 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241) * mem[_2382 + 18 len 14] / mem[_2382 + 50 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                                            else:
                                                                                if arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241) and mem[_2382 + 50 len 14] > -1 / arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241):
                                                                                    revert with 0, 17
                                                                                if not mem[_2382 + 18 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg2 * Mask(112, 0, _2233) / Mask(112, 0, _2241) * mem[_2382 + 50 len 14] / mem[_2382 + 18 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                    else:
                                                        if arg2 and mem[_2227 + 50 len 14] > -1 / arg2:
                                                            revert with 0, 17
                                                        if not mem[_2227 + 18 len 14]:
                                                            revert with 0, 18
                                                        if WETHAddress == address(_2139):
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg2 * mem[_2227 + 50 len 14] / mem[_2227 + 18 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            mem[mem[64] + 4] = WETHAddress
                                                            mem[mem[64] + 36] = address(_2139)
                                                            staticcall DEFAULT_FACTORYAddress.getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args WETHAddress, address(_2139)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2314 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2319 = mem[_2314]
                                                            require mem[_2314] == mem[_2314 + 12 len 20]
                                                            if not mem[_2314 + 12 len 20]:
                                                                if t == -1:
                                                                    revert with 0, 17
                                                                if mem[96] < 1:
                                                                    revert with 0, 17
                                                                if t + 1 >= mem[96] - 1:
                                                                    return 0
                                                            else:
                                                                if not arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233):
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    if mem[96] < 1:
                                                                        revert with 0, 17
                                                                    if t + 1 >= mem[96] - 1:
                                                                        return 0
                                                                else:
                                                                    staticcall mem[_2314 + 12 len 20].token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2348 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2351 = mem[_2348]
                                                                    require mem[_2348] == mem[_2348 + 12 len 20]
                                                                    staticcall address(_2319).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2384 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    require mem[_2384] == mem[_2384 + 18 len 14]
                                                                    require mem[_2384 + 32] == mem[_2384 + 50 len 14]
                                                                    require mem[_2384 + 64] == mem[_2384 + 92 len 4]
                                                                    if 0 == mem[_2384 + 18 len 14]:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        if mem[96] < 1:
                                                                            revert with 0, 17
                                                                        if t + 1 >= mem[96] - 1:
                                                                            return 0
                                                                    else:
                                                                        if not mem[_2384 + 50 len 14]:
                                                                            if t == -1:
                                                                                revert with 0, 17
                                                                            if mem[96] < 1:
                                                                                revert with 0, 17
                                                                            if t + 1 >= mem[96] - 1:
                                                                                return 0
                                                                        else:
                                                                            if address(_2351) != WETHAddress:
                                                                                if arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233) and mem[_2384 + 18 len 14] > -1 / arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233):
                                                                                    revert with 0, 17
                                                                                if not mem[_2384 + 50 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233) * mem[_2384 + 18 len 14] / mem[_2384 + 50 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                                            else:
                                                                                if arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233) and mem[_2384 + 50 len 14] > -1 / arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233):
                                                                                    revert with 0, 17
                                                                                if not mem[_2384 + 18 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg2 * Mask(112, 0, _2241) / Mask(112, 0, _2233) * mem[_2384 + 50 len 14] / mem[_2384 + 18 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
            ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            continue 
    revert with 0, 50
}

function convertChainedUniversalByRouter(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    staticcall arg1.factory() with:
            gas gas_remaining wei
    mem[ceil32(32 * arg2.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 2 > arg2.length:
        return arg3
    if var47001 < 1:
        revert with 0, 17
    if var51002 >= var51001:
        return arg3
    if var53001 < arg2.length:
        if 1 > !var57002:
            revert with 0, 17
        idx = var59003 + 1
        s = var59006
        t = var59009
        while idx < arg2.length:
            _2147 = mem[(32 * idx) + 128]
            if address(s) == mem[(32 * idx) + 140 len 20]:
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return arg3
            else:
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_2147)
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(s), address(_2147)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2150] == mem[_2150 + 12 len 20]
                if mem[_2150 + 12 len 20]:
                    if address(s) == address(_2147):
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return arg3
                    else:
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_2147)
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_2147)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2167 = mem[_2163]
                        require mem[_2163] == mem[_2163 + 12 len 20]
                        if not mem[_2163 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if not arg3:
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return 0
                            else:
                                staticcall mem[_2163 + 12 len 20].token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2172 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2174 = mem[_2172]
                                require mem[_2172] == mem[_2172 + 12 len 20]
                                staticcall address(_2167).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2181 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2181] == mem[_2181 + 18 len 14]
                                require mem[_2181 + 32] == mem[_2181 + 50 len 14]
                                require mem[_2181 + 64] == mem[_2181 + 92 len 4]
                                if 0 == mem[_2181 + 18 len 14]:
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 >= mem[96] - 1:
                                        return 0
                                else:
                                    if not mem[_2181 + 50 len 14]:
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return 0
                                    else:
                                        if address(_2174) != address(s):
                                            if arg3 and mem[_2181 + 18 len 14] > -1 / arg3:
                                                revert with 0, 17
                                            if not mem[_2181 + 50 len 14]:
                                                revert with 0, 18
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                mem[mem[64]] = arg3 * mem[_2181 + 18 len 14] / mem[_2181 + 50 len 14]
                                                return memory
                                                  from mem[64]
                                                   len 32
                                        else:
                                            if arg3 and mem[_2181 + 50 len 14] > -1 / arg3:
                                                revert with 0, 17
                                            if not mem[_2181 + 18 len 14]:
                                                revert with 0, 18
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                mem[mem[64]] = arg3 * mem[_2181 + 50 len 14] / mem[_2181 + 18 len 14]
                                                return memory
                                                  from mem[64]
                                                   len 32
                else:
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = WETHAddress
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), WETHAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2159 = mem[_2156]
                    require mem[_2156] == mem[_2156 + 12 len 20]
                    mem[mem[64] + 4] = WETHAddress
                    mem[mem[64] + 36] = address(_2147)
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args WETHAddress, address(_2147)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2166] == mem[_2166 + 12 len 20]
                    if not address(_2159):
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 >= mem[96] - 1:
                            return 0
                    else:
                        if not mem[_2166 + 12 len 20]:
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                return 0
                        else:
                            if address(s) == address(_2147):
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 >= mem[96] - 1:
                                    return arg3
                            else:
                                if address(s) == WETHAddress:
                                    if WETHAddress == address(_2147):
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return arg3
                                    else:
                                        mem[mem[64] + 4] = WETHAddress
                                        mem[mem[64] + 36] = address(_2147)
                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args WETHAddress, address(_2147)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2200 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2209 = mem[_2200]
                                        require mem[_2200] == mem[_2200 + 12 len 20]
                                        if not mem[_2200 + 12 len 20]:
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                return 0
                                        else:
                                            if not arg3:
                                                if t == -1:
                                                    revert with 0, 17
                                                if mem[96] < 1:
                                                    revert with 0, 17
                                                if t + 1 >= mem[96] - 1:
                                                    return 0
                                            else:
                                                staticcall mem[_2200 + 12 len 20].token0() with:
                                                        gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2228 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2234 = mem[_2228]
                                                require mem[_2228] == mem[_2228 + 12 len 20]
                                                staticcall address(_2209).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2247 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                require mem[_2247] == mem[_2247 + 18 len 14]
                                                require mem[_2247 + 32] == mem[_2247 + 50 len 14]
                                                require mem[_2247 + 64] == mem[_2247 + 92 len 4]
                                                if 0 == mem[_2247 + 18 len 14]:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    if mem[96] < 1:
                                                        revert with 0, 17
                                                    if t + 1 >= mem[96] - 1:
                                                        return 0
                                                else:
                                                    if not mem[_2247 + 50 len 14]:
                                                        if t == -1:
                                                            revert with 0, 17
                                                        if mem[96] < 1:
                                                            revert with 0, 17
                                                        if t + 1 >= mem[96] - 1:
                                                            return 0
                                                    else:
                                                        if address(_2234) != WETHAddress:
                                                            if arg3 and mem[_2247 + 18 len 14] > -1 / arg3:
                                                                revert with 0, 17
                                                            if not mem[_2247 + 50 len 14]:
                                                                revert with 0, 18
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2247 + 18 len 14] / mem[_2247 + 50 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            if arg3 and mem[_2247 + 50 len 14] > -1 / arg3:
                                                                revert with 0, 17
                                                            if not mem[_2247 + 18 len 14]:
                                                                revert with 0, 18
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2247 + 50 len 14] / mem[_2247 + 18 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                else:
                                    mem[mem[64] + 4] = address(s)
                                    mem[mem[64] + 36] = WETHAddress
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(s), WETHAddress
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2187 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2192 = mem[_2187]
                                    require mem[_2187] == mem[_2187 + 12 len 20]
                                    if not mem[_2187 + 12 len 20]:
                                        if WETHAddress != address(_2147):
                                            mem[mem[64] + 4] = WETHAddress
                                            mem[mem[64] + 36] = address(_2147)
                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args WETHAddress, address(_2147)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2222 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2222] == mem[_2222 + 12 len 20]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 >= mem[96] - 1:
                                            return 0
                                    else:
                                        if not arg3:
                                            if WETHAddress != address(_2147):
                                                mem[mem[64] + 4] = WETHAddress
                                                mem[mem[64] + 36] = address(_2147)
                                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args WETHAddress, address(_2147)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2233 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2233] == mem[_2233 + 12 len 20]
                                            if t == -1:
                                                revert with 0, 17
                                            if mem[96] < 1:
                                                revert with 0, 17
                                            if t + 1 >= mem[96] - 1:
                                                return 0
                                        else:
                                            staticcall mem[_2187 + 12 len 20].token0() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2216 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2221 = mem[_2216]
                                            require mem[_2216] == mem[_2216 + 12 len 20]
                                            staticcall address(_2192).getReserves() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2235 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            _2241 = mem[_2235]
                                            require mem[_2235] == mem[_2235 + 18 len 14]
                                            _2249 = mem[_2235 + 32]
                                            require mem[_2235 + 32] == mem[_2235 + 50 len 14]
                                            require mem[_2235 + 64] == mem[_2235 + 92 len 4]
                                            if 0 == mem[_2235 + 18 len 14]:
                                                if WETHAddress != address(_2147):
                                                    mem[mem[64] + 4] = WETHAddress
                                                    mem[mem[64] + 36] = address(_2147)
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args WETHAddress, address(_2147)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2298 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2298] == mem[_2298 + 12 len 20]
                                                if t == -1:
                                                    revert with 0, 17
                                                if mem[96] < 1:
                                                    revert with 0, 17
                                                if t + 1 >= mem[96] - 1:
                                                    return 0
                                            else:
                                                if not mem[_2235 + 50 len 14]:
                                                    if WETHAddress != address(_2147):
                                                        mem[mem[64] + 4] = WETHAddress
                                                        mem[mem[64] + 36] = address(_2147)
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args WETHAddress, address(_2147)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2302 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_2302] == mem[_2302 + 12 len 20]
                                                    if t == -1:
                                                        revert with 0, 17
                                                    if mem[96] < 1:
                                                        revert with 0, 17
                                                    if t + 1 >= mem[96] - 1:
                                                        return 0
                                                else:
                                                    if address(_2221) != address(s):
                                                        if arg3 and mem[_2235 + 18 len 14] > -1 / arg3:
                                                            revert with 0, 17
                                                        if not mem[_2235 + 50 len 14]:
                                                            revert with 0, 18
                                                        if WETHAddress == address(_2147):
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2235 + 18 len 14] / mem[_2235 + 50 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            mem[mem[64] + 4] = WETHAddress
                                                            mem[mem[64] + 36] = address(_2147)
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args WETHAddress, address(_2147)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2321 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2326 = mem[_2321]
                                                            require mem[_2321] == mem[_2321 + 12 len 20]
                                                            if not mem[_2321 + 12 len 20]:
                                                                if t == -1:
                                                                    revert with 0, 17
                                                                if mem[96] < 1:
                                                                    revert with 0, 17
                                                                if t + 1 >= mem[96] - 1:
                                                                    return 0
                                                            else:
                                                                if not arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249):
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    if mem[96] < 1:
                                                                        revert with 0, 17
                                                                    if t + 1 >= mem[96] - 1:
                                                                        return 0
                                                                else:
                                                                    staticcall mem[_2321 + 12 len 20].token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2355 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2358 = mem[_2355]
                                                                    require mem[_2355] == mem[_2355 + 12 len 20]
                                                                    staticcall address(_2326).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2390 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    require mem[_2390] == mem[_2390 + 18 len 14]
                                                                    require mem[_2390 + 32] == mem[_2390 + 50 len 14]
                                                                    require mem[_2390 + 64] == mem[_2390 + 92 len 4]
                                                                    if 0 == mem[_2390 + 18 len 14]:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        if mem[96] < 1:
                                                                            revert with 0, 17
                                                                        if t + 1 >= mem[96] - 1:
                                                                            return 0
                                                                    else:
                                                                        if not mem[_2390 + 50 len 14]:
                                                                            if t == -1:
                                                                                revert with 0, 17
                                                                            if mem[96] < 1:
                                                                                revert with 0, 17
                                                                            if t + 1 >= mem[96] - 1:
                                                                                return 0
                                                                        else:
                                                                            if address(_2358) != WETHAddress:
                                                                                if arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249) and mem[_2390 + 18 len 14] > -1 / arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249):
                                                                                    revert with 0, 17
                                                                                if not mem[_2390 + 50 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249) * mem[_2390 + 18 len 14] / mem[_2390 + 50 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                                            else:
                                                                                if arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249) and mem[_2390 + 50 len 14] > -1 / arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249):
                                                                                    revert with 0, 17
                                                                                if not mem[_2390 + 18 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2241) / Mask(112, 0, _2249) * mem[_2390 + 50 len 14] / mem[_2390 + 18 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                    else:
                                                        if arg3 and mem[_2235 + 50 len 14] > -1 / arg3:
                                                            revert with 0, 17
                                                        if not mem[_2235 + 18 len 14]:
                                                            revert with 0, 18
                                                        if WETHAddress == address(_2147):
                                                            if t == -1:
                                                                revert with 0, 17
                                                            if mem[96] < 1:
                                                                revert with 0, 17
                                                            if t + 1 >= mem[96] - 1:
                                                                mem[mem[64]] = arg3 * mem[_2235 + 50 len 14] / mem[_2235 + 18 len 14]
                                                                return memory
                                                                  from mem[64]
                                                                   len 32
                                                        else:
                                                            mem[mem[64] + 4] = WETHAddress
                                                            mem[mem[64] + 36] = address(_2147)
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args WETHAddress, address(_2147)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2322 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2327 = mem[_2322]
                                                            require mem[_2322] == mem[_2322 + 12 len 20]
                                                            if not mem[_2322 + 12 len 20]:
                                                                if t == -1:
                                                                    revert with 0, 17
                                                                if mem[96] < 1:
                                                                    revert with 0, 17
                                                                if t + 1 >= mem[96] - 1:
                                                                    return 0
                                                            else:
                                                                if not arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241):
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    if mem[96] < 1:
                                                                        revert with 0, 17
                                                                    if t + 1 >= mem[96] - 1:
                                                                        return 0
                                                                else:
                                                                    staticcall mem[_2322 + 12 len 20].token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2356 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2359 = mem[_2356]
                                                                    require mem[_2356] == mem[_2356 + 12 len 20]
                                                                    staticcall address(_2327).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2392 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    require mem[_2392] == mem[_2392 + 18 len 14]
                                                                    require mem[_2392 + 32] == mem[_2392 + 50 len 14]
                                                                    require mem[_2392 + 64] == mem[_2392 + 92 len 4]
                                                                    if 0 == mem[_2392 + 18 len 14]:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        if mem[96] < 1:
                                                                            revert with 0, 17
                                                                        if t + 1 >= mem[96] - 1:
                                                                            return 0
                                                                    else:
                                                                        if not mem[_2392 + 50 len 14]:
                                                                            if t == -1:
                                                                                revert with 0, 17
                                                                            if mem[96] < 1:
                                                                                revert with 0, 17
                                                                            if t + 1 >= mem[96] - 1:
                                                                                return 0
                                                                        else:
                                                                            if address(_2359) != WETHAddress:
                                                                                if arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241) and mem[_2392 + 18 len 14] > -1 / arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241):
                                                                                    revert with 0, 17
                                                                                if not mem[_2392 + 50 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241) * mem[_2392 + 18 len 14] / mem[_2392 + 50 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
                                                                            else:
                                                                                if arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241) and mem[_2392 + 50 len 14] > -1 / arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241):
                                                                                    revert with 0, 17
                                                                                if not mem[_2392 + 18 len 14]:
                                                                                    revert with 0, 18
                                                                                if t == -1:
                                                                                    revert with 0, 17
                                                                                if mem[96] < 1:
                                                                                    revert with 0, 17
                                                                                if t + 1 >= mem[96] - 1:
                                                                                    mem[mem[64]] = arg3 * Mask(112, 0, _2249) / Mask(112, 0, _2241) * mem[_2392 + 50 len 14] / mem[_2392 + 18 len 14]
                                                                                    return memory
                                                                                      from mem[64]
                                                                                       len 32
            ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            continue 
    revert with 0, 50
}



}
