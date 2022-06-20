contract main {




// =====================  Runtime code  =====================


#
#  - getPairAddress(address arg1, address arg2)
#
address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    revert
}

function getTokensFromPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function sub_c055d955(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_26821aef(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(arg1):
        return 1, address(ext_call.return_data[0])
    return 0, address(ext_call.return_data[0])
}

function getBasePrice() payable {
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor2, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(ext_call.return_data[0]) == stor2:
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[0]):
                if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if 10^uint8(ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                return ext_call.return_data[50 len 14], Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0])
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and t * s > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[50 len 14], Mask(112, 0, ext_call.return_data[0]) * t * s
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[0]):
                if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                return ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[0])
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if 10^uint8(ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                return ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0])
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and t * s > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[0]) * t * s
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and t * s > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[50 len 14] * t * s, Mask(112, 0, ext_call.return_data[0])
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[50 len 14] * t * s, Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0])
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if u > -1 / u:
                revert with 'NH{q', 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = v * u
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and v * u > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        return ext_call.return_data[50 len 14] * t * s, Mask(112, 0, ext_call.return_data[0]) * v * u
    if address(ext_call.return_data[0]) != stor2:
        return 0
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[18 len 14], Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0])
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and t * s > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        return ext_call.return_data[18 len 14], Mask(112, 0, ext_call.return_data[32]) * t * s
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if 10^uint8(ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32])
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            return ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                   Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0])
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and t * s > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        return ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * t * s
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] and t * s > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        return ext_call.return_data[18 len 14] * t * s, Mask(112, 0, ext_call.return_data[32])
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if 10^uint8(ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        return ext_call.return_data[18 len 14] * t * s, Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0])
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and v * u > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    return ext_call.return_data[18 len 14] * t * s, Mask(112, 0, ext_call.return_data[32]) * v * u
}

