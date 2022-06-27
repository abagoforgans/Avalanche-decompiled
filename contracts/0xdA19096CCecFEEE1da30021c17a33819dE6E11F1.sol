contract main {




// =====================  Runtime code  =====================


#
#  - getTokenInfos(address arg1)
#
array of struct stor0;
mapping of uint256 stor1;
address ROUTERAddress;
address sub_eda0228fAddress;
address FACTORYAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address WETHAddress;
address DEVAddress;
address sub_57177625Address;

function FACTORY() payable {
    return FACTORYAddress
}

function ROUTER() payable {
    return ROUTERAddress
}

function sub_57177625(?) payable {
    return sub_57177625Address
}

function WETH() payable {
    return WETHAddress
}

function DEV() payable {
    return DEVAddress
}

function STATUS() payable {
    return bool(uint8(stor5.field_160))
}

function sub_eda0228f(?) payable {
    return sub_eda0228fAddress
}

function _fallback() payable {
    revert
}

function sub_8b59952c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if DEVAddress != msg.sender:
        revert with 0, 'admin: wut do you try?'
    sub_eda0228fAddress = address(arg1)
}

function setStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEVAddress != msg.sender:
        revert with 0, 'admin: wut do you try?'
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function addBaseToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEVAddress != msg.sender:
        revert with 0, 'admin: wut do you try?'
    if not stor1[address(arg1)]:
        stor0.length++
        stor0[stor0.length].field_0 = arg1
        stor0[stor0.length].field_160 = 0
        stor1[address(arg1)] = stor0.length
    emit BaseTokenAdded(arg1);
}

function sub_382e1ff8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if DEVAddress != msg.sender:
        revert with 0, 'admin: wut do you try?'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args DEVAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_06e82ad4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if DEVAddress != msg.sender:
        revert with 0, 'admin: wut do you try?'
    ROUTERAddress = address(arg1)
    staticcall ROUTERAddress.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    WETHAddress = ext_call.return_data[12 len 20]
    staticcall ROUTERAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    FACTORYAddress = ext_call.return_data[12 len 20]
}

function removeBaseToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEVAddress != msg.sender:
        revert with 0, 'admin: wut do you try?'
    if stor1[address(arg1)]:
        if stor1[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor0.length < 1:
            revert with 'NH{q', 17
        if stor0.length - 1 >= stor0.length:
            revert with 'NH{q', 50
        if stor1[address(arg1)] - 1 >= stor0.length:
            revert with 'NH{q', 50
        stor0[stor1[address(arg1)]].field_0 = stor0[stor0.length].field_0
        if stor1[address(arg1)] - 1 > -2:
            revert with 'NH{q', 17
        stor1[stor0[stor0.length].field_0] = stor1[address(arg1)]
        if not stor0.length:
            revert with 'NH{q', 49
        stor0[stor0.length].field_0 = 0
        stor0.length--
        stor1[address(arg1)] = 0
    emit BaseTokenRemoved(arg1);
}

function getBaseTokens() payable {
    if stor0.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
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
       len (64 * stor0.length) + -mem[64] + 192
}

function sub_167b571c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        s = 0
        t = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_70] == mem[_70 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _80 = mem[_78]
            require mem[_78] == mem[_78 + 12 len 20]
            mem[mem[64] + 4] = mem[_78 + 12 len 20]
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_80)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == mem[_86]
            if mem[_86] <= t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor0[idx].field_0
            t = mem[_86]
            continue 
    else:
        mem[128 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        t = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_71] == mem[_71 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _81 = mem[_79]
            require mem[_79] == mem[_79 + 12 len 20]
            mem[mem[64] + 4] = mem[_79 + 12 len 20]
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_81)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == mem[_87]
            if mem[_87] <= t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor0[idx].field_0
            t = mem[_87]
            continue 
    if not address(s):
        revert with 0, 'No Liquidity Pool found!'
    return address(s)
}

