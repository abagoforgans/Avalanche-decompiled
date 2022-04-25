contract main {




// =====================  Runtime code  =====================


address stor6;

function _fallback() payable {
    revert
}

function sub(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        revert with 'NH{q', 17
    if arg1 - arg2 > arg1:
        revert with 0, 'ds-math-sub-underflow'
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'ds-math-add-overflow'
    return (arg1 + arg2)
}

function mul(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        return 0
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg1 * arg2 / arg2 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    return (arg1 * arg2)
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 3:
        if not arg1:
            return 0
        return 1
    if arg1 / 2 > -2:
        revert with 'NH{q', 17
    s = (arg1 / 2) + 1
    t = arg1
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if arg1 / s > -s - 1:
            revert with 'NH{q', 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(arg2), arg1
}

function sub_89a083ec(?) payable {
    require calldata.size - 4 >= 32
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != 1:
        if ('cd', 4).length / 3 > -2:
            revert with 'NH{q', 17
        if (('cd', 4).length / 3) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[floor32(('cd', 4).length) + 97] = (('cd', 4).length / 3) + 1
        mem[64] = floor32(('cd', 4).length) + (32 * (('cd', 4).length / 3) + 1) + 129
        if not (('cd', 4).length / 3) + 1:
            idx = 0
            s = 0
            while idx < ('cd', 4).length / 3:
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx >= mem[96]:
                    revert with 'NH{q', 50
                _442 = mem[(32 * 3 * idx) + 128]
                require ext_code.size(mem[(32 * 3 * idx) + 140 len 20])
                staticcall mem[(32 * 3 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _451 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _453 = mem[_451]
                require mem[_451] == mem[_451 + 12 len 20]
                mem[mem[64] + 4] = mem[_451 + 12 len 20]
                require ext_code.size(stor6)
                staticcall stor6.0x2f71da6c with:
                        gas gas_remaining wei
                       args address(_453)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_475]
                require mem[_475] == mem[_475 + 12 len 20]
                require ext_code.size(address(_442))
                staticcall address(_442).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _495 = mem[_490]
                require mem[_490] == mem[_490 + 12 len 20]
                require ext_code.size(address(_442))
                staticcall address(_442).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _510 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _519 = mem[_510]
                require mem[_510] == mem[_510 + 12 len 20]
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -2:
                    revert with 'NH{q', 17
                if (3 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -3:
                    revert with 'NH{q', 17
                if (3 * idx) + 2 >= mem[96]:
                    revert with 'NH{q', 50
                _584 = mem[(32 * (3 * idx) + 2) + 128]
                if mem[(32 * (3 * idx) + 1) + 128] <= 0:
                    if mem[(32 * (3 * idx) + 2) + 128] > 0:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_510 + 12 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_495)
                else:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = address(_495)
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_519)
                    if _584 > 0:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = address(_519)
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_495)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _477
                continue 
            _434 = mem[64]
            mem[mem[64]] = 0x96eca84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = 64
            _448 = mem[floor32(('cd', 4).length) + 97]
            mem[mem[64] + 68] = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = mem[64] + 100
            while idx < _448:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _434 + (32 * _448) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _644 = mem[_640]
            require mem[_640] <= test266151307()
            require _640 + mem[_640] + 31 < _640 + return_data.size
            _646 = mem[_640 + mem[_640]]
            if mem[_640 + mem[_640]] > test266151307():
                revert with 'NH{q', 65
            if _640 + ceil32(return_data.size) + floor32(mem[_640 + mem[_640]]) + 1 > test266151307() or floor32(mem[_640 + mem[_640]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _640 + ceil32(return_data.size) + floor32(mem[_640 + mem[_640]]) + 1
            mem[_640 + ceil32(return_data.size)] = _646
            require _644 + (256 * _646) + 32 <= return_data.size
            idx = 0
            s = _640 + _644 + 32
            t = _640 + ceil32(return_data.size) + 32
            while idx < _646:
                require _640 + return_data.size - s >= 256
                _773 = mem[64]
                if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 256
                require mem[s] == mem[s + 12 len 20]
                mem[_773] = mem[s]
                require mem[s + 32] == mem[s + 44 len 20]
                mem[_773 + 32] = mem[s + 32]
                require mem[s + 64] == mem[s + 64]
                mem[_773 + 64] = mem[s + 64]
                require mem[s + 96] == mem[s + 96]
                mem[_773 + 96] = mem[s + 96]
                require mem[s + 128] == mem[s + 128]
                mem[_773 + 128] = mem[s + 128]
                require mem[s + 160] == mem[s + 172 len 20]
                mem[_773 + 160] = mem[s + 160]
                require mem[s + 192] == mem[s + 204 len 20]
                mem[_773 + 192] = mem[s + 192]
                require mem[s + 224] == mem[s + 224]
                mem[_773 + 224] = mem[s + 224]
                mem[t] = _773
                idx = idx + 1
                s = s + 256
                t = t + 32
                continue 
            _771 = mem[_640 + 32]
            require mem[_640 + 32] <= test266151307()
            require _640 + mem[_640 + 32] + 31 < _640 + return_data.size
            _775 = mem[_640 + mem[_640 + 32]]
            if mem[_640 + mem[_640 + 32]] > test266151307():
                revert with 'NH{q', 65
            _780 = mem[64]
            if mem[64] + floor32(mem[_640 + mem[_640 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_640 + mem[_640 + 32]]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[_640 + mem[_640 + 32]]) + 1
            mem[_780] = _775
            require _771 + (32 * _775) + 32 <= return_data.size
            idx = 0
            s = _640 + _771 + 32
            t = _780 + 32
            while idx < _775:
                _881 = mem[s]
                require mem[s] <= test266151307()
                require return_data.size + -_771 + -mem[s] - 32 >= 32
                _889 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                _895 = mem[_640 + _771 + _881 + 32]
                require mem[_640 + _771 + _881 + 32] <= test266151307()
                require _640 + _771 + _881 + mem[_640 + _771 + _881 + 32] + 63 < _640 + return_data.size
                _900 = mem[_640 + _771 + _881 + mem[_640 + _771 + _881 + 32] + 32]
                if mem[_640 + _771 + _881 + mem[_640 + _771 + _881 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                _910 = mem[64]
                if mem[64] + floor32(mem[_640 + _771 + _881 + mem[_640 + _771 + _881 + 32] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_640 + _771 + _881 + mem[_640 + _771 + _881 + 32] + 32]) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(mem[_640 + _771 + _881 + mem[_640 + _771 + _881 + 32] + 32]) + 1
                mem[_910] = _900
                require _771 + _881 + _895 + (256 * _900) + 64 <= return_data.size
                u = 0
                v = _640 + _771 + _881 + _895 + 64
                w = _910 + 32
                while u < _900:
                    require _640 + return_data.size - v >= 256
                    _970 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 256
                    require mem[v] == mem[v + 12 len 20]
                    mem[_970] = mem[v]
                    require mem[v + 32] == mem[v + 44 len 20]
                    mem[_970 + 32] = mem[v + 32]
                    require mem[v + 64] == mem[v + 64]
                    mem[_970 + 64] = mem[v + 64]
                    require mem[v + 96] == mem[v + 96]
                    mem[_970 + 96] = mem[v + 96]
                    require mem[v + 128] == mem[v + 128]
                    mem[_970 + 128] = mem[v + 128]
                    require mem[v + 160] == mem[v + 172 len 20]
                    mem[_970 + 160] = mem[v + 160]
                    require mem[v + 192] == mem[v + 204 len 20]
                    mem[_970 + 192] = mem[v + 192]
                    require mem[v + 224] == mem[v + 224]
                    mem[_970 + 224] = mem[v + 224]
                    mem[w] = _970
                    u = u + 1
                    v = v + 256
                    w = w + 32
                    continue 
                mem[_889] = _910
                mem[t] = _889
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _888 = mem[64]
            mem[mem[64]] = 32
            _892 = mem[_780]
            mem[mem[64] + 32] = mem[_780]
            idx = 0
            s = _780 + 32
            t = mem[64] + (32 * _892) + 64
            u = mem[64] + 64
            while idx < _892:
                mem[u] = t + -_888 - 64
                _965 = mem[mem[s]]
                mem[t] = 32
                _969 = mem[_965]
                mem[t + 32] = mem[_965]
                v = 0
                w = _965 + 32
                x = t + 64
                while v < _969:
                    _1014 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1014 + 44 len 20]
                    mem[x + 64] = mem[_1014 + 64]
                    mem[x + 96] = mem[_1014 + 96]
                    mem[x + 128] = mem[_1014 + 128]
                    mem[x + 160] = mem[_1014 + 172 len 20]
                    mem[x + 192] = mem[_1014 + 204 len 20]
                    mem[x + 224] = mem[_1014 + 224]
                    v = v + 1
                    w = w + 32
                    x = x + 256
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (256 * _969) + 64
                u = u + 32
                continue 
        else:
            mem[floor32(('cd', 4).length) + 129 len 32 * (('cd', 4).length / 3) + 1] = call.data[calldata.size len 32 * (('cd', 4).length / 3) + 1]
            idx = 0
            s = 0
            while idx < ('cd', 4).length / 3:
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx >= mem[96]:
                    revert with 'NH{q', 50
                _445 = mem[(32 * 3 * idx) + 128]
                require ext_code.size(mem[(32 * 3 * idx) + 140 len 20])
                staticcall mem[(32 * 3 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_452]
                require mem[_452] == mem[_452 + 12 len 20]
                mem[mem[64] + 4] = mem[_452 + 12 len 20]
                require ext_code.size(stor6)
                staticcall stor6.0x2f71da6c with:
                        gas gas_remaining wei
                       args address(_454)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _478 = mem[_476]
                require mem[_476] == mem[_476 + 12 len 20]
                require ext_code.size(address(_445))
                staticcall address(_445).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _496 = mem[_492]
                require mem[_492] == mem[_492 + 12 len 20]
                require ext_code.size(address(_445))
                staticcall address(_445).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _520 = mem[_511]
                require mem[_511] == mem[_511 + 12 len 20]
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -2:
                    revert with 'NH{q', 17
                if (3 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -3:
                    revert with 'NH{q', 17
                if (3 * idx) + 2 >= mem[96]:
                    revert with 'NH{q', 50
                _586 = mem[(32 * (3 * idx) + 2) + 128]
                if mem[(32 * (3 * idx) + 1) + 128] <= 0:
                    if mem[(32 * (3 * idx) + 2) + 128] > 0:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_511 + 12 len 20]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_496)
                else:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = address(_496)
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_520)
                    if _586 > 0:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = address(_520)
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_496)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _478
                continue 
            mem[mem[64]] = 0x96eca84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = 64
            _449 = mem[floor32(('cd', 4).length) + 97]
            mem[mem[64] + 68] = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            t = floor32(('cd', 4).length) + 129
            u = mem[64] + 100
            while idx < _449:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.0x96eca84b with:
                    gas gas_remaining wei
                   args address(s), 64, mem[mem[64] + 68 len (32 * _449) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _645 = mem[_641]
            require mem[_641] <= test266151307()
            require _641 + mem[_641] + 31 < _641 + return_data.size
            _647 = mem[_641 + mem[_641]]
            if mem[_641 + mem[_641]] > test266151307():
                revert with 'NH{q', 65
            if _641 + ceil32(return_data.size) + floor32(mem[_641 + mem[_641]]) + 1 > test266151307() or floor32(mem[_641 + mem[_641]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _641 + ceil32(return_data.size) + floor32(mem[_641 + mem[_641]]) + 1
            mem[_641 + ceil32(return_data.size)] = _647
            require _645 + (256 * _647) + 32 <= return_data.size
            idx = 0
            s = _641 + _645 + 32
            t = _641 + ceil32(return_data.size) + 32
            while idx < _647:
                require _641 + return_data.size - s >= 256
                _774 = mem[64]
                if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 256
                require mem[s] == mem[s + 12 len 20]
                mem[_774] = mem[s]
                require mem[s + 32] == mem[s + 44 len 20]
                mem[_774 + 32] = mem[s + 32]
                require mem[s + 64] == mem[s + 64]
                mem[_774 + 64] = mem[s + 64]
                require mem[s + 96] == mem[s + 96]
                mem[_774 + 96] = mem[s + 96]
                require mem[s + 128] == mem[s + 128]
                mem[_774 + 128] = mem[s + 128]
                require mem[s + 160] == mem[s + 172 len 20]
                mem[_774 + 160] = mem[s + 160]
                require mem[s + 192] == mem[s + 204 len 20]
                mem[_774 + 192] = mem[s + 192]
                require mem[s + 224] == mem[s + 224]
                mem[_774 + 224] = mem[s + 224]
                mem[t] = _774
                idx = idx + 1
                s = s + 256
                t = t + 32
                continue 
            _772 = mem[_641 + 32]
            require mem[_641 + 32] <= test266151307()
            require _641 + mem[_641 + 32] + 31 < _641 + return_data.size
            _776 = mem[_641 + mem[_641 + 32]]
            if mem[_641 + mem[_641 + 32]] > test266151307():
                revert with 'NH{q', 65
            _781 = mem[64]
            if mem[64] + floor32(mem[_641 + mem[_641 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_641 + mem[_641 + 32]]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[_641 + mem[_641 + 32]]) + 1
            mem[_781] = _776
            require _772 + (32 * _776) + 32 <= return_data.size
            idx = 0
            s = _641 + _772 + 32
            t = _781 + 32
            while idx < _776:
                _882 = mem[s]
                require mem[s] <= test266151307()
                require return_data.size + -_772 + -mem[s] - 32 >= 32
                _891 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                _896 = mem[_641 + _772 + _882 + 32]
                require mem[_641 + _772 + _882 + 32] <= test266151307()
                require _641 + _772 + _882 + mem[_641 + _772 + _882 + 32] + 63 < _641 + return_data.size
                _902 = mem[_641 + _772 + _882 + mem[_641 + _772 + _882 + 32] + 32]
                if mem[_641 + _772 + _882 + mem[_641 + _772 + _882 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                _911 = mem[64]
                if mem[64] + floor32(mem[_641 + _772 + _882 + mem[_641 + _772 + _882 + 32] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_641 + _772 + _882 + mem[_641 + _772 + _882 + 32] + 32]) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(mem[_641 + _772 + _882 + mem[_641 + _772 + _882 + 32] + 32]) + 1
                mem[_911] = _902
                require _772 + _882 + _896 + (256 * _902) + 64 <= return_data.size
                u = 0
                v = _641 + _772 + _882 + _896 + 64
                w = _911 + 32
                while u < _902:
                    require _641 + return_data.size - v >= 256
                    _972 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 256
                    require mem[v] == mem[v + 12 len 20]
                    mem[_972] = mem[v]
                    require mem[v + 32] == mem[v + 44 len 20]
                    mem[_972 + 32] = mem[v + 32]
                    require mem[v + 64] == mem[v + 64]
                    mem[_972 + 64] = mem[v + 64]
                    require mem[v + 96] == mem[v + 96]
                    mem[_972 + 96] = mem[v + 96]
                    require mem[v + 128] == mem[v + 128]
                    mem[_972 + 128] = mem[v + 128]
                    require mem[v + 160] == mem[v + 172 len 20]
                    mem[_972 + 160] = mem[v + 160]
                    require mem[v + 192] == mem[v + 204 len 20]
                    mem[_972 + 192] = mem[v + 192]
                    require mem[v + 224] == mem[v + 224]
                    mem[_972 + 224] = mem[v + 224]
                    mem[w] = _972
                    u = u + 1
                    v = v + 256
                    w = w + 32
                    continue 
                mem[_891] = _911
                mem[t] = _891
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _890 = mem[64]
            mem[mem[64]] = 32
            _893 = mem[_781]
            mem[mem[64] + 32] = mem[_781]
            idx = 0
            s = _781 + 32
            t = mem[64] + (32 * _893) + 64
            u = mem[64] + 64
            while idx < _893:
                mem[u] = t + -_890 - 64
                _967 = mem[mem[s]]
                mem[t] = 32
                _971 = mem[_967]
                mem[t + 32] = mem[_967]
                v = 0
                w = _967 + 32
                x = t + 64
                while v < _971:
                    _1015 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1015 + 44 len 20]
                    mem[x + 64] = mem[_1015 + 64]
                    mem[x + 96] = mem[_1015 + 96]
                    mem[x + 128] = mem[_1015 + 128]
                    mem[x + 160] = mem[_1015 + 172 len 20]
                    mem[x + 192] = mem[_1015 + 204 len 20]
                    mem[x + 224] = mem[_1015 + 224]
                    v = v + 1
                    w = w + 32
                    x = x + 256
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (256 * _971) + 64
                u = u + 32
                continue 
    else:
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _216 = mem[128]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].factory() with:
                gas gas_remaining wei
        mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 101] = ext_call.return_data[12 len 20]
        require ext_code.size(stor6)
        staticcall stor6.0x2f71da6c with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(_216))
        staticcall address(_216).token0() with:
                gas gas_remaining wei
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(_216))
        staticcall address(_216).token1() with:
                gas gas_remaining wei
        mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = 2
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = address(ext_call.return_data[0])
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 161] = address(ext_call.return_data[0])
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193] = 0x96eca84b00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = address(ext_call.return_data[0])
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 64
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 2
        idx = 0
        s = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129
        t = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.0x96eca84b with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), Array(len=2, data=mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + 193
        require return_data.size >= 64
        _439 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64
        require mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 <= test266151307()
        require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 224 < floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + 193
        _450 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]
        if mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]) + 194 > test266151307() or floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]) + 194
        mem[floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + 193] = _450
        require _439 + (256 * _450) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _439 + 225
        t = floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + 225
        while idx < _450:
            require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + -s + 193 >= 256
            _642 = mem[64]
            if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 256
            require mem[s] == mem[s + 12 len 20]
            mem[_642] = mem[s]
            require mem[s + 32] == mem[s + 44 len 20]
            mem[_642 + 32] = mem[s + 32]
            require mem[s + 64] == mem[s + 64]
            mem[_642 + 64] = mem[s + 64]
            require mem[s + 96] == mem[s + 96]
            mem[_642 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 128]
            mem[_642 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_642 + 160] = mem[s + 160]
            require mem[s + 192] == mem[s + 204 len 20]
            mem[_642 + 192] = mem[s + 192]
            require mem[s + 224] == mem[s + 224]
            mem[_642 + 224] = mem[s + 224]
            mem[t] = _642
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        _639 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225]
        require mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] <= test266151307()
        require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 224 < floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + 193
        _643 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]
        if mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193] > test266151307():
            revert with 'NH{q', 65
        _648 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]) + 1
        mem[_648] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]
        require _639 + (32 * _643) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + 225
        t = _648 + 32
        while idx < _643:
            _770 = mem[s]
            require mem[s] <= test266151307()
            require return_data.size + -_639 + -mem[s] - 32 >= 32
            _778 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            _784 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225]
            require mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] <= test266151307()
            require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 256 < floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + 193
            _786 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 225]
            if mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 225] > test266151307():
                revert with 'NH{q', 65
            _794 = mem[64]
            if mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 225]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 225]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 225]) + 1
            mem[_794] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + 225] + 225]
            require _639 + _770 + _784 + (256 * _786) + 64 <= return_data.size
            u = 0
            v = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _639 + _770 + _784 + 257
            w = _794 + 32
            while u < _786:
                require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + -v + 193 >= 256
                _887 = mem[64]
                if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 256
                require mem[v] == mem[v + 12 len 20]
                mem[_887] = mem[v]
                require mem[v + 32] == mem[v + 44 len 20]
                mem[_887 + 32] = mem[v + 32]
                require mem[v + 64] == mem[v + 64]
                mem[_887 + 64] = mem[v + 64]
                require mem[v + 96] == mem[v + 96]
                mem[_887 + 96] = mem[v + 96]
                require mem[v + 128] == mem[v + 128]
                mem[_887 + 128] = mem[v + 128]
                require mem[v + 160] == mem[v + 172 len 20]
                mem[_887 + 160] = mem[v + 160]
                require mem[v + 192] == mem[v + 204 len 20]
                mem[_887 + 192] = mem[v + 192]
                require mem[v + 224] == mem[v + 224]
                mem[_887 + 224] = mem[v + 224]
                mem[w] = _887
                u = u + 1
                v = v + 256
                w = w + 32
                continue 
            mem[_778] = _794
            mem[t] = _778
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _777 = mem[64]
        mem[mem[64]] = 32
        _779 = mem[_648]
        mem[mem[64] + 32] = mem[_648]
        idx = 0
        s = _648 + 32
        t = mem[64] + (32 * _779) + 64
        u = mem[64] + 64
        while idx < _779:
            mem[u] = t + -_777 - 64
            _885 = mem[mem[s]]
            mem[t] = 32
            _886 = mem[_885]
            mem[t + 32] = mem[_885]
            v = 0
            w = _885 + 32
            x = t + 64
            while v < _886:
                _963 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_963 + 44 len 20]
                mem[x + 64] = mem[_963 + 64]
                mem[x + 96] = mem[_963 + 96]
                mem[x + 128] = mem[_963 + 128]
                mem[x + 160] = mem[_963 + 172 len 20]
                mem[x + 192] = mem[_963 + 204 len 20]
                mem[x + 224] = mem[_963 + 224]
                v = v + 1
                w = w + 32
                x = x + 256
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (256 * _886) + 64
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