function sub_922b94f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_117]
        require mem[_117] <= test266151307()
        require _117 + mem[_117] + 31 < _117 + return_data.size
        _123 = mem[_117 + mem[_117]]
        if mem[_117 + mem[_117]] > test266151307():
            revert with 'NH{q', 65
        if _117 + ceil32(return_data.size) + ceil32(ceil32(mem[_117 + mem[_117]])) + 1 > test266151307() or ceil32(ceil32(mem[_117 + mem[_117]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _117 + ceil32(return_data.size) + ceil32(ceil32(mem[_117 + mem[_117]])) + 1
        mem[_117 + ceil32(return_data.size)] = _123
        require _121 + _123 + 32 <= return_data.size
        mem[_117 + ceil32(return_data.size) + 32 len ceil32(_123)] = mem[_117 + _121 + 32 len ceil32(_123)]
        if ceil32(_123) <= _123:
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _227 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _235 = mem[_227]
            require mem[_227] == mem[_227 + 31 len 1]
            mem[mem[64] + 4] = msg.sender
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _251 = mem[_245]
            require mem[_245] == mem[_245]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor0
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _267 = mem[_261]
            require mem[_261] == mem[_261]
            _271 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = _5
            mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 192
                mem[mem[64] + ceil32(_5) + 192] = _123
                mem[mem[64] + ceil32(_5) + 224 len ceil32(_123)] = mem[_117 + ceil32(return_data.size) + 32 len ceil32(_123)]
                if ceil32(_123) > _123:
                    mem[mem[64] + ceil32(_5) + _123 + 224] = 0
                mem[mem[64] + 64] = uint8(_235)
            else:
                mem[mem[64] + _5 + 192] = 0
                mem[mem[64] + 32] = ceil32(_5) + 192
                mem[_271 + ceil32(_5) + 192] = _123
                mem[_271 + ceil32(_5) + 224 len ceil32(_123)] = mem[_117 + ceil32(return_data.size) + 32 len ceil32(_123)]
                if ceil32(_123) > _123:
                    mem[_271 + ceil32(_5) + _123 + 224] = 0
                mem[_271 + 64] = uint8(_235)
            mem[_271 + 96] = _251
            mem[_271 + 128] = _267
            return memory
              from mem[64]
               len _271 + ceil32(_5) + ceil32(_123) + -mem[64] + 224
        mem[_117 + ceil32(return_data.size) + _123 + 32] = 0
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _237 = mem[_233]
        require mem[_233] == mem[_233 + 31 len 1]
        mem[mem[64] + 4] = msg.sender
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _253 = mem[_249]
        require mem[_249] == mem[_249]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = stor0
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _269 = mem[_265]
        require mem[_265] == mem[_265]
        _273 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = _5
        mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 192
            mem[mem[64] + ceil32(_5) + 192] = _123
            mem[mem[64] + ceil32(_5) + 224 len ceil32(_123)] = mem[_117 + ceil32(return_data.size) + 32 len ceil32(_123)]
            if ceil32(_123) > _123:
                mem[mem[64] + ceil32(_5) + _123 + 224] = 0
            mem[mem[64] + 64] = uint8(_237)
        else:
            mem[mem[64] + _5 + 192] = 0
            mem[mem[64] + 32] = ceil32(_5) + 192
            mem[_273 + ceil32(_5) + 192] = _123
            mem[_273 + ceil32(_5) + 224 len ceil32(_123)] = mem[_117 + ceil32(return_data.size) + 32 len ceil32(_123)]
            if ceil32(_123) > _123:
                mem[_273 + ceil32(_5) + _123 + 224] = 0
            mem[_273 + 64] = uint8(_237)
        mem[_273 + 96] = _253
        mem[_273 + 128] = _269
        return memory
          from mem[64]
           len _273 + ceil32(_5) + ceil32(_123) + -mem[64] + 224
    mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _122 = mem[_120]
    require mem[_120] <= test266151307()
    require _120 + mem[_120] + 31 < _120 + return_data.size
    _124 = mem[_120 + mem[_120]]
    if mem[_120 + mem[_120]] > test266151307():
        revert with 'NH{q', 65
    if _120 + ceil32(return_data.size) + ceil32(ceil32(mem[_120 + mem[_120]])) + 1 > test266151307() or ceil32(ceil32(mem[_120 + mem[_120]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _120 + ceil32(return_data.size) + ceil32(ceil32(mem[_120 + mem[_120]])) + 1
    mem[_120 + ceil32(return_data.size)] = _124
    require _122 + _124 + 32 <= return_data.size
    mem[_120 + ceil32(return_data.size) + 32 len ceil32(_124)] = mem[_120 + _122 + 32 len ceil32(_124)]
    if ceil32(_124) <= _124:
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_230]
        require mem[_230] == mem[_230 + 31 len 1]
        mem[mem[64] + 4] = msg.sender
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _252 = mem[_247]
        require mem[_247] == mem[_247]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = stor0
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _268 = mem[_263]
        require mem[_263] == mem[_263]
        _272 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = _5
        mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 192
            mem[mem[64] + ceil32(_5) + 192] = _124
            mem[mem[64] + ceil32(_5) + 224 len ceil32(_124)] = mem[_120 + ceil32(return_data.size) + 32 len ceil32(_124)]
            if ceil32(_124) > _124:
                mem[mem[64] + ceil32(_5) + _124 + 224] = 0
            mem[mem[64] + 64] = uint8(_236)
        else:
            mem[mem[64] + _5 + 192] = 0
            mem[mem[64] + 32] = ceil32(_5) + 192
            mem[_272 + ceil32(_5) + 192] = _124
            mem[_272 + ceil32(_5) + 224 len ceil32(_124)] = mem[_120 + ceil32(return_data.size) + 32 len ceil32(_124)]
            if ceil32(_124) > _124:
                mem[_272 + ceil32(_5) + _124 + 224] = 0
            mem[_272 + 64] = uint8(_236)
        mem[_272 + 96] = _252
        mem[_272 + 128] = _268
        return memory
          from mem[64]
           len _272 + ceil32(_5) + ceil32(_124) + -mem[64] + 224
    mem[_120 + ceil32(return_data.size) + _124 + 32] = 0
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _234 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _238 = mem[_234]
    require mem[_234] == mem[_234 + 31 len 1]
    mem[mem[64] + 4] = msg.sender
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _254 = mem[_250]
    require mem[_250] == mem[_250]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = stor0
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, stor0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _266 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _270 = mem[_266]
    require mem[_266] == mem[_266]
    _274 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = _5
    mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 192] = 0
    mem[mem[64] + 32] = ceil32(_5) + 192
    mem[mem[64] + ceil32(_5) + 192] = _124
    mem[mem[64] + ceil32(_5) + 224 len ceil32(_124)] = mem[_120 + ceil32(return_data.size) + 32 len ceil32(_124)]
    if ceil32(_124) <= _124:
        mem[mem[64] + 64] = uint8(_238)
        mem[mem[64] + 96] = _254
        return Array(len=_5, data=mem[mem[64] + 192 len ceil32(_5) + ceil32(_124) + 32]), ceil32(_5) + 192, _238 << 248, _254, _270
    mem[mem[64] + ceil32(_5) + _124 + 224] = 0
    mem[mem[64] + 64] = uint8(_238)
    mem[_274 + 96] = _254
    mem[_274 + 128] = _270
    return memory
      from mem[64]
       len _274 + ceil32(_5) + ceil32(_124) + -mem[64] + 224
}

function sub_d824cb25(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg2).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor2, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(ext_call.return_data[0]) == stor2:
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[0]):
                if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14], 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    if address(ext_call.return_data[0]) == address(arg1):
                        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                    if address(ext_call.return_data[0]) != address(arg1):
                        return 0
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14], 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14], 
                       Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]),
                       0
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if 10^uint8(ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14], 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    if address(ext_call.return_data[0]) == address(arg1):
                        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                    if address(ext_call.return_data[0]) != address(arg1):
                        return 0
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14], 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14], 
                       Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                       0
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and t * s > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14], 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * t * s,
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14], 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * t * s,
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14], 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * t * s,
                   0
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[0]):
                if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    if address(ext_call.return_data[0]) == address(arg1):
                        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                    if address(ext_call.return_data[0]) != address(arg1):
                        return 0
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]),
                       0
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if 10^uint8(ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    if address(ext_call.return_data[0]) == address(arg1):
                        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                    if address(ext_call.return_data[0]) != address(arg1):
                        return 0
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                           Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                           0
                if address(ext_call.return_data[0]) != stor2:
                    return 0
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                       0
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and t * s > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * t * s,
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * t * s,
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]), 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * t * s,
                   0
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and t * s > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * t * s, 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * t * s, 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]),
                   0
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * t * s, 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * t * s, 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]),
                   0
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if u > -1 / u:
                revert with 'NH{q', 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = v * u
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and v * u > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * v * u > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * v * u,
                   0
        if address(ext_call.return_data[0]) != stor2:
            if address(ext_call.return_data[0]) == address(arg1):
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
            if address(ext_call.return_data[0]) != address(arg1):
                return 0
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * v * u > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * v * u,
                   0
        if address(ext_call.return_data[0]) != stor2:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * v * u > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] * t * s, 
               Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * v * u,
               0
    if address(ext_call.return_data[0]) != stor2:
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and 0 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 0 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
        else:
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and 0 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 0 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
            else:
                if address(ext_call.return_data[0]) == stor2:
                    if Mask(112, 0, ext_call.return_data[32]) and 0 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 0 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
        return 0
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14], 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14], 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14], 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]),
                   0
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14], 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14], 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14], 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                   0
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and t * s > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14], 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * t * s,
                   0
        if address(ext_call.return_data[0]) != stor2:
            if address(ext_call.return_data[0]) == address(arg1):
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
            if address(ext_call.return_data[0]) != address(arg1):
                return 0
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14], 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * t * s,
                   0
        if address(ext_call.return_data[0]) != stor2:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14], 
               Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * t * s,
               0
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if 10^uint8(ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]),
                   0
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if 10^uint8(ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                if address(ext_call.return_data[0]) == address(arg1):
                    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
                if address(ext_call.return_data[0]) != address(arg1):
                    return 0
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
            if address(ext_call.return_data[0]) == stor2:
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                       Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                       0
            if address(ext_call.return_data[0]) != stor2:
                return 0
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                   Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                   0
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and t * s > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * t * s,
                   0
        if address(ext_call.return_data[0]) != stor2:
            if address(ext_call.return_data[0]) == address(arg1):
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
            if address(ext_call.return_data[0]) != address(arg1):
                return 0
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * t * s,
                   0
        if address(ext_call.return_data[0]) != stor2:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]), 
               Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * t * s,
               0
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] and t * s > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]),
                   0
        if address(ext_call.return_data[0]) != stor2:
            if address(ext_call.return_data[0]) == address(arg1):
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
            if address(ext_call.return_data[0]) != address(arg1):
                return 0
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]),
                   0
        if address(ext_call.return_data[0]) != stor2:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] * t * s, 
               Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]),
               0
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if 10^uint8(ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                   0
        if address(ext_call.return_data[0]) != stor2:
            if address(ext_call.return_data[0]) == address(arg1):
                if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 17
                return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
            if address(ext_call.return_data[0]) != address(arg1):
                return 0
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
        if address(ext_call.return_data[0]) == stor2:
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * t * s, 
                   Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
                   0
        if address(ext_call.return_data[0]) != stor2:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] * t * s, 
               Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]),
               0
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and v * u > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == stor2:
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * v * u > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * t * s, 
               Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * v * u,
               0
    if address(ext_call.return_data[0]) != stor2:
        if address(ext_call.return_data[0]) == address(arg1):
            if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, 0
        if address(ext_call.return_data[0]) != address(arg1):
            return 0
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, 0
    if address(ext_call.return_data[0]) == stor2:
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[50 len 14] * v * u > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        return Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] * t * s, 
               Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) * v * u,
               0
    if address(ext_call.return_data[0]) != stor2:
        return 0
    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[18 len 14] * t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] * v * u > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    return Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] * t * s, 
           Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * v * u,
           0
}



}
