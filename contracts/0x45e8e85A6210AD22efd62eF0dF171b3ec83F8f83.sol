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
                _439 = mem[(32 * 3 * idx) + 128]
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -2:
                    revert with 'NH{q', 17
                if (3 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _455 = mem[(32 * (3 * idx) + 1) + 128]
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -3:
                    revert with 'NH{q', 17
                if (3 * idx) + 2 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * 3 * idx) + 140 len 20])
                staticcall mem[(32 * 3 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _474 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_474]
                require mem[_474] == mem[_474 + 12 len 20]
                mem[mem[64] + 4] = mem[_474 + 12 len 20]
                require ext_code.size(stor6)
                staticcall stor6.0x2f71da6c with:
                        gas gas_remaining wei
                       args address(_477)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _507 = mem[_502]
                require mem[_502] == mem[_502 + 12 len 20]
                require ext_code.size(address(_439))
                staticcall address(_439).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _535 = mem[_526]
                require mem[_526] == mem[_526 + 12 len 20]
                require ext_code.size(address(_439))
                staticcall address(_439).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _562 = mem[_556]
                require mem[_556] == mem[_556 + 12 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if _455 <= 0:
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_556 + 12 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_535)
                else:
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = address(_535)
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_562)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _507
                continue 
            mem[mem[64]] = 0x96eca84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = 64
            _441 = mem[floor32(('cd', 4).length) + 97]
            mem[mem[64] + 68] = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            t = floor32(('cd', 4).length) + 129
            u = mem[64] + 100
            while idx < _441:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.0x96eca84b with:
                    gas gas_remaining wei
                   args address(s), 64, mem[mem[64] + 68 len (32 * _441) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _643 = mem[_639]
            require mem[_639] <= test266151307()
            require _639 + mem[_639] + 31 < _639 + return_data.size
            _645 = mem[_639 + mem[_639]]
            if mem[_639 + mem[_639]] > test266151307():
                revert with 'NH{q', 65
            if _639 + ceil32(return_data.size) + floor32(mem[_639 + mem[_639]]) + 1 > test266151307() or floor32(mem[_639 + mem[_639]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _639 + ceil32(return_data.size) + floor32(mem[_639 + mem[_639]]) + 1
            mem[_639 + ceil32(return_data.size)] = _645
            require _643 + (256 * _645) + 32 <= return_data.size
            idx = 0
            t = _639 + _643 + 32
            u = _639 + ceil32(return_data.size) + 32
            while idx < _645:
                require _639 + return_data.size - t >= 256
                _778 = mem[64]
                if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 256
                require mem[t] == mem[t + 12 len 20]
                mem[_778] = mem[t]
                require mem[t + 32] == mem[t + 44 len 20]
                mem[_778 + 32] = mem[t + 32]
                require mem[t + 64] == mem[t + 64]
                mem[_778 + 64] = mem[t + 64]
                require mem[t + 96] == mem[t + 96]
                mem[_778 + 96] = mem[t + 96]
                require mem[t + 128] == mem[t + 128]
                mem[_778 + 128] = mem[t + 128]
                require mem[t + 160] == mem[t + 172 len 20]
                mem[_778 + 160] = mem[t + 160]
                require mem[t + 192] == mem[t + 204 len 20]
                mem[_778 + 192] = mem[t + 192]
                require mem[t + 224] == mem[t + 224]
                mem[_778 + 224] = mem[t + 224]
                mem[u] = _778
                idx = idx + 1
                t = t + 256
                u = u + 32
                continue 
            _776 = mem[_639 + 32]
            require mem[_639 + 32] <= test266151307()
            require _639 + mem[_639 + 32] + 31 < _639 + return_data.size
            _780 = mem[_639 + mem[_639 + 32]]
            if mem[_639 + mem[_639 + 32]] > test266151307():
                revert with 'NH{q', 65
            _784 = mem[64]
            if mem[64] + floor32(mem[_639 + mem[_639 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_639 + mem[_639 + 32]]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[_639 + mem[_639 + 32]]) + 1
            mem[_784] = _780
            require _776 + (32 * _780) + 32 <= return_data.size
            idx = 0
            t = _639 + _776 + 32
            u = _784 + 32
            while idx < _780:
                _892 = mem[t]
                require mem[t] <= test266151307()
                require return_data.size + -_776 + -mem[t] - 32 >= 32
                _898 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                _902 = mem[_639 + _776 + _892 + 32]
                require mem[_639 + _776 + _892 + 32] <= test266151307()
                require _639 + _776 + _892 + mem[_639 + _776 + _892 + 32] + 63 < _639 + return_data.size
                _910 = mem[_639 + _776 + _892 + mem[_639 + _776 + _892 + 32] + 32]
                if mem[_639 + _776 + _892 + mem[_639 + _776 + _892 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                _913 = mem[64]
                if mem[64] + floor32(mem[_639 + _776 + _892 + mem[_639 + _776 + _892 + 32] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_639 + _776 + _892 + mem[_639 + _776 + _892 + 32] + 32]) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(mem[_639 + _776 + _892 + mem[_639 + _776 + _892 + 32] + 32]) + 1
                mem[_913] = _910
                require _776 + _892 + _902 + (256 * _910) + 64 <= return_data.size
                s = 0
                v = _639 + _776 + _892 + _902 + 64
                w = _913 + 32
                while s < _910:
                    require _639 + return_data.size - v >= 256
                    _985 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 256
                    require mem[v] == mem[v + 12 len 20]
                    mem[_985] = mem[v]
                    require mem[v + 32] == mem[v + 44 len 20]
                    mem[_985 + 32] = mem[v + 32]
                    require mem[v + 64] == mem[v + 64]
                    mem[_985 + 64] = mem[v + 64]
                    require mem[v + 96] == mem[v + 96]
                    mem[_985 + 96] = mem[v + 96]
                    require mem[v + 128] == mem[v + 128]
                    mem[_985 + 128] = mem[v + 128]
                    require mem[v + 160] == mem[v + 172 len 20]
                    mem[_985 + 160] = mem[v + 160]
                    require mem[v + 192] == mem[v + 204 len 20]
                    mem[_985 + 192] = mem[v + 192]
                    require mem[v + 224] == mem[v + 224]
                    mem[_985 + 224] = mem[v + 224]
                    mem[w] = _985
                    s = s + 1
                    v = v + 256
                    w = w + 32
                    continue 
                mem[_898] = _913
                mem[u] = _898
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            _897 = mem[64]
            mem[mem[64]] = address(s)
            mem[mem[64] + 32] = 96
            _907 = mem[floor32(('cd', 4).length) + 97]
            mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = mem[64] + 128
            while idx < _907:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_897 + 64] = (32 * _907) + 128
            _983 = mem[_784]
            mem[_897 + (32 * _907) + 128] = mem[_784]
            idx = 0
            s = _784 + 32
            t = _897 + (32 * _907) + (32 * _983) + 160
            u = _897 + (32 * _907) + 160
            while idx < _983:
                mem[u] = t + -_897 + -(32 * _907) - 160
                _1043 = mem[mem[s]]
                mem[t] = 32
                _1047 = mem[_1043]
                mem[t + 32] = mem[_1043]
                v = 0
                w = _1043 + 32
                x = t + 64
                while v < _1047:
                    _1074 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1074 + 44 len 20]
                    mem[x + 64] = mem[_1074 + 64]
                    mem[x + 96] = mem[_1074 + 96]
                    mem[x + 128] = mem[_1074 + 128]
                    mem[x + 160] = mem[_1074 + 172 len 20]
                    mem[x + 192] = mem[_1074 + 204 len 20]
                    mem[x + 224] = mem[_1074 + 224]
                    v = v + 1
                    w = w + 32
                    x = x + 256
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (256 * _1047) + 64
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
                _440 = mem[(32 * 3 * idx) + 128]
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -2:
                    revert with 'NH{q', 17
                if (3 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _456 = mem[(32 * (3 * idx) + 1) + 128]
                if idx and 3 > -1 / idx:
                    revert with 'NH{q', 17
                if 3 * idx > -3:
                    revert with 'NH{q', 17
                if (3 * idx) + 2 >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * 3 * idx) + 140 len 20])
                staticcall mem[(32 * 3 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _479 = mem[_475]
                require mem[_475] == mem[_475 + 12 len 20]
                mem[mem[64] + 4] = mem[_475 + 12 len 20]
                require ext_code.size(stor6)
                staticcall stor6.0x2f71da6c with:
                        gas gas_remaining wei
                       args address(_479)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _505 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _508 = mem[_505]
                require mem[_505] == mem[_505 + 12 len 20]
                require ext_code.size(address(_440))
                staticcall address(_440).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _536 = mem[_528]
                require mem[_528] == mem[_528 + 12 len 20]
                require ext_code.size(address(_440))
                staticcall address(_440).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _557 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _564 = mem[_557]
                require mem[_557] == mem[_557 + 12 len 20]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if _456 <= 0:
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_557 + 12 len 20]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_536)
                else:
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = address(_536)
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129] = address(_564)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _508
                continue 
            _432 = mem[64]
            mem[mem[64]] = 0x96eca84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = 64
            _442 = mem[floor32(('cd', 4).length) + 97]
            mem[mem[64] + 68] = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            t = floor32(('cd', 4).length) + 129
            u = mem[64] + 100
            while idx < _442:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _432 + (32 * _442) + -mem[64] + 96]
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
            t = _640 + _644 + 32
            u = _640 + ceil32(return_data.size) + 32
            while idx < _646:
                require _640 + return_data.size - t >= 256
                _779 = mem[64]
                if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 256
                require mem[t] == mem[t + 12 len 20]
                mem[_779] = mem[t]
                require mem[t + 32] == mem[t + 44 len 20]
                mem[_779 + 32] = mem[t + 32]
                require mem[t + 64] == mem[t + 64]
                mem[_779 + 64] = mem[t + 64]
                require mem[t + 96] == mem[t + 96]
                mem[_779 + 96] = mem[t + 96]
                require mem[t + 128] == mem[t + 128]
                mem[_779 + 128] = mem[t + 128]
                require mem[t + 160] == mem[t + 172 len 20]
                mem[_779 + 160] = mem[t + 160]
                require mem[t + 192] == mem[t + 204 len 20]
                mem[_779 + 192] = mem[t + 192]
                require mem[t + 224] == mem[t + 224]
                mem[_779 + 224] = mem[t + 224]
                mem[u] = _779
                idx = idx + 1
                t = t + 256
                u = u + 32
                continue 
            _777 = mem[_640 + 32]
            require mem[_640 + 32] <= test266151307()
            require _640 + mem[_640 + 32] + 31 < _640 + return_data.size
            _781 = mem[_640 + mem[_640 + 32]]
            if mem[_640 + mem[_640 + 32]] > test266151307():
                revert with 'NH{q', 65
            _785 = mem[64]
            if mem[64] + floor32(mem[_640 + mem[_640 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_640 + mem[_640 + 32]]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[_640 + mem[_640 + 32]]) + 1
            mem[_785] = _781
            require _777 + (32 * _781) + 32 <= return_data.size
            idx = 0
            t = _640 + _777 + 32
            u = _785 + 32
            while idx < _781:
                _893 = mem[t]
                require mem[t] <= test266151307()
                require return_data.size + -_777 + -mem[t] - 32 >= 32
                _900 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                _903 = mem[_640 + _777 + _893 + 32]
                require mem[_640 + _777 + _893 + 32] <= test266151307()
                require _640 + _777 + _893 + mem[_640 + _777 + _893 + 32] + 63 < _640 + return_data.size
                _911 = mem[_640 + _777 + _893 + mem[_640 + _777 + _893 + 32] + 32]
                if mem[_640 + _777 + _893 + mem[_640 + _777 + _893 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                _915 = mem[64]
                if mem[64] + floor32(mem[_640 + _777 + _893 + mem[_640 + _777 + _893 + 32] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_640 + _777 + _893 + mem[_640 + _777 + _893 + 32] + 32]) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(mem[_640 + _777 + _893 + mem[_640 + _777 + _893 + 32] + 32]) + 1
                mem[_915] = _911
                require _777 + _893 + _903 + (256 * _911) + 64 <= return_data.size
                s = 0
                v = _640 + _777 + _893 + _903 + 64
                w = _915 + 32
                while s < _911:
                    require _640 + return_data.size - v >= 256
                    _986 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 256
                    require mem[v] == mem[v + 12 len 20]
                    mem[_986] = mem[v]
                    require mem[v + 32] == mem[v + 44 len 20]
                    mem[_986 + 32] = mem[v + 32]
                    require mem[v + 64] == mem[v + 64]
                    mem[_986 + 64] = mem[v + 64]
                    require mem[v + 96] == mem[v + 96]
                    mem[_986 + 96] = mem[v + 96]
                    require mem[v + 128] == mem[v + 128]
                    mem[_986 + 128] = mem[v + 128]
                    require mem[v + 160] == mem[v + 172 len 20]
                    mem[_986 + 160] = mem[v + 160]
                    require mem[v + 192] == mem[v + 204 len 20]
                    mem[_986 + 192] = mem[v + 192]
                    require mem[v + 224] == mem[v + 224]
                    mem[_986 + 224] = mem[v + 224]
                    mem[w] = _986
                    s = s + 1
                    v = v + 256
                    w = w + 32
                    continue 
                mem[_900] = _915
                mem[u] = _900
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            _899 = mem[64]
            mem[mem[64]] = address(s)
            mem[mem[64] + 32] = 96
            _908 = mem[floor32(('cd', 4).length) + 97]
            mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = mem[64] + 128
            while idx < _908:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _908) + 128
            _984 = mem[_785]
            mem[_899 + (32 * _908) + 128] = mem[_785]
            idx = 0
            s = _785 + 32
            t = _899 + (32 * _908) + (32 * _984) + 160
            u = _899 + (32 * _908) + 160
            while idx < _984:
                mem[u] = t + -_899 + -(32 * _908) - 160
                _1045 = mem[mem[s]]
                mem[t] = 32
                _1048 = mem[_1045]
                mem[t + 32] = mem[_1045]
                v = 0
                w = _1045 + 32
                x = t + 64
                while v < _1048:
                    _1075 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1075 + 44 len 20]
                    mem[x + 64] = mem[_1075 + 64]
                    mem[x + 96] = mem[_1075 + 96]
                    mem[x + 128] = mem[_1075 + 128]
                    mem[x + 160] = mem[_1075 + 172 len 20]
                    mem[x + 192] = mem[_1075 + 204 len 20]
                    mem[x + 224] = mem[_1075 + 224]
                    v = v + 1
                    w = w + 32
                    x = x + 256
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (256 * _1048) + 64
                u = u + 32
                continue 
    else:
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _214 = mem[128]
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
        require ext_code.size(address(_214))
        staticcall address(_214).token0() with:
                gas gas_remaining wei
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(_214))
        staticcall address(_214).token1() with:
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
        _436 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64
        require mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 <= test266151307()
        require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 224 < floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + 193
        _443 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]
        if mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]) + 194 > test266151307() or floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 193 len 4], address(ext_call.return_data[0]) << 64 + 193]) + 194
        mem[floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + 193] = _443
        require _436 + (256 * _443) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _436 + 225
        t = floor32(('cd', 4).length) + (7 * ceil32(return_data.size)) + 225
        while idx < _443:
            require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + -s + 193 >= 256
            _641 = mem[64]
            if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 256
            require mem[s] == mem[s + 12 len 20]
            mem[_641] = mem[s]
            require mem[s + 32] == mem[s + 44 len 20]
            mem[_641 + 32] = mem[s + 32]
            require mem[s + 64] == mem[s + 64]
            mem[_641 + 64] = mem[s + 64]
            require mem[s + 96] == mem[s + 96]
            mem[_641 + 96] = mem[s + 96]
            require mem[s + 128] == mem[s + 128]
            mem[_641 + 128] = mem[s + 128]
            require mem[s + 160] == mem[s + 172 len 20]
            mem[_641 + 160] = mem[s + 160]
            require mem[s + 192] == mem[s + 204 len 20]
            mem[_641 + 192] = mem[s + 192]
            require mem[s + 224] == mem[s + 224]
            mem[_641 + 224] = mem[s + 224]
            mem[t] = _641
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        _638 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225]
        require mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] <= test266151307()
        require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 224 < floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + 193
        _642 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]
        if mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193] > test266151307():
            revert with 'NH{q', 65
        _647 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]) + 1
        mem[_647] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 225] + 193]
        require _638 + (32 * _642) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + 225
        t = _647 + 32
        while idx < _642:
            _775 = mem[s]
            require mem[s] <= test266151307()
            require return_data.size + -_638 + -mem[s] - 32 >= 32
            _783 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            _788 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225]
            require mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] <= test266151307()
            require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] + 256 < floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + 193
            _790 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] + 225]
            if mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] + 225] > test266151307():
                revert with 'NH{q', 65
            _796 = mem[64]
            if mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] + 225]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] + 225]) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + 225] + 225]) + 1
            mem[_796] = _790
            require _638 + _775 + _788 + (256 * _790) + 64 <= return_data.size
            u = 0
            v = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + _638 + _775 + _788 + 257
            w = _796 + 32
            while u < _790:
                require floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + return_data.size + -v + 193 >= 256
                _896 = mem[64]
                if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 256
                require mem[v] == mem[v + 12 len 20]
                mem[_896] = mem[v]
                require mem[v + 32] == mem[v + 44 len 20]
                mem[_896 + 32] = mem[v + 32]
                require mem[v + 64] == mem[v + 64]
                mem[_896 + 64] = mem[v + 64]
                require mem[v + 96] == mem[v + 96]
                mem[_896 + 96] = mem[v + 96]
                require mem[v + 128] == mem[v + 128]
                mem[_896 + 128] = mem[v + 128]
                require mem[v + 160] == mem[v + 172 len 20]
                mem[_896 + 160] = mem[v + 160]
                require mem[v + 192] == mem[v + 204 len 20]
                mem[_896 + 192] = mem[v + 192]
                require mem[v + 224] == mem[v + 224]
                mem[_896 + 224] = mem[v + 224]
                mem[w] = _896
                u = u + 1
                v = v + 256
                w = w + 32
                continue 
            mem[_783] = _796
            mem[t] = _783
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _782 = mem[64]
        mem[mem[64]] = address(ext_call.return_data[0])
        mem[mem[64] + 32] = 96
        _789 = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
        mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129
        t = mem[64] + 128
        while idx < _789:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_782 + 64] = (32 * _789) + 128
        _895 = mem[_647]
        mem[_782 + (32 * _789) + 128] = mem[_647]
        idx = 0
        s = _647 + 32
        t = _782 + (32 * _789) + (32 * _895) + 160
        u = _782 + (32 * _789) + 160
        while idx < _895:
            mem[u] = t + -_782 + -(32 * _789) - 160
            _982 = mem[mem[s]]
            mem[t] = 32
            _987 = mem[_982]
            mem[t + 32] = mem[_982]
            v = 0
            w = _982 + 32
            x = t + 64
            while v < _987:
                _1041 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1041 + 44 len 20]
                mem[x + 64] = mem[_1041 + 64]
                mem[x + 96] = mem[_1041 + 96]
                mem[x + 128] = mem[_1041 + 128]
                mem[x + 160] = mem[_1041 + 172 len 20]
                mem[x + 192] = mem[_1041 + 204 len 20]
                mem[x + 224] = mem[_1041 + 224]
                v = v + 1
                w = w + 32
                x = x + 256
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (256 * _987) + 64
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