function sub_7f26e34b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        s = 0
        t = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_88] == mem[_88 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _142 = mem[_135]
            require mem[_135] == mem[_135 + 12 len 20]
            mem[mem[64] + 4] = mem[_135 + 12 len 20]
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_142)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_165] == mem[_165]
            if mem[_165] <= t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor0[idx].field_0
            t = mem[_165]
            continue 
        if not address(s):
            revert with 0, 'No Liquidity Pool found!'
        _48 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_48]:
            revert with 'NH{q', 50
        mem[_48 + 32] = address(arg1)
        if 1 >= mem[_48]:
            revert with 'NH{q', 50
        if address(s) == WETHAddress:
            mem[_48 + 64] = WETHAddress
            mem[_48 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_48 + 100] = arg2
            mem[_48 + 132] = 64
            mem[_48 + 164] = mem[_48]
            idx = 0
            s = _48 + 32
            t = _48 + 196
            while idx < mem[_48]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _48 + (32 * mem[_48]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _213 = mem[_209]
            require mem[_209] <= test266151307()
            require _209 + mem[_209] + 31 < _209 + return_data.size
            _217 = mem[_209 + mem[_209]]
            if mem[_209 + mem[_209]] > test266151307():
                revert with 'NH{q', 65
            if _209 + ceil32(return_data.size) + floor32(mem[_209 + mem[_209]]) + 1 > test266151307() or floor32(mem[_209 + mem[_209]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _209 + ceil32(return_data.size) + floor32(mem[_209 + mem[_209]]) + 1
            mem[_209 + ceil32(return_data.size)] = _217
            require _213 + (32 * _217) + 32 <= return_data.size
            idx = _209 + _213 + 32
            s = _209 + ceil32(return_data.size) + 32
            while idx < _209 + _213 + (32 * _217) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _217:
                revert with 'NH{q', 50
            _302 = mem[_209 + ceil32(return_data.size) + 64]
            _307 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_307]:
                revert with 'NH{q', 50
            mem[_307 + 32] = address(arg1)
            if 1 >= mem[_307]:
                revert with 'NH{q', 50
            mem[_307 + 64] = WETHAddress
            mem[_307 + 96] = _302
            mem[_307 + 128] = 64
            mem[_307 + 160] = mem[_307]
            idx = 0
            s = _307 + 32
            t = _307 + 192
            while idx < mem[_307]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _307 + (32 * mem[_307]) + -mem[64] + 192
        mem[_48 + 64] = address(s)
        mem[_48 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_48 + 100] = arg2
        mem[_48 + 132] = 64
        mem[_48 + 164] = mem[_48]
        idx = 0
        t = _48 + 32
        u = _48 + 196
        while idx < mem[_48]:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _48 + (32 * mem[_48]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _212 = mem[_208]
        require mem[_208] <= test266151307()
        require _208 + mem[_208] + 31 < _208 + return_data.size
        _216 = mem[_208 + mem[_208]]
        if mem[_208 + mem[_208]] > test266151307():
            revert with 'NH{q', 65
        if _208 + ceil32(return_data.size) + floor32(mem[_208 + mem[_208]]) + 1 > test266151307() or floor32(mem[_208 + mem[_208]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _208 + ceil32(return_data.size) + floor32(mem[_208 + mem[_208]]) + 1
        mem[_208 + ceil32(return_data.size)] = _216
        require _212 + (32 * _216) + 32 <= return_data.size
        idx = _208 + _212 + 32
        t = _208 + ceil32(return_data.size) + 32
        while idx < _208 + _212 + (32 * _216) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _216:
            revert with 'NH{q', 50
        _300 = mem[_208 + ceil32(return_data.size) + 64]
        if 0 >= mem[_48]:
            revert with 'NH{q', 50
        mem[_48 + 32] = address(s)
        if 1 >= mem[_48]:
            revert with 'NH{q', 50
        mem[_48 + 64] = WETHAddress
        _310 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _300
        mem[mem[64] + 36] = 64
        _318 = mem[_48]
        mem[mem[64] + 68] = mem[_48]
        idx = 0
        t = _48 + 32
        u = mem[64] + 100
        while idx < _318:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _310 + (32 * _318) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _368 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _370 = mem[_368]
        require mem[_368] <= test266151307()
        require _368 + mem[_368] + 31 < _368 + return_data.size
        _372 = mem[_368 + mem[_368]]
        if mem[_368 + mem[_368]] > test266151307():
            revert with 'NH{q', 65
        if _368 + ceil32(return_data.size) + floor32(mem[_368 + mem[_368]]) + 1 > test266151307() or floor32(mem[_368 + mem[_368]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _368 + ceil32(return_data.size) + floor32(mem[_368 + mem[_368]]) + 1
        mem[_368 + ceil32(return_data.size)] = _372
        require _370 + (32 * _372) + 32 <= return_data.size
        idx = _368 + _370 + 32
        t = _368 + ceil32(return_data.size) + 32
        while idx < _368 + _370 + (32 * _372) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _372:
            revert with 'NH{q', 50
        _402 = mem[_368 + ceil32(return_data.size) + 64]
        _404 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_404]:
            revert with 'NH{q', 50
        mem[_404 + 32] = address(arg1)
        if 1 >= mem[_404]:
            revert with 'NH{q', 50
        mem[_404 + 64] = address(s)
        if 2 >= mem[_404]:
            revert with 'NH{q', 50
        mem[_404 + 96] = WETHAddress
        mem[_404 + 128] = _402
        mem[_404 + 160] = 64
        mem[_404 + 192] = mem[_404]
        idx = 0
        s = _404 + 32
        t = _404 + 224
        while idx < mem[_404]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _404 + (32 * mem[_404]) + -mem[64] + 224
    mem[128 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    idx = 0
    s = 0
    t = 0
    while idx < stor0.length:
        if stor0.length <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= stor0.length:
            revert with 'NH{q', 50
        mem[0] = 0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor0[idx].field_0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor0[idx].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), stor0[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_89] == mem[_89 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor0[idx].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), stor0[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _143 = mem[_137]
        require mem[_137] == mem[_137 + 12 len 20]
        mem[mem[64] + 4] = mem[_137 + 12 len 20]
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(_143)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == mem[_167]
        if mem[_167] <= t:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor0[idx].field_0
        t = mem[_167]
        continue 
    if not address(s):
        revert with 0, 'No Liquidity Pool found!'
    _50 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_50]:
        revert with 'NH{q', 50
    mem[_50 + 32] = address(arg1)
    if 1 >= mem[_50]:
        revert with 'NH{q', 50
    if address(s) == WETHAddress:
        mem[_50 + 64] = WETHAddress
        mem[_50 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_50 + 100] = arg2
        mem[_50 + 132] = 64
        mem[_50 + 164] = mem[_50]
        idx = 0
        s = _50 + 32
        t = _50 + 196
        while idx < mem[_50]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _50 + (32 * mem[_50]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _215 = mem[_211]
        require mem[_211] <= test266151307()
        require _211 + mem[_211] + 31 < _211 + return_data.size
        _219 = mem[_211 + mem[_211]]
        if mem[_211 + mem[_211]] > test266151307():
            revert with 'NH{q', 65
        if _211 + ceil32(return_data.size) + floor32(mem[_211 + mem[_211]]) + 1 > test266151307() or floor32(mem[_211 + mem[_211]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _211 + ceil32(return_data.size) + floor32(mem[_211 + mem[_211]]) + 1
        mem[_211 + ceil32(return_data.size)] = _219
        require _215 + (32 * _219) + 32 <= return_data.size
        idx = _211 + _215 + 32
        s = _211 + ceil32(return_data.size) + 32
        while idx < _211 + _215 + (32 * _219) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _219:
            revert with 'NH{q', 50
        _305 = mem[_211 + ceil32(return_data.size) + 64]
        _309 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_309]:
            revert with 'NH{q', 50
        mem[_309 + 32] = address(arg1)
        if 1 >= mem[_309]:
            revert with 'NH{q', 50
        mem[_309 + 64] = WETHAddress
        mem[_309 + 96] = _305
        mem[_309 + 128] = 64
        mem[_309 + 160] = mem[_309]
        idx = 0
        s = _309 + 32
        t = _309 + 192
        while idx < mem[_309]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _309 + (32 * mem[_309]) + -mem[64] + 192
    mem[_50 + 64] = address(s)
    mem[_50 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_50 + 100] = arg2
    mem[_50 + 132] = 64
    mem[_50 + 164] = mem[_50]
    idx = 0
    t = _50 + 32
    u = _50 + 196
    while idx < mem[_50]:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _50 + (32 * mem[_50]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _210 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _214 = mem[_210]
    require mem[_210] <= test266151307()
    require _210 + mem[_210] + 31 < _210 + return_data.size
    _218 = mem[_210 + mem[_210]]
    if mem[_210 + mem[_210]] > test266151307():
        revert with 'NH{q', 65
    if _210 + ceil32(return_data.size) + floor32(mem[_210 + mem[_210]]) + 1 > test266151307() or floor32(mem[_210 + mem[_210]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _210 + ceil32(return_data.size) + floor32(mem[_210 + mem[_210]]) + 1
    mem[_210 + ceil32(return_data.size)] = _218
    require _214 + (32 * _218) + 32 <= return_data.size
    idx = _210 + _214 + 32
    t = _210 + ceil32(return_data.size) + 32
    while idx < _210 + _214 + (32 * _218) + 32:
        require mem[idx] == mem[idx]
        mem[t] = mem[idx]
        idx = idx + 32
        t = t + 32
        continue 
    if 1 >= _218:
        revert with 'NH{q', 50
    _303 = mem[_210 + ceil32(return_data.size) + 64]
    if 0 >= mem[_50]:
        revert with 'NH{q', 50
    mem[_50 + 32] = address(s)
    if 1 >= mem[_50]:
        revert with 'NH{q', 50
    mem[_50 + 64] = WETHAddress
    _311 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _303
    mem[mem[64] + 36] = 64
    _319 = mem[_50]
    mem[mem[64] + 68] = mem[_50]
    idx = 0
    t = _50 + 32
    u = mem[64] + 100
    while idx < _319:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _311 + (32 * _319) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _369 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _371 = mem[_369]
    require mem[_369] <= test266151307()
    require _369 + mem[_369] + 31 < _369 + return_data.size
    _373 = mem[_369 + mem[_369]]
    if mem[_369 + mem[_369]] > test266151307():
        revert with 'NH{q', 65
    if _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1 > test266151307() or floor32(mem[_369 + mem[_369]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1
    mem[_369 + ceil32(return_data.size)] = _373
    require _371 + (32 * _373) + 32 <= return_data.size
    idx = _369 + _371 + 32
    t = _369 + ceil32(return_data.size) + 32
    while idx < _369 + _371 + (32 * _373) + 32:
        require mem[idx] == mem[idx]
        mem[t] = mem[idx]
        idx = idx + 32
        t = t + 32
        continue 
    if 1 >= _373:
        revert with 'NH{q', 50
    _403 = mem[_369 + ceil32(return_data.size) + 64]
    _405 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_405]:
        revert with 'NH{q', 50
    mem[_405 + 32] = address(arg1)
    if 1 >= mem[_405]:
        revert with 'NH{q', 50
    mem[_405 + 64] = address(s)
    if 2 >= mem[_405]:
        revert with 'NH{q', 50
    mem[_405 + 96] = WETHAddress
    mem[_405 + 128] = _403
    mem[_405 + 160] = 64
    mem[_405 + 192] = mem[_405]
    idx = 0
    s = _405 + 32
    t = _405 + 224
    while idx < mem[_405]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _405 + (32 * mem[_405]) + -mem[64] + 224
}

function sub_8340dc82(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        s = 0
        t = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_88] == mem[_88 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _142 = mem[_135]
            require mem[_135] == mem[_135 + 12 len 20]
            mem[mem[64] + 4] = mem[_135 + 12 len 20]
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_142)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_165] == mem[_165]
            if mem[_165] <= t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor0[idx].field_0
            t = mem[_165]
            continue 
        if not address(s):
            revert with 0, 'No Liquidity Pool found!'
        _48 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_48]:
            revert with 'NH{q', 50
        mem[_48 + 32] = WETHAddress
        if 1 >= mem[_48]:
            revert with 'NH{q', 50
        if address(s) == WETHAddress:
            mem[_48 + 64] = address(arg1)
            mem[_48 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_48 + 100] = arg2
            mem[_48 + 132] = 64
            mem[_48 + 164] = mem[_48]
            idx = 0
            s = _48 + 32
            t = _48 + 196
            while idx < mem[_48]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _48 + (32 * mem[_48]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _213 = mem[_209]
            require mem[_209] <= test266151307()
            require _209 + mem[_209] + 31 < _209 + return_data.size
            _217 = mem[_209 + mem[_209]]
            if mem[_209 + mem[_209]] > test266151307():
                revert with 'NH{q', 65
            if _209 + ceil32(return_data.size) + floor32(mem[_209 + mem[_209]]) + 1 > test266151307() or floor32(mem[_209 + mem[_209]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _209 + ceil32(return_data.size) + floor32(mem[_209 + mem[_209]]) + 1
            mem[_209 + ceil32(return_data.size)] = _217
            require _213 + (32 * _217) + 32 <= return_data.size
            idx = _209 + _213 + 32
            s = _209 + ceil32(return_data.size) + 32
            while idx < _209 + _213 + (32 * _217) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _217:
                revert with 'NH{q', 50
            _302 = mem[_209 + ceil32(return_data.size) + 64]
            _307 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_307]:
                revert with 'NH{q', 50
            mem[_307 + 32] = WETHAddress
            if 1 >= mem[_307]:
                revert with 'NH{q', 50
            mem[_307 + 64] = address(arg1)
            mem[_307 + 96] = _302
            mem[_307 + 128] = 64
            mem[_307 + 160] = mem[_307]
            idx = 0
            s = _307 + 32
            t = _307 + 192
            while idx < mem[_307]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _307 + (32 * mem[_307]) + -mem[64] + 192
        mem[_48 + 64] = address(s)
        mem[_48 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_48 + 100] = arg2
        mem[_48 + 132] = 64
        mem[_48 + 164] = mem[_48]
        idx = 0
        t = _48 + 32
        u = _48 + 196
        while idx < mem[_48]:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _48 + (32 * mem[_48]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _212 = mem[_208]
        require mem[_208] <= test266151307()
        require _208 + mem[_208] + 31 < _208 + return_data.size
        _216 = mem[_208 + mem[_208]]
        if mem[_208 + mem[_208]] > test266151307():
            revert with 'NH{q', 65
        if _208 + ceil32(return_data.size) + floor32(mem[_208 + mem[_208]]) + 1 > test266151307() or floor32(mem[_208 + mem[_208]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _208 + ceil32(return_data.size) + floor32(mem[_208 + mem[_208]]) + 1
        mem[_208 + ceil32(return_data.size)] = _216
        require _212 + (32 * _216) + 32 <= return_data.size
        idx = _208 + _212 + 32
        t = _208 + ceil32(return_data.size) + 32
        while idx < _208 + _212 + (32 * _216) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _216:
            revert with 'NH{q', 50
        _300 = mem[_208 + ceil32(return_data.size) + 64]
        if 0 >= mem[_48]:
            revert with 'NH{q', 50
        mem[_48 + 32] = address(s)
        if 1 >= mem[_48]:
            revert with 'NH{q', 50
        mem[_48 + 64] = address(arg1)
        _310 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _300
        mem[mem[64] + 36] = 64
        _318 = mem[_48]
        mem[mem[64] + 68] = mem[_48]
        idx = 0
        t = _48 + 32
        u = mem[64] + 100
        while idx < _318:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _310 + (32 * _318) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _368 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _370 = mem[_368]
        require mem[_368] <= test266151307()
        require _368 + mem[_368] + 31 < _368 + return_data.size
        _372 = mem[_368 + mem[_368]]
        if mem[_368 + mem[_368]] > test266151307():
            revert with 'NH{q', 65
        if _368 + ceil32(return_data.size) + floor32(mem[_368 + mem[_368]]) + 1 > test266151307() or floor32(mem[_368 + mem[_368]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _368 + ceil32(return_data.size) + floor32(mem[_368 + mem[_368]]) + 1
        mem[_368 + ceil32(return_data.size)] = _372
        require _370 + (32 * _372) + 32 <= return_data.size
        idx = _368 + _370 + 32
        t = _368 + ceil32(return_data.size) + 32
        while idx < _368 + _370 + (32 * _372) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _372:
            revert with 'NH{q', 50
        _402 = mem[_368 + ceil32(return_data.size) + 64]
        _404 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_404]:
            revert with 'NH{q', 50
        mem[_404 + 32] = WETHAddress
        if 1 >= mem[_404]:
            revert with 'NH{q', 50
        mem[_404 + 64] = address(s)
        if 2 >= mem[_404]:
            revert with 'NH{q', 50
        mem[_404 + 96] = address(arg1)
        mem[_404 + 128] = _402
        mem[_404 + 160] = 64
        mem[_404 + 192] = mem[_404]
        idx = 0
        s = _404 + 32
        t = _404 + 224
        while idx < mem[_404]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _404 + (32 * mem[_404]) + -mem[64] + 224
    mem[128 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    idx = 0
    s = 0
    t = 0
    while idx < stor0.length:
        if stor0.length <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= stor0.length:
            revert with 'NH{q', 50
        mem[0] = 0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor0[idx].field_0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor0[idx].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), stor0[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_89] == mem[_89 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor0[idx].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), stor0[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _143 = mem[_137]
        require mem[_137] == mem[_137 + 12 len 20]
        mem[mem[64] + 4] = mem[_137 + 12 len 20]
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(_143)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == mem[_167]
        if mem[_167] <= t:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor0[idx].field_0
        t = mem[_167]
        continue 
    if not address(s):
        revert with 0, 'No Liquidity Pool found!'
    _50 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_50]:
        revert with 'NH{q', 50
    mem[_50 + 32] = WETHAddress
    if 1 >= mem[_50]:
        revert with 'NH{q', 50
    if address(s) == WETHAddress:
        mem[_50 + 64] = address(arg1)
        mem[_50 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_50 + 100] = arg2
        mem[_50 + 132] = 64
        mem[_50 + 164] = mem[_50]
        idx = 0
        s = _50 + 32
        t = _50 + 196
        while idx < mem[_50]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _50 + (32 * mem[_50]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _215 = mem[_211]
        require mem[_211] <= test266151307()
        require _211 + mem[_211] + 31 < _211 + return_data.size
        _219 = mem[_211 + mem[_211]]
        if mem[_211 + mem[_211]] > test266151307():
            revert with 'NH{q', 65
        if _211 + ceil32(return_data.size) + floor32(mem[_211 + mem[_211]]) + 1 > test266151307() or floor32(mem[_211 + mem[_211]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _211 + ceil32(return_data.size) + floor32(mem[_211 + mem[_211]]) + 1
        mem[_211 + ceil32(return_data.size)] = _219
        require _215 + (32 * _219) + 32 <= return_data.size
        idx = _211 + _215 + 32
        s = _211 + ceil32(return_data.size) + 32
        while idx < _211 + _215 + (32 * _219) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _219:
            revert with 'NH{q', 50
        _305 = mem[_211 + ceil32(return_data.size) + 64]
        _309 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_309]:
            revert with 'NH{q', 50
        mem[_309 + 32] = WETHAddress
        if 1 >= mem[_309]:
            revert with 'NH{q', 50
        mem[_309 + 64] = address(arg1)
        mem[_309 + 96] = _305
        mem[_309 + 128] = 64
        mem[_309 + 160] = mem[_309]
        idx = 0
        s = _309 + 32
        t = _309 + 192
        while idx < mem[_309]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _309 + (32 * mem[_309]) + -mem[64] + 192
    mem[_50 + 64] = address(s)
    mem[_50 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_50 + 100] = arg2
    mem[_50 + 132] = 64
    mem[_50 + 164] = mem[_50]
    idx = 0
    t = _50 + 32
    u = _50 + 196
    while idx < mem[_50]:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _50 + (32 * mem[_50]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _210 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _214 = mem[_210]
    require mem[_210] <= test266151307()
    require _210 + mem[_210] + 31 < _210 + return_data.size
    _218 = mem[_210 + mem[_210]]
    if mem[_210 + mem[_210]] > test266151307():
        revert with 'NH{q', 65
    if _210 + ceil32(return_data.size) + floor32(mem[_210 + mem[_210]]) + 1 > test266151307() or floor32(mem[_210 + mem[_210]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _210 + ceil32(return_data.size) + floor32(mem[_210 + mem[_210]]) + 1
    mem[_210 + ceil32(return_data.size)] = _218
    require _214 + (32 * _218) + 32 <= return_data.size
    idx = _210 + _214 + 32
    t = _210 + ceil32(return_data.size) + 32
    while idx < _210 + _214 + (32 * _218) + 32:
        require mem[idx] == mem[idx]
        mem[t] = mem[idx]
        idx = idx + 32
        t = t + 32
        continue 
    if 1 >= _218:
        revert with 'NH{q', 50
    _303 = mem[_210 + ceil32(return_data.size) + 64]
    if 0 >= mem[_50]:
        revert with 'NH{q', 50
    mem[_50 + 32] = address(s)
    if 1 >= mem[_50]:
        revert with 'NH{q', 50
    mem[_50 + 64] = address(arg1)
    _311 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _303
    mem[mem[64] + 36] = 64
    _319 = mem[_50]
    mem[mem[64] + 68] = mem[_50]
    idx = 0
    t = _50 + 32
    u = mem[64] + 100
    while idx < _319:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _311 + (32 * _319) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _369 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _371 = mem[_369]
    require mem[_369] <= test266151307()
    require _369 + mem[_369] + 31 < _369 + return_data.size
    _373 = mem[_369 + mem[_369]]
    if mem[_369 + mem[_369]] > test266151307():
        revert with 'NH{q', 65
    if _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1 > test266151307() or floor32(mem[_369 + mem[_369]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1
    mem[_369 + ceil32(return_data.size)] = _373
    require _371 + (32 * _373) + 32 <= return_data.size
    idx = _369 + _371 + 32
    t = _369 + ceil32(return_data.size) + 32
    while idx < _369 + _371 + (32 * _373) + 32:
        require mem[idx] == mem[idx]
        mem[t] = mem[idx]
        idx = idx + 32
        t = t + 32
        continue 
    if 1 >= _373:
        revert with 'NH{q', 50
    _403 = mem[_369 + ceil32(return_data.size) + 64]
    _405 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_405]:
        revert with 'NH{q', 50
    mem[_405 + 32] = WETHAddress
    if 1 >= mem[_405]:
        revert with 'NH{q', 50
    mem[_405 + 64] = address(s)
    if 2 >= mem[_405]:
        revert with 'NH{q', 50
    mem[_405 + 96] = address(arg1)
    mem[_405 + 128] = _403
    mem[_405 + 160] = 64
    mem[_405 + 192] = mem[_405]
    idx = 0
    s = _405 + 32
    t = _405 + 224
    while idx < mem[_405]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _405 + (32 * mem[_405]) + -mem[64] + 224
}

function sub_ca033f75(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if stor0.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        s = 0
        t = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor0[idx].field_0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == mem[_103 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _130 = mem[_128]
            require mem[_128] == mem[_128 + 12 len 20]
            mem[mem[64] + 4] = mem[_128 + 12 len 20]
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_130)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_148] == mem[_148]
            if mem[_148] <= t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor0[idx].field_0
            t = mem[_148]
            continue 
        if not address(s):
            revert with 0, 'No Liquidity Pool found!'
        if stor0.length > test266151307():
            revert with 'NH{q', 65
        _56 = mem[64]
        mem[mem[64]] = stor0.length
        mem[64] = mem[64] + (32 * stor0.length) + 32
        if not stor0.length:
            idx = 0
            t = 0
            u = 0
            while idx < stor0.length:
                if stor0.length <= idx:
                    revert with 0, 'EnumerableSet: index out of bounds'
                if idx >= stor0.length:
                    revert with 'NH{q', 50
                mem[0] = 0
                if idx >= mem[_56]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _56 + 32] = stor0[idx].field_0
                if idx >= mem[_56]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = stor0[idx].field_0
                staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), stor0[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_264] == mem[_264 + 12 len 20]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = stor0[idx].field_0
                staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), stor0[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _362 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _372 = mem[_362]
                require mem[_362] == mem[_362 + 12 len 20]
                mem[mem[64] + 4] = mem[_362 + 12 len 20]
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_372)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == mem[_424]
                if mem[_424] <= u:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                if idx >= mem[_56]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = stor0[idx].field_0
                u = mem[_424]
                continue 
            if not address(t):
                revert with 0, 'No Liquidity Pool found!'
            _184 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 32] = address(arg1)
            if 1 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 64] = address(s)
            mem[_184 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_184 + 100] = arg3
            mem[_184 + 132] = 64
            mem[_184 + 164] = mem[_184]
            if address(s) == address(t):
                idx = 0
                t = _184 + 32
                u = _184 + 196
                while idx < mem[_184]:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall ROUTERAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _184 + (32 * mem[_184]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _625 = mem[_617]
                require mem[_617] <= test266151307()
                require _617 + mem[_617] + 31 < _617 + return_data.size
                _633 = mem[_617 + mem[_617]]
                if mem[_617 + mem[_617]] > test266151307():
                    revert with 'NH{q', 65
                if _617 + ceil32(return_data.size) + floor32(mem[_617 + mem[_617]]) + 1 > test266151307() or floor32(mem[_617 + mem[_617]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _617 + ceil32(return_data.size) + floor32(mem[_617 + mem[_617]]) + 1
                mem[_617 + ceil32(return_data.size)] = _633
                require _625 + (32 * _633) + 32 <= return_data.size
                idx = _617 + _625 + 32
                t = _617 + ceil32(return_data.size) + 32
                while idx < _617 + _625 + (32 * _633) + 32:
                    require mem[idx] == mem[idx]
                    mem[t] = mem[idx]
                    idx = idx + 32
                    t = t + 32
                    continue 
                if 1 >= _633:
                    revert with 'NH{q', 50
                _914 = mem[_617 + ceil32(return_data.size) + 64]
                if 0 >= mem[_184]:
                    revert with 'NH{q', 50
                mem[_184 + 32] = address(s)
                if 1 >= mem[_184]:
                    revert with 'NH{q', 50
                mem[_184 + 64] = address(arg2)
                _937 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _914
                mem[mem[64] + 36] = 64
                _945 = mem[_184]
                mem[mem[64] + 68] = mem[_184]
                idx = 0
                t = _184 + 32
                u = mem[64] + 100
                while idx < _945:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall ROUTERAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _937 + (32 * _945) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1169 = mem[_1161]
                require mem[_1161] <= test266151307()
                require _1161 + mem[_1161] + 31 < _1161 + return_data.size
                _1177 = mem[_1161 + mem[_1161]]
                if mem[_1161 + mem[_1161]] > test266151307():
                    revert with 'NH{q', 65
                if _1161 + ceil32(return_data.size) + floor32(mem[_1161 + mem[_1161]]) + 1 > test266151307() or floor32(mem[_1161 + mem[_1161]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1161 + ceil32(return_data.size) + floor32(mem[_1161 + mem[_1161]]) + 1
                mem[_1161 + ceil32(return_data.size)] = _1177
                require _1169 + (32 * _1177) + 32 <= return_data.size
                idx = _1161 + _1169 + 32
                t = _1161 + ceil32(return_data.size) + 32
                while idx < _1161 + _1169 + (32 * _1177) + 32:
                    require mem[idx] == mem[idx]
                    mem[t] = mem[idx]
                    idx = idx + 32
                    t = t + 32
                    continue 
                if 1 >= _1177:
                    revert with 'NH{q', 50
                _1354 = mem[_1161 + ceil32(return_data.size) + 64]
                _1365 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_1365]:
                    revert with 'NH{q', 50
                mem[_1365 + 32] = address(arg1)
                if 1 >= mem[_1365]:
                    revert with 'NH{q', 50
                mem[_1365 + 64] = address(s)
                if 2 >= mem[_1365]:
                    revert with 'NH{q', 50
                mem[_1365 + 96] = address(arg2)
                mem[_1365 + 128] = _1354
                mem[_1365 + 160] = 64
                mem[_1365 + 192] = mem[_1365]
                idx = 0
                s = _1365 + 32
                t = _1365 + 224
                while idx < mem[_1365]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1365 + (32 * mem[_1365]) + -mem[64] + 224
            idx = 0
            u = _184 + 32
            v = _184 + 196
            while idx < mem[_184]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _184 + (32 * mem[_184]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _624 = mem[_616]
            require mem[_616] <= test266151307()
            require _616 + mem[_616] + 31 < _616 + return_data.size
            _632 = mem[_616 + mem[_616]]
            if mem[_616 + mem[_616]] > test266151307():
                revert with 'NH{q', 65
            if _616 + ceil32(return_data.size) + floor32(mem[_616 + mem[_616]]) + 1 > test266151307() or floor32(mem[_616 + mem[_616]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _616 + ceil32(return_data.size) + floor32(mem[_616 + mem[_616]]) + 1
            mem[_616 + ceil32(return_data.size)] = _632
            require _624 + (32 * _632) + 32 <= return_data.size
            idx = _616 + _624 + 32
            u = _616 + ceil32(return_data.size) + 32
            while idx < _616 + _624 + (32 * _632) + 32:
                require mem[idx] == mem[idx]
                mem[u] = mem[idx]
                idx = idx + 32
                u = u + 32
                continue 
            if 1 >= _632:
                revert with 'NH{q', 50
            _912 = mem[_616 + ceil32(return_data.size) + 64]
            if 0 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 32] = address(s)
            if 1 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 64] = address(t)
            _936 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _912
            mem[mem[64] + 36] = 64
            _944 = mem[_184]
            mem[mem[64] + 68] = mem[_184]
            idx = 0
            u = _184 + 32
            v = mem[64] + 100
            while idx < _944:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _936 + (32 * _944) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1160 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1168 = mem[_1160]
            require mem[_1160] <= test266151307()
            require _1160 + mem[_1160] + 31 < _1160 + return_data.size
            _1176 = mem[_1160 + mem[_1160]]
            if mem[_1160 + mem[_1160]] > test266151307():
                revert with 'NH{q', 65
            if _1160 + ceil32(return_data.size) + floor32(mem[_1160 + mem[_1160]]) + 1 > test266151307() or floor32(mem[_1160 + mem[_1160]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1160 + ceil32(return_data.size) + floor32(mem[_1160 + mem[_1160]]) + 1
            mem[_1160 + ceil32(return_data.size)] = _1176
            require _1168 + (32 * _1176) + 32 <= return_data.size
            idx = _1160 + _1168 + 32
            u = _1160 + ceil32(return_data.size) + 32
            while idx < _1160 + _1168 + (32 * _1176) + 32:
                require mem[idx] == mem[idx]
                mem[u] = mem[idx]
                idx = idx + 32
                u = u + 32
                continue 
            if 1 >= _1176:
                revert with 'NH{q', 50
            _1352 = mem[_1160 + ceil32(return_data.size) + 64]
            if 0 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 32] = address(t)
            if 1 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 64] = address(arg2)
            _1372 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1352
            mem[mem[64] + 36] = 64
            _1392 = mem[_184]
            mem[mem[64] + 68] = mem[_184]
            idx = 0
            u = _184 + 32
            v = mem[64] + 100
            while idx < _1392:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1372 + (32 * _1392) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1496 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1500 = mem[_1496]
            require mem[_1496] <= test266151307()
            require _1496 + mem[_1496] + 31 < _1496 + return_data.size
            _1504 = mem[_1496 + mem[_1496]]
            if mem[_1496 + mem[_1496]] > test266151307():
                revert with 'NH{q', 65
            if _1496 + ceil32(return_data.size) + floor32(mem[_1496 + mem[_1496]]) + 1 > test266151307() or floor32(mem[_1496 + mem[_1496]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1496 + ceil32(return_data.size) + floor32(mem[_1496 + mem[_1496]]) + 1
            mem[_1496 + ceil32(return_data.size)] = _1504
            require _1500 + (32 * _1504) + 32 <= return_data.size
            idx = _1496 + _1500 + 32
            u = _1496 + ceil32(return_data.size) + 32
            while idx < _1496 + _1500 + (32 * _1504) + 32:
                require mem[idx] == mem[idx]
                mem[u] = mem[idx]
                idx = idx + 32
                u = u + 32
                continue 
            if 1 >= _1504:
                revert with 'NH{q', 50
            _1568 = mem[_1496 + ceil32(return_data.size) + 64]
            _1572 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            if 0 >= mem[_1572]:
                revert with 'NH{q', 50
            mem[_1572 + 32] = address(arg1)
            if 1 >= mem[_1572]:
                revert with 'NH{q', 50
            mem[_1572 + 64] = address(s)
            if 2 >= mem[_1572]:
                revert with 'NH{q', 50
            mem[_1572 + 96] = address(t)
            if 3 >= mem[_1572]:
                revert with 'NH{q', 50
            mem[_1572 + 128] = address(arg2)
            mem[_1572 + 160] = _1568
            mem[_1572 + 192] = 64
            mem[_1572 + 224] = mem[_1572]
            idx = 0
            s = _1572 + 32
            t = _1572 + 256
            while idx < mem[_1572]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1572 + (32 * mem[_1572]) + -mem[64] + 256
        mem[_56 + 32 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        t = 0
        u = 0
        v = 0
        while t < stor0.length:
            if stor0.length <= t:
                revert with 0, 'EnumerableSet: index out of bounds'
            if t >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if t >= mem[_56]:
                revert with 'NH{q', 50
            mem[(32 * t) + _56 + 32] = stor0[t].field_0
            if t >= mem[_56]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = stor0[t].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), stor0[t].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u
                v = v
                continue 
            _265 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_265] == mem[_265 + 12 len 20]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = stor0[t].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), stor0[t].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _373 = mem[_365]
            require mem[_365] == mem[_365 + 12 len 20]
            mem[mem[64] + 4] = mem[_365 + 12 len 20]
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_373)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_425] == mem[_425]
            if mem[_425] <= v:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u
                v = v
                continue 
            if t >= mem[_56]:
                revert with 'NH{q', 50
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = stor0[t].field_0
            v = mem[_425]
            continue 
        if not address(u):
            revert with 0, 'No Liquidity Pool found!'
        _186 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_186]:
            revert with 'NH{q', 50
        mem[_186 + 32] = address(arg1)
        if 1 >= mem[_186]:
            revert with 'NH{q', 50
        mem[_186 + 64] = address(s)
        mem[_186 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_186 + 100] = arg3
        mem[_186 + 132] = 64
        mem[_186 + 164] = mem[_186]
        if address(s) == address(u):
            t = 0
            u = _186 + 32
            v = _186 + 196
            while t < mem[_186]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _186 + (32 * mem[_186]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _627 = mem[_619]
            require mem[_619] <= test266151307()
            require _619 + mem[_619] + 31 < _619 + return_data.size
            _635 = mem[_619 + mem[_619]]
            if mem[_619 + mem[_619]] > test266151307():
                revert with 'NH{q', 65
            if _619 + ceil32(return_data.size) + floor32(mem[_619 + mem[_619]]) + 1 > test266151307() or floor32(mem[_619 + mem[_619]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _619 + ceil32(return_data.size) + floor32(mem[_619 + mem[_619]]) + 1
            mem[_619 + ceil32(return_data.size)] = _635
            require _627 + (32 * _635) + 32 <= return_data.size
            t = _619 + _627 + 32
            u = _619 + ceil32(return_data.size) + 32
            while t < _619 + _627 + (32 * _635) + 32:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            if 1 >= _635:
                revert with 'NH{q', 50
            _918 = mem[_619 + ceil32(return_data.size) + 64]
            if 0 >= mem[_186]:
                revert with 'NH{q', 50
            mem[_186 + 32] = address(s)
            if 1 >= mem[_186]:
                revert with 'NH{q', 50
            mem[_186 + 64] = address(arg2)
            _939 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _918
            mem[mem[64] + 36] = 64
            _947 = mem[_186]
            mem[mem[64] + 68] = mem[_186]
            t = 0
            u = _186 + 32
            v = mem[64] + 100
            while t < _947:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _939 + (32 * _947) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1163 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1171 = mem[_1163]
            require mem[_1163] <= test266151307()
            require _1163 + mem[_1163] + 31 < _1163 + return_data.size
            _1179 = mem[_1163 + mem[_1163]]
            if mem[_1163 + mem[_1163]] > test266151307():
                revert with 'NH{q', 65
            if _1163 + ceil32(return_data.size) + floor32(mem[_1163 + mem[_1163]]) + 1 > test266151307() or floor32(mem[_1163 + mem[_1163]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1163 + ceil32(return_data.size) + floor32(mem[_1163 + mem[_1163]]) + 1
            mem[_1163 + ceil32(return_data.size)] = _1179
            require _1171 + (32 * _1179) + 32 <= return_data.size
            idx = _1163 + _1171 + 32
            t = _1163 + ceil32(return_data.size) + 32
            while idx < _1163 + _1171 + (32 * _1179) + 32:
                require mem[idx] == mem[idx]
                mem[t] = mem[idx]
                idx = idx + 32
                t = t + 32
                continue 
            if 1 >= _1179:
                revert with 'NH{q', 50
            _1357 = mem[_1163 + ceil32(return_data.size) + 64]
            _1367 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_1367]:
                revert with 'NH{q', 50
            mem[_1367 + 32] = address(arg1)
            if 1 >= mem[_1367]:
                revert with 'NH{q', 50
            mem[_1367 + 64] = address(s)
            if 2 >= mem[_1367]:
                revert with 'NH{q', 50
            mem[_1367 + 96] = address(arg2)
            mem[_1367 + 128] = _1357
            mem[_1367 + 160] = 64
            mem[_1367 + 192] = mem[_1367]
            idx = 0
            s = _1367 + 32
            t = _1367 + 224
            while idx < mem[_1367]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1367 + (32 * mem[_1367]) + -mem[64] + 224
        t = 0
        v = _186 + 32
        w = _186 + 196
        while t < mem[_186]:
            mem[w] = mem[v + 12 len 20]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _186 + (32 * mem[_186]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _618 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _626 = mem[_618]
        require mem[_618] <= test266151307()
        require _618 + mem[_618] + 31 < _618 + return_data.size
        _634 = mem[_618 + mem[_618]]
        if mem[_618 + mem[_618]] > test266151307():
            revert with 'NH{q', 65
        if _618 + ceil32(return_data.size) + floor32(mem[_618 + mem[_618]]) + 1 > test266151307() or floor32(mem[_618 + mem[_618]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _618 + ceil32(return_data.size) + floor32(mem[_618 + mem[_618]]) + 1
        mem[_618 + ceil32(return_data.size)] = _634
        require _626 + (32 * _634) + 32 <= return_data.size
        t = _618 + _626 + 32
        v = _618 + ceil32(return_data.size) + 32
        while t < _618 + _626 + (32 * _634) + 32:
            require mem[t] == mem[t]
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        if 1 >= _634:
            revert with 'NH{q', 50
        _916 = mem[_618 + ceil32(return_data.size) + 64]
        if 0 >= mem[_186]:
            revert with 'NH{q', 50
        mem[_186 + 32] = address(s)
        if 1 >= mem[_186]:
            revert with 'NH{q', 50
        mem[_186 + 64] = address(u)
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _916
        mem[mem[64] + 36] = 64
        _946 = mem[_186]
        mem[mem[64] + 68] = mem[_186]
        t = 0
        v = _186 + 32
        w = mem[64] + 100
        while t < _946:
            mem[w] = mem[v + 12 len 20]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _916, 64, mem[mem[64] + 68 len (32 * _946) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1162 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1170 = mem[_1162]
        require mem[_1162] <= test266151307()
        require _1162 + mem[_1162] + 31 < _1162 + return_data.size
        _1178 = mem[_1162 + mem[_1162]]
        if mem[_1162 + mem[_1162]] > test266151307():
            revert with 'NH{q', 65
        if _1162 + ceil32(return_data.size) + floor32(mem[_1162 + mem[_1162]]) + 1 > test266151307() or floor32(mem[_1162 + mem[_1162]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1162 + ceil32(return_data.size) + floor32(mem[_1162 + mem[_1162]]) + 1
        mem[_1162 + ceil32(return_data.size)] = _1178
        require _1170 + (32 * _1178) + 32 <= return_data.size
        idx = _1162 + _1170 + 32
        t = _1162 + ceil32(return_data.size) + 32
        while idx < _1162 + _1170 + (32 * _1178) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _1178:
            revert with 'NH{q', 50
        _1355 = mem[_1162 + ceil32(return_data.size) + 64]
        if 0 >= mem[_186]:
            revert with 'NH{q', 50
        mem[_186 + 32] = address(u)
        if 1 >= mem[_186]:
            revert with 'NH{q', 50
        mem[_186 + 64] = address(arg2)
        _1373 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1355
        mem[mem[64] + 36] = 64
        _1393 = mem[_186]
        mem[mem[64] + 68] = mem[_186]
        idx = 0
        t = _186 + 32
        v = mem[64] + 100
        while idx < _1393:
            mem[v] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            v = v + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1373 + (32 * _1393) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1497 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1501 = mem[_1497]
        require mem[_1497] <= test266151307()
        require _1497 + mem[_1497] + 31 < _1497 + return_data.size
        _1505 = mem[_1497 + mem[_1497]]
        if mem[_1497 + mem[_1497]] > test266151307():
            revert with 'NH{q', 65
        if _1497 + ceil32(return_data.size) + floor32(mem[_1497 + mem[_1497]]) + 1 > test266151307() or floor32(mem[_1497 + mem[_1497]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1497 + ceil32(return_data.size) + floor32(mem[_1497 + mem[_1497]]) + 1
        mem[_1497 + ceil32(return_data.size)] = _1505
        require _1501 + (32 * _1505) + 32 <= return_data.size
        idx = _1497 + _1501 + 32
        t = _1497 + ceil32(return_data.size) + 32
        while idx < _1497 + _1501 + (32 * _1505) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _1505:
            revert with 'NH{q', 50
        _1569 = mem[_1497 + ceil32(return_data.size) + 64]
        _1573 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 160
        if 0 >= mem[_1573]:
            revert with 'NH{q', 50
        mem[_1573 + 32] = address(arg1)
        if 1 >= mem[_1573]:
            revert with 'NH{q', 50
        mem[_1573 + 64] = address(s)
        if 2 >= mem[_1573]:
            revert with 'NH{q', 50
        mem[_1573 + 96] = address(u)
        if 3 >= mem[_1573]:
            revert with 'NH{q', 50
        mem[_1573 + 128] = address(arg2)
        mem[_1573 + 160] = _1569
        mem[_1573 + 192] = 64
        mem[_1573 + 224] = mem[_1573]
        idx = 0
        s = _1573 + 32
        t = _1573 + 256
        while idx < mem[_1573]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1573 + (32 * mem[_1573]) + -mem[64] + 256
    mem[128 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    idx = 0
    s = 0
    t = 0
    while idx < stor0.length:
        if stor0.length <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= stor0.length:
            revert with 'NH{q', 50
        mem[0] = 0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor0[idx].field_0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor0[idx].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), stor0[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] == mem[_105 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor0[idx].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), stor0[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _131 = mem[_129]
        require mem[_129] == mem[_129 + 12 len 20]
        mem[mem[64] + 4] = mem[_129 + 12 len 20]
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(_131)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_149] == mem[_149]
        if mem[_149] <= t:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor0[idx].field_0
        t = mem[_149]
        continue 
    if not address(s):
        revert with 0, 'No Liquidity Pool found!'
    if stor0.length > test266151307():
        revert with 'NH{q', 65
    _59 = mem[64]
    mem[mem[64]] = stor0.length
    mem[64] = mem[64] + (32 * stor0.length) + 32
    if not stor0.length:
        idx = 0
        t = 0
        u = 0
        while idx < stor0.length:
            if stor0.length <= idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            if idx >= mem[_59]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _59 + 32] = stor0[idx].field_0
            if idx >= mem[_59]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                u = u
                continue 
            _266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_266] == mem[_266 + 12 len 20]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = stor0[idx].field_0
            staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), stor0[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _374 = mem[_368]
            require mem[_368] == mem[_368 + 12 len 20]
            mem[mem[64] + 4] = mem[_368 + 12 len 20]
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_374)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_426] == mem[_426]
            if mem[_426] <= u:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                u = u
                continue 
            if idx >= mem[_59]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = stor0[idx].field_0
            u = mem[_426]
            continue 
        if not address(t):
            revert with 0, 'No Liquidity Pool found!'
        _188 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_188]:
            revert with 'NH{q', 50
        mem[_188 + 32] = address(arg1)
        if 1 >= mem[_188]:
            revert with 'NH{q', 50
        mem[_188 + 64] = address(s)
        mem[_188 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_188 + 100] = arg3
        mem[_188 + 132] = 64
        mem[_188 + 164] = mem[_188]
        if address(s) == address(t):
            idx = 0
            t = _188 + 32
            u = _188 + 196
            while idx < mem[_188]:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _188 + (32 * mem[_188]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _621 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _629 = mem[_621]
            require mem[_621] <= test266151307()
            require _621 + mem[_621] + 31 < _621 + return_data.size
            _637 = mem[_621 + mem[_621]]
            if mem[_621 + mem[_621]] > test266151307():
                revert with 'NH{q', 65
            if _621 + ceil32(return_data.size) + floor32(mem[_621 + mem[_621]]) + 1 > test266151307() or floor32(mem[_621 + mem[_621]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _621 + ceil32(return_data.size) + floor32(mem[_621 + mem[_621]]) + 1
            mem[_621 + ceil32(return_data.size)] = _637
            require _629 + (32 * _637) + 32 <= return_data.size
            idx = _621 + _629 + 32
            t = _621 + ceil32(return_data.size) + 32
            while idx < _621 + _629 + (32 * _637) + 32:
                require mem[idx] == mem[idx]
                mem[t] = mem[idx]
                idx = idx + 32
                t = t + 32
                continue 
            if 1 >= _637:
                revert with 'NH{q', 50
            _922 = mem[_621 + ceil32(return_data.size) + 64]
            if 0 >= mem[_188]:
                revert with 'NH{q', 50
            mem[_188 + 32] = address(s)
            if 1 >= mem[_188]:
                revert with 'NH{q', 50
            mem[_188 + 64] = address(arg2)
            _941 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _922
            mem[mem[64] + 36] = 64
            _949 = mem[_188]
            mem[mem[64] + 68] = mem[_188]
            idx = 0
            t = _188 + 32
            u = mem[64] + 100
            while idx < _949:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _941 + (32 * _949) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1165 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1173 = mem[_1165]
            require mem[_1165] <= test266151307()
            require _1165 + mem[_1165] + 31 < _1165 + return_data.size
            _1181 = mem[_1165 + mem[_1165]]
            if mem[_1165 + mem[_1165]] > test266151307():
                revert with 'NH{q', 65
            if _1165 + ceil32(return_data.size) + floor32(mem[_1165 + mem[_1165]]) + 1 > test266151307() or floor32(mem[_1165 + mem[_1165]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1165 + ceil32(return_data.size) + floor32(mem[_1165 + mem[_1165]]) + 1
            mem[_1165 + ceil32(return_data.size)] = _1181
            require _1173 + (32 * _1181) + 32 <= return_data.size
            idx = _1165 + _1173 + 32
            t = _1165 + ceil32(return_data.size) + 32
            while idx < _1165 + _1173 + (32 * _1181) + 32:
                require mem[idx] == mem[idx]
                mem[t] = mem[idx]
                idx = idx + 32
                t = t + 32
                continue 
            if 1 >= _1181:
                revert with 'NH{q', 50
            _1360 = mem[_1165 + ceil32(return_data.size) + 64]
            _1369 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_1369]:
                revert with 'NH{q', 50
            mem[_1369 + 32] = address(arg1)
            if 1 >= mem[_1369]:
                revert with 'NH{q', 50
            mem[_1369 + 64] = address(s)
            if 2 >= mem[_1369]:
                revert with 'NH{q', 50
            mem[_1369 + 96] = address(arg2)
            mem[_1369 + 128] = _1360
            mem[_1369 + 160] = 64
            mem[_1369 + 192] = mem[_1369]
            idx = 0
            s = _1369 + 32
            t = _1369 + 224
            while idx < mem[_1369]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1369 + (32 * mem[_1369]) + -mem[64] + 224
        idx = 0
        u = _188 + 32
        v = _188 + 196
        while idx < mem[_188]:
            mem[v] = mem[u + 12 len 20]
            idx = idx + 1
            u = u + 32
            v = v + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _188 + (32 * mem[_188]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _620 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _628 = mem[_620]
        require mem[_620] <= test266151307()
        require _620 + mem[_620] + 31 < _620 + return_data.size
        _636 = mem[_620 + mem[_620]]
        if mem[_620 + mem[_620]] > test266151307():
            revert with 'NH{q', 65
        if _620 + ceil32(return_data.size) + floor32(mem[_620 + mem[_620]]) + 1 > test266151307() or floor32(mem[_620 + mem[_620]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _620 + ceil32(return_data.size) + floor32(mem[_620 + mem[_620]]) + 1
        mem[_620 + ceil32(return_data.size)] = _636
        require _628 + (32 * _636) + 32 <= return_data.size
        idx = _620 + _628 + 32
        u = _620 + ceil32(return_data.size) + 32
        while idx < _620 + _628 + (32 * _636) + 32:
            require mem[idx] == mem[idx]
            mem[u] = mem[idx]
            idx = idx + 32
            u = u + 32
            continue 
        if 1 >= _636:
            revert with 'NH{q', 50
        _920 = mem[_620 + ceil32(return_data.size) + 64]
        if 0 >= mem[_188]:
            revert with 'NH{q', 50
        mem[_188 + 32] = address(s)
        if 1 >= mem[_188]:
            revert with 'NH{q', 50
        mem[_188 + 64] = address(t)
        _940 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _920
        mem[mem[64] + 36] = 64
        _948 = mem[_188]
        mem[mem[64] + 68] = mem[_188]
        idx = 0
        u = _188 + 32
        v = mem[64] + 100
        while idx < _948:
            mem[v] = mem[u + 12 len 20]
            idx = idx + 1
            u = u + 32
            v = v + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _940 + (32 * _948) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1164 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1172 = mem[_1164]
        require mem[_1164] <= test266151307()
        require _1164 + mem[_1164] + 31 < _1164 + return_data.size
        _1180 = mem[_1164 + mem[_1164]]
        if mem[_1164 + mem[_1164]] > test266151307():
            revert with 'NH{q', 65
        if _1164 + ceil32(return_data.size) + floor32(mem[_1164 + mem[_1164]]) + 1 > test266151307() or floor32(mem[_1164 + mem[_1164]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1164 + ceil32(return_data.size) + floor32(mem[_1164 + mem[_1164]]) + 1
        mem[_1164 + ceil32(return_data.size)] = _1180
        require _1172 + (32 * _1180) + 32 <= return_data.size
        idx = _1164 + _1172 + 32
        u = _1164 + ceil32(return_data.size) + 32
        while idx < _1164 + _1172 + (32 * _1180) + 32:
            require mem[idx] == mem[idx]
            mem[u] = mem[idx]
            idx = idx + 32
            u = u + 32
            continue 
        if 1 >= _1180:
            revert with 'NH{q', 50
        _1358 = mem[_1164 + ceil32(return_data.size) + 64]
        if 0 >= mem[_188]:
            revert with 'NH{q', 50
        mem[_188 + 32] = address(t)
        if 1 >= mem[_188]:
            revert with 'NH{q', 50
        mem[_188 + 64] = address(arg2)
        _1374 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1358
        mem[mem[64] + 36] = 64
        _1394 = mem[_188]
        mem[mem[64] + 68] = mem[_188]
        idx = 0
        u = _188 + 32
        v = mem[64] + 100
        while idx < _1394:
            mem[v] = mem[u + 12 len 20]
            idx = idx + 1
            u = u + 32
            v = v + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1374 + (32 * _1394) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1498 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1502 = mem[_1498]
        require mem[_1498] <= test266151307()
        require _1498 + mem[_1498] + 31 < _1498 + return_data.size
        _1506 = mem[_1498 + mem[_1498]]
        if mem[_1498 + mem[_1498]] > test266151307():
            revert with 'NH{q', 65
        if _1498 + ceil32(return_data.size) + floor32(mem[_1498 + mem[_1498]]) + 1 > test266151307() or floor32(mem[_1498 + mem[_1498]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1498 + ceil32(return_data.size) + floor32(mem[_1498 + mem[_1498]]) + 1
        mem[_1498 + ceil32(return_data.size)] = _1506
        require _1502 + (32 * _1506) + 32 <= return_data.size
        idx = _1498 + _1502 + 32
        u = _1498 + ceil32(return_data.size) + 32
        while idx < _1498 + _1502 + (32 * _1506) + 32:
            require mem[idx] == mem[idx]
            mem[u] = mem[idx]
            idx = idx + 32
            u = u + 32
            continue 
        if 1 >= _1506:
            revert with 'NH{q', 50
        _1570 = mem[_1498 + ceil32(return_data.size) + 64]
        _1574 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 160
        if 0 >= mem[_1574]:
            revert with 'NH{q', 50
        mem[_1574 + 32] = address(arg1)
        if 1 >= mem[_1574]:
            revert with 'NH{q', 50
        mem[_1574 + 64] = address(s)
        if 2 >= mem[_1574]:
            revert with 'NH{q', 50
        mem[_1574 + 96] = address(t)
        if 3 >= mem[_1574]:
            revert with 'NH{q', 50
        mem[_1574 + 128] = address(arg2)
        mem[_1574 + 160] = _1570
        mem[_1574 + 192] = 64
        mem[_1574 + 224] = mem[_1574]
        idx = 0
        s = _1574 + 32
        t = _1574 + 256
        while idx < mem[_1574]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1574 + (32 * mem[_1574]) + -mem[64] + 256
    mem[_59 + 32 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    t = 0
    u = 0
    v = 0
    while t < stor0.length:
        if stor0.length <= t:
            revert with 0, 'EnumerableSet: index out of bounds'
        if t >= stor0.length:
            revert with 'NH{q', 50
        mem[0] = 0
        if t >= mem[_59]:
            revert with 'NH{q', 50
        mem[(32 * t) + _59 + 32] = stor0[t].field_0
        if t >= mem[_59]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = stor0[t].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), stor0[t].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = u
            v = v
            continue 
        _267 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_267] == mem[_267 + 12 len 20]
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = stor0[t].field_0
        staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), stor0[t].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _375 = mem[_371]
        require mem[_371] == mem[_371 + 12 len 20]
        mem[mem[64] + 4] = mem[_371 + 12 len 20]
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(_375)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_427] == mem[_427]
        if mem[_427] <= v:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = u
            v = v
            continue 
        if t >= mem[_59]:
            revert with 'NH{q', 50
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        u = stor0[t].field_0
        v = mem[_427]
        continue 
    if not address(u):
        revert with 0, 'No Liquidity Pool found!'
    _190 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 32] = address(arg1)
    if 1 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 64] = address(s)
    mem[_190 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_190 + 100] = arg3
    mem[_190 + 132] = 64
    mem[_190 + 164] = mem[_190]
    if address(s) == address(u):
        t = 0
        u = _190 + 32
        v = _190 + 196
        while t < mem[_190]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _190 + (32 * mem[_190]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _623 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _631 = mem[_623]
        require mem[_623] <= test266151307()
        require _623 + mem[_623] + 31 < _623 + return_data.size
        _639 = mem[_623 + mem[_623]]
        if mem[_623 + mem[_623]] > test266151307():
            revert with 'NH{q', 65
        if _623 + ceil32(return_data.size) + floor32(mem[_623 + mem[_623]]) + 1 > test266151307() or floor32(mem[_623 + mem[_623]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _623 + ceil32(return_data.size) + floor32(mem[_623 + mem[_623]]) + 1
        mem[_623 + ceil32(return_data.size)] = _639
        require _631 + (32 * _639) + 32 <= return_data.size
        t = _623 + _631 + 32
        u = _623 + ceil32(return_data.size) + 32
        while t < _623 + _631 + (32 * _639) + 32:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        if 1 >= _639:
            revert with 'NH{q', 50
        _926 = mem[_623 + ceil32(return_data.size) + 64]
        if 0 >= mem[_190]:
            revert with 'NH{q', 50
        mem[_190 + 32] = address(s)
        if 1 >= mem[_190]:
            revert with 'NH{q', 50
        mem[_190 + 64] = address(arg2)
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _926
        mem[mem[64] + 36] = 64
        _951 = mem[_190]
        mem[mem[64] + 68] = mem[_190]
        t = 0
        u = _190 + 32
        v = mem[64] + 100
        while t < _951:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _926, 64, mem[mem[64] + 68 len (32 * _951) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1167 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1175 = mem[_1167]
        require mem[_1167] <= test266151307()
        require _1167 + mem[_1167] + 31 < _1167 + return_data.size
        _1183 = mem[_1167 + mem[_1167]]
        if mem[_1167 + mem[_1167]] > test266151307():
            revert with 'NH{q', 65
        if _1167 + ceil32(return_data.size) + floor32(mem[_1167 + mem[_1167]]) + 1 > test266151307() or floor32(mem[_1167 + mem[_1167]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1167 + ceil32(return_data.size) + floor32(mem[_1167 + mem[_1167]]) + 1
        mem[_1167 + ceil32(return_data.size)] = _1183
        require _1175 + (32 * _1183) + 32 <= return_data.size
        idx = _1167 + _1175 + 32
        t = _1167 + ceil32(return_data.size) + 32
        while idx < _1167 + _1175 + (32 * _1183) + 32:
            require mem[idx] == mem[idx]
            mem[t] = mem[idx]
            idx = idx + 32
            t = t + 32
            continue 
        if 1 >= _1183:
            revert with 'NH{q', 50
        _1363 = mem[_1167 + ceil32(return_data.size) + 64]
        _1371 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1371]:
            revert with 'NH{q', 50
        mem[_1371 + 32] = address(arg1)
        if 1 >= mem[_1371]:
            revert with 'NH{q', 50
        mem[_1371 + 64] = address(s)
        if 2 >= mem[_1371]:
            revert with 'NH{q', 50
        mem[_1371 + 96] = address(arg2)
        mem[_1371 + 128] = _1363
        mem[_1371 + 160] = 64
        mem[_1371 + 192] = mem[_1371]
        idx = 0
        s = _1371 + 32
        t = _1371 + 224
        while idx < mem[_1371]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1371 + (32 * mem[_1371]) + -mem[64] + 224
    t = 0
    v = _190 + 32
    w = _190 + 196
    while t < mem[_190]:
        mem[w] = mem[v + 12 len 20]
        t = t + 1
        v = v + 32
        w = w + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _190 + (32 * mem[_190]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _622 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _630 = mem[_622]
    require mem[_622] <= test266151307()
    require _622 + mem[_622] + 31 < _622 + return_data.size
    _638 = mem[_622 + mem[_622]]
    if mem[_622 + mem[_622]] > test266151307():
        revert with 'NH{q', 65
    if _622 + ceil32(return_data.size) + floor32(mem[_622 + mem[_622]]) + 1 > test266151307() or floor32(mem[_622 + mem[_622]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _622 + ceil32(return_data.size) + floor32(mem[_622 + mem[_622]]) + 1
    mem[_622 + ceil32(return_data.size)] = _638
    require _630 + (32 * _638) + 32 <= return_data.size
    t = _622 + _630 + 32
    v = _622 + ceil32(return_data.size) + 32
    while t < _622 + _630 + (32 * _638) + 32:
        require mem[t] == mem[t]
        mem[v] = mem[t]
        t = t + 32
        v = v + 32
        continue 
    if 1 >= _638:
        revert with 'NH{q', 50
    _924 = mem[_622 + ceil32(return_data.size) + 64]
    if 0 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 32] = address(s)
    if 1 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 64] = address(u)
    _942 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _924
    mem[mem[64] + 36] = 64
    _950 = mem[_190]
    mem[mem[64] + 68] = mem[_190]
    t = 0
    v = _190 + 32
    w = mem[64] + 100
    while t < _950:
        mem[w] = mem[v + 12 len 20]
        t = t + 1
        v = v + 32
        w = w + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _942 + (32 * _950) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1166 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1174 = mem[_1166]
    require mem[_1166] <= test266151307()
    require _1166 + mem[_1166] + 31 < _1166 + return_data.size
    _1182 = mem[_1166 + mem[_1166]]
    if mem[_1166 + mem[_1166]] > test266151307():
        revert with 'NH{q', 65
    if _1166 + ceil32(return_data.size) + floor32(mem[_1166 + mem[_1166]]) + 1 > test266151307() or floor32(mem[_1166 + mem[_1166]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1166 + ceil32(return_data.size) + floor32(mem[_1166 + mem[_1166]]) + 1
    mem[_1166 + ceil32(return_data.size)] = _1182
    require _1174 + (32 * _1182) + 32 <= return_data.size
    idx = _1166 + _1174 + 32
    t = _1166 + ceil32(return_data.size) + 32
    while idx < _1166 + _1174 + (32 * _1182) + 32:
        require mem[idx] == mem[idx]
        mem[t] = mem[idx]
        idx = idx + 32
        t = t + 32
        continue 
    if 1 >= _1182:
        revert with 'NH{q', 50
    _1361 = mem[_1166 + ceil32(return_data.size) + 64]
    if 0 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 32] = address(u)
    if 1 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 64] = address(arg2)
    _1375 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1361
    mem[mem[64] + 36] = 64
    _1395 = mem[_190]
    mem[mem[64] + 68] = mem[_190]
    idx = 0
    t = _190 + 32
    v = mem[64] + 100
    while idx < _1395:
        mem[v] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        v = v + 32
        continue 
    staticcall ROUTERAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _1375 + (32 * _1395) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1499 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1503 = mem[_1499]
    require mem[_1499] <= test266151307()
    require _1499 + mem[_1499] + 31 < _1499 + return_data.size
    _1507 = mem[_1499 + mem[_1499]]
    if mem[_1499 + mem[_1499]] > test266151307():
        revert with 'NH{q', 65
    if _1499 + ceil32(return_data.size) + floor32(mem[_1499 + mem[_1499]]) + 1 > test266151307() or floor32(mem[_1499 + mem[_1499]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1499 + ceil32(return_data.size) + floor32(mem[_1499 + mem[_1499]]) + 1
    mem[_1499 + ceil32(return_data.size)] = _1507
    require _1503 + (32 * _1507) + 32 <= return_data.size
    idx = _1499 + _1503 + 32
    t = _1499 + ceil32(return_data.size) + 32
    while idx < _1499 + _1503 + (32 * _1507) + 32:
        require mem[idx] == mem[idx]
        mem[t] = mem[idx]
        idx = idx + 32
        t = t + 32
        continue 
    if 1 >= _1507:
        revert with 'NH{q', 50
    _1571 = mem[_1499 + ceil32(return_data.size) + 64]
    _1575 = mem[64]
    mem[mem[64]] = 4
    mem[64] = mem[64] + 160
    if 0 >= mem[_1575]:
        revert with 'NH{q', 50
    mem[_1575 + 32] = address(arg1)
    if 1 >= mem[_1575]:
        revert with 'NH{q', 50
    mem[_1575 + 64] = address(s)
    if 2 >= mem[_1575]:
        revert with 'NH{q', 50
    mem[_1575 + 96] = address(u)
    if 3 >= mem[_1575]:
        revert with 'NH{q', 50
    mem[_1575 + 128] = address(arg2)
    mem[_1575 + 160] = _1571
    mem[_1575 + 192] = 64
    mem[_1575 + 224] = mem[_1575]
    idx = 0
    s = _1575 + 32
    t = _1575 + 256
    while idx < mem[_1575]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1575 + (32 * mem[_1575]) + -mem[64] + 256
}



}
