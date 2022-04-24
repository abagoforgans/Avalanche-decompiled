contract main {




// =====================  Runtime code  =====================


address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of struct stor6;

function _fallback() payable {
    revert
}

function setMinProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor2 = arg1
    return stor2
}

function setAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    address(stor1) = arg1
    return block.number
}

function sub_074351a9(?) payable {
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 97] = 0
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 96
    mem[floor32(('cd', 4).length) + 225] = 7
    mem[64] = floor32(('cd', 4).length) + 481
    mem[floor32(('cd', 4).length) + 257] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(('cd', 4).length) + 289] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 4).length) + 321] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(('cd', 4).length) + 353] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(('cd', 4).length) + 385] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(('cd', 4).length) + 417] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(('cd', 4).length) + 449] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(('cd', 4).length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 485] = address(stor1)
    mem[floor32(('cd', 4).length) + 517] = 160
    mem[floor32(('cd', 4).length) + 645] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 677
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 549] = 0
    mem[floor32(('cd', 4).length) + 581] = 0
    mem[floor32(('cd', 4).length) + 613] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 677] = 7
    idx = 0
    s = floor32(('cd', 4).length) + 257
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 709
    while idx < mem[floor32(('cd', 4).length) + 225]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + (32 * mem[floor32(('cd', 4).length) + 225]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _286 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _287 = mem[_286]
    require mem[_286] <= test266151307()
    require _286 + mem[_286] + 31 < _286 + return_data.size
    _288 = mem[_286 + mem[_286]]
    if mem[_286 + mem[_286]] > test266151307():
        revert with 'NH{q', 65
    if _286 + ceil32(return_data.size) + floor32(mem[_286 + mem[_286]]) + 1 > test266151307() or floor32(mem[_286 + mem[_286]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _286 + ceil32(return_data.size) + floor32(mem[_286 + mem[_286]]) + 1
    mem[_286 + ceil32(return_data.size)] = _288
    require _287 + (32 * _288) + 32 <= return_data.size
    idx = 0
    s = _286 + _287 + 32
    t = _286 + ceil32(return_data.size) + 32
    while idx < _288:
        _369 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_287 + -mem[s] - 32 >= 128
        _373 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_286 + _287 + _369 + 32] == mem[_286 + _287 + _369 + 32]
        mem[_373] = mem[_286 + _287 + _369 + 32]
        require mem[_286 + _287 + _369 + 64] == mem[_286 + _287 + _369 + 64]
        mem[_373 + 32] = mem[_286 + _287 + _369 + 64]
        require mem[_286 + _287 + _369 + 96] == mem[_286 + _287 + _369 + 96]
        mem[_373 + 64] = mem[_286 + _287 + _369 + 96]
        _430 = mem[_286 + _287 + _369 + 128]
        require mem[_286 + _287 + _369 + 128] <= test266151307()
        require _286 + _287 + _369 + mem[_286 + _287 + _369 + 128] + 63 < _286 + return_data.size
        _433 = mem[_286 + _287 + _369 + mem[_286 + _287 + _369 + 128] + 32]
        if mem[_286 + _287 + _369 + mem[_286 + _287 + _369 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _436 = mem[64]
        if mem[64] + floor32(mem[_286 + _287 + _369 + mem[_286 + _287 + _369 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_286 + _287 + _369 + mem[_286 + _287 + _369 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_286 + _287 + _369 + mem[_286 + _287 + _369 + 128] + 32]) + 1
        mem[_436] = _433
        require _287 + _369 + _430 + (192 * _433) + 64 <= return_data.size
        u = 0
        v = _286 + _287 + _369 + _430 + 64
        w = _436 + 32
        while u < _433:
            require _286 + return_data.size - v >= 192
            _471 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_471] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_471 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_471 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_471 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_471 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_471 + 160] = mem[v + 160]
            mem[w] = _471
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_373 + 96] = _436
        mem[t] = _373
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_286 + ceil32(return_data.size)]:
        if idx >= mem[_286 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _286 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_286 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_286 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _451 = mem[_286 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_286 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_286 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_286 + ceil32(return_data.size) + 32] + 64]
    _520 = mem[mem[mem[_286 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _520:
        _523 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_451 + 96]]:
            revert with 'NH{q', 50
        mem[_523] = mem[mem[(32 * idx) + mem[_451 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_451 + 96]]:
            revert with 'NH{q', 50
        mem[_523 + 32] = mem[mem[(32 * idx) + mem[_451 + 96] + 32] + 32]
        if idx >= mem[mem[_451 + 96]]:
            revert with 'NH{q', 50
        mem[_523 + 64] = mem[mem[(32 * idx) + mem[_451 + 96] + 32] + 64]
        if idx >= mem[mem[_451 + 96]]:
            revert with 'NH{q', 50
        mem[_523 + 96] = mem[mem[(32 * idx) + mem[_451 + 96] + 32] + 96]
        if idx >= mem[mem[_451 + 96]]:
            revert with 'NH{q', 50
        mem[_523 + 128] = mem[mem[(32 * idx) + mem[_451 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_451 + 96]]:
            revert with 'NH{q', 50
        mem[_523 + 160] = mem[mem[(32 * idx) + mem[_451 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_523 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_523 + 32]
        stor6[stor6.length].field_512 = mem[_523 + 64]
        stor6[stor6.length].field_768 = mem[_523 + 96]
        stor6[stor6.length].field_1024 = mem[_523 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_523 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _520 = mem[mem[_451 + 96]]
        idx = idx + 1
        continue 
    _521 = mem[64]
    mem[64] = mem[64] + 128
    mem[_521] = stor3
    mem[_521 + 32] = stor4
    mem[_521 + 64] = stor5
    _522 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_522] = stor6.length
    s = _522 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _572 = mem[64]
        mem[64] = mem[64] + 192
        mem[_572] = stor6[idx].field_0
        mem[_572 + 32] = stor6[idx].field_256
        mem[_572 + 64] = stor6[idx].field_512
        mem[_572 + 96] = stor6[idx].field_768
        mem[_572 + 128] = stor6[idx].field_1024
        mem[_572 + 160] = stor6[idx].field_1280
        mem[s] = _572
        s = s + 32
        idx = idx + 1
        continue 
    mem[_521 + 96] = _522
    _573 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_521]
    mem[mem[64] + 64] = mem[_521 + 32]
    mem[mem[64] + 96] = mem[_521 + 64]
    mem[mem[64] + 128] = 128
    _578 = mem[_522]
    mem[mem[64] + 160] = mem[_522]
    idx = 0
    s = _522 + 32
    t = mem[64] + 192
    while idx < _578:
        _587 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_587 + 32]
        mem[t + 64] = mem[_587 + 64]
        mem[t + 96] = mem[_587 + 96]
        mem[t + 128] = mem[_587 + 140 len 20]
        mem[t + 160] = mem[_587 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _573 + (192 * _578) + -mem[64] + 192
}

function swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapTokensForExactAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 96
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 96
    mem[floor32(arg3.length) + 353] = 7
    mem[64] = floor32(arg3.length) + 609
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg3.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg3.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg3.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg3.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 613] = address(stor1)
    mem[floor32(arg3.length) + 645] = 160
    mem[floor32(arg3.length) + 773] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 805
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 677] = 0
    mem[floor32(arg3.length) + 709] = 0
    mem[floor32(arg3.length) + 741] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 805] = 7
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 837
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _283 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _284 = mem[_283]
    require mem[_283] <= test266151307()
    require _283 + mem[_283] + 31 < _283 + return_data.size
    _285 = mem[_283 + mem[_283]]
    if mem[_283 + mem[_283]] > test266151307():
        revert with 'NH{q', 65
    if _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1 > test266151307() or floor32(mem[_283 + mem[_283]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _283 + ceil32(return_data.size) + floor32(mem[_283 + mem[_283]]) + 1
    mem[_283 + ceil32(return_data.size)] = _285
    require _284 + (32 * _285) + 32 <= return_data.size
    idx = 0
    s = _283 + _284 + 32
    t = _283 + ceil32(return_data.size) + 32
    while idx < _285:
        _366 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_284 + -mem[s] - 32 >= 128
        _370 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_283 + _284 + _366 + 32] == mem[_283 + _284 + _366 + 32]
        mem[_370] = mem[_283 + _284 + _366 + 32]
        require mem[_283 + _284 + _366 + 64] == mem[_283 + _284 + _366 + 64]
        mem[_370 + 32] = mem[_283 + _284 + _366 + 64]
        require mem[_283 + _284 + _366 + 96] == mem[_283 + _284 + _366 + 96]
        mem[_370 + 64] = mem[_283 + _284 + _366 + 96]
        _427 = mem[_283 + _284 + _366 + 128]
        require mem[_283 + _284 + _366 + 128] <= test266151307()
        require _283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 63 < _283 + return_data.size
        _429 = mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]
        if mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _432 = mem[64]
        if mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_283 + _284 + _366 + mem[_283 + _284 + _366 + 128] + 32]) + 1
        mem[_432] = _429
        require _284 + _366 + _427 + (192 * _429) + 64 <= return_data.size
        u = 0
        v = _283 + _284 + _366 + _427 + 64
        w = _432 + 32
        while u < _429:
            require _283 + return_data.size - v >= 192
            _468 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_468] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_468 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_468 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_468 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_468 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_468 + 160] = mem[v + 160]
            mem[w] = _468
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_370 + 96] = _432
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_283 + ceil32(return_data.size)]:
        if idx >= mem[_283 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _283 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_283 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_283 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _448 = mem[_283 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_283 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_283 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_283 + ceil32(return_data.size) + 32] + 64]
    _517 = mem[mem[mem[_283 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _517:
        _520 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 32] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 32]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 64] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 64]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 96] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 96]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 128] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_448 + 96]]:
            revert with 'NH{q', 50
        mem[_520 + 160] = mem[mem[(32 * idx) + mem[_448 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_520 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_520 + 32]
        stor6[stor6.length].field_512 = mem[_520 + 64]
        stor6[stor6.length].field_768 = mem[_520 + 96]
        stor6[stor6.length].field_1024 = mem[_520 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_520 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _517 = mem[mem[_448 + 96]]
        idx = idx + 1
        continue 
    _518 = mem[64]
    mem[64] = mem[64] + 128
    mem[_518] = stor3
    mem[_518 + 32] = stor4
    mem[_518 + 64] = stor5
    _519 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_519] = stor6.length
    s = _519 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _569 = mem[64]
        mem[64] = mem[64] + 192
        mem[_569] = stor6[idx].field_0
        mem[_569 + 32] = stor6[idx].field_256
        mem[_569 + 64] = stor6[idx].field_512
        mem[_569 + 96] = stor6[idx].field_768
        mem[_569 + 128] = stor6[idx].field_1024
        mem[_569 + 160] = stor6[idx].field_1280
        mem[s] = _569
        s = s + 32
        idx = idx + 1
        continue 
    mem[_518 + 96] = _519
    _570 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_518]
    mem[mem[64] + 64] = mem[_518 + 32]
    mem[mem[64] + 96] = mem[_518 + 64]
    mem[mem[64] + 128] = 128
    _575 = mem[_519]
    mem[mem[64] + 160] = mem[_519]
    idx = 0
    s = _519 + 32
    t = mem[64] + 192
    while idx < _575:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_584 + 32]
        mem[t + 64] = mem[_584 + 64]
        mem[t + 96] = mem[_584 + 96]
        mem[t + 128] = mem[_584 + 140 len 20]
        mem[t + 160] = mem[_584 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _570 + (192 * _575) + -mem[64] + 192
}

function sub_b293b3c4(?) payable {
    require calldata.size - 4 >= 64
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    mem[floor32(('cd', 4).length) + 97] = 0
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 96
    address(stor1) = address(cd[36])
    mem[floor32(('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + 257] = 0
    mem[floor32(('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + 321] = 96
    mem[floor32(('cd', 4).length) + 353] = 7
    mem[64] = floor32(('cd', 4).length) + 609
    mem[floor32(('cd', 4).length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(('cd', 4).length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 4).length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(('cd', 4).length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(('cd', 4).length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(('cd', 4).length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(('cd', 4).length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(('cd', 4).length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 613] = address(stor1)
    mem[floor32(('cd', 4).length) + 645] = 160
    mem[floor32(('cd', 4).length) + 773] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 805
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 677] = 0
    mem[floor32(('cd', 4).length) + 709] = 0
    mem[floor32(('cd', 4).length) + 741] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 805] = 7
    idx = 0
    s = floor32(('cd', 4).length) + 385
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 837
    while idx < mem[floor32(('cd', 4).length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + (32 * mem[floor32(('cd', 4).length) + 353]) + -mem[64] + 833]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _287 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _288 = mem[_287]
    require mem[_287] <= test266151307()
    require _287 + mem[_287] + 31 < _287 + return_data.size
    _289 = mem[_287 + mem[_287]]
    if mem[_287 + mem[_287]] > test266151307():
        revert with 'NH{q', 65
    if _287 + ceil32(return_data.size) + floor32(mem[_287 + mem[_287]]) + 1 > test266151307() or floor32(mem[_287 + mem[_287]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _287 + ceil32(return_data.size) + floor32(mem[_287 + mem[_287]]) + 1
    mem[_287 + ceil32(return_data.size)] = _289
    require _288 + (32 * _289) + 32 <= return_data.size
    idx = 0
    s = _287 + _288 + 32
    t = _287 + ceil32(return_data.size) + 32
    while idx < _289:
        _370 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_288 + -mem[s] - 32 >= 128
        _374 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_287 + _288 + _370 + 32] == mem[_287 + _288 + _370 + 32]
        mem[_374] = mem[_287 + _288 + _370 + 32]
        require mem[_287 + _288 + _370 + 64] == mem[_287 + _288 + _370 + 64]
        mem[_374 + 32] = mem[_287 + _288 + _370 + 64]
        require mem[_287 + _288 + _370 + 96] == mem[_287 + _288 + _370 + 96]
        mem[_374 + 64] = mem[_287 + _288 + _370 + 96]
        _431 = mem[_287 + _288 + _370 + 128]
        require mem[_287 + _288 + _370 + 128] <= test266151307()
        require _287 + _288 + _370 + mem[_287 + _288 + _370 + 128] + 63 < _287 + return_data.size
        _433 = mem[_287 + _288 + _370 + mem[_287 + _288 + _370 + 128] + 32]
        if mem[_287 + _288 + _370 + mem[_287 + _288 + _370 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _436 = mem[64]
        if mem[64] + floor32(mem[_287 + _288 + _370 + mem[_287 + _288 + _370 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_287 + _288 + _370 + mem[_287 + _288 + _370 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_287 + _288 + _370 + mem[_287 + _288 + _370 + 128] + 32]) + 1
        mem[_436] = _433
        require _288 + _370 + _431 + (192 * _433) + 64 <= return_data.size
        u = 0
        v = _287 + _288 + _370 + _431 + 64
        w = _436 + 32
        while u < _433:
            require _287 + return_data.size - v >= 192
            _472 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_472] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_472 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_472 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_472 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_472 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_472 + 160] = mem[v + 160]
            mem[w] = _472
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_374 + 96] = _436
        mem[t] = _374
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_287 + ceil32(return_data.size)]:
        if idx >= mem[_287 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _287 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_287 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_287 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _452 = mem[_287 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_287 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_287 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_287 + ceil32(return_data.size) + 32] + 64]
    _521 = mem[mem[mem[_287 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _521:
        _524 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_452 + 96]]:
            revert with 'NH{q', 50
        mem[_524] = mem[mem[(32 * idx) + mem[_452 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_452 + 96]]:
            revert with 'NH{q', 50
        mem[_524 + 32] = mem[mem[(32 * idx) + mem[_452 + 96] + 32] + 32]
        if idx >= mem[mem[_452 + 96]]:
            revert with 'NH{q', 50
        mem[_524 + 64] = mem[mem[(32 * idx) + mem[_452 + 96] + 32] + 64]
        if idx >= mem[mem[_452 + 96]]:
            revert with 'NH{q', 50
        mem[_524 + 96] = mem[mem[(32 * idx) + mem[_452 + 96] + 32] + 96]
        if idx >= mem[mem[_452 + 96]]:
            revert with 'NH{q', 50
        mem[_524 + 128] = mem[mem[(32 * idx) + mem[_452 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_452 + 96]]:
            revert with 'NH{q', 50
        mem[_524 + 160] = mem[mem[(32 * idx) + mem[_452 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_524 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_524 + 32]
        stor6[stor6.length].field_512 = mem[_524 + 64]
        stor6[stor6.length].field_768 = mem[_524 + 96]
        stor6[stor6.length].field_1024 = mem[_524 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_524 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _521 = mem[mem[_452 + 96]]
        idx = idx + 1
        continue 
    _522 = mem[64]
    mem[64] = mem[64] + 128
    mem[_522] = stor3
    mem[_522 + 32] = stor4
    mem[_522 + 64] = stor5
    _523 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_523] = stor6.length
    s = _523 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _573 = mem[64]
        mem[64] = mem[64] + 192
        mem[_573] = stor6[idx].field_0
        mem[_573 + 32] = stor6[idx].field_256
        mem[_573 + 64] = stor6[idx].field_512
        mem[_573 + 96] = stor6[idx].field_768
        mem[_573 + 128] = stor6[idx].field_1024
        mem[_573 + 160] = stor6[idx].field_1280
        mem[s] = _573
        s = s + 32
        idx = idx + 1
        continue 
    mem[_522 + 96] = _523
    _574 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_522]
    mem[mem[64] + 64] = mem[_522 + 32]
    mem[mem[64] + 96] = mem[_522 + 64]
    mem[mem[64] + 128] = 128
    _579 = mem[_523]
    mem[mem[64] + 160] = mem[_523]
    idx = 0
    s = _523 + 32
    t = mem[64] + 192
    while idx < _579:
        _588 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_588 + 32]
        mem[t + 64] = mem[_588 + 64]
        mem[t + 96] = mem[_588 + 96]
        mem[t + 128] = mem[_588 + 140 len 20]
        mem[t + 160] = mem[_588 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _574 + (192 * _579) + -mem[64] + 192
}

function swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 96
    mem[floor32(arg2.length) + 225] = 0
    mem[floor32(arg2.length) + 257] = 0
    mem[floor32(arg2.length) + 289] = 0
    mem[floor32(arg2.length) + 321] = 96
    mem[floor32(arg2.length) + 353] = 7
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg2.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg2.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg2.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg2.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 613] = address(stor1)
    mem[floor32(arg2.length) + 645] = 160
    mem[floor32(arg2.length) + 773] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 805
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 677] = 0
    mem[floor32(arg2.length) + 709] = 0
    mem[floor32(arg2.length) + 741] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 805] = 7
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 837
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 805 len (32 * arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 609
    require return_data.size >= 32
    _285 = mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1)
    require mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 640 < floor32(arg2.length) + return_data.size + 609
    _286 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610
    mem[floor32(arg2.length) + ceil32(return_data.size) + 609] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _285 + 641
    t = floor32(arg2.length) + ceil32(return_data.size) + 641
    while idx < _286:
        _367 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _371 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _285 + _367 + 641] == mem[floor32(arg2.length) + _285 + _367 + 641]
        mem[_371] = mem[floor32(arg2.length) + _285 + _367 + 641]
        require mem[floor32(arg2.length) + _285 + _367 + 673] == mem[floor32(arg2.length) + _285 + _367 + 673]
        mem[_371 + 32] = mem[floor32(arg2.length) + _285 + _367 + 673]
        require mem[floor32(arg2.length) + _285 + _367 + 705] == mem[floor32(arg2.length) + _285 + _367 + 705]
        mem[_371 + 64] = mem[floor32(arg2.length) + _285 + _367 + 705]
        _428 = mem[floor32(arg2.length) + _285 + _367 + 737]
        require mem[floor32(arg2.length) + _285 + _367 + 737] <= test266151307()
        require floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 672 < floor32(arg2.length) + return_data.size + 609
        _430 = mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]
        if mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641] > test266151307():
            revert with 'NH{q', 65
        _433 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1
        mem[_433] = _430
        require _285 + _367 + _428 + (192 * _430) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _285 + _367 + _428 + 673
        w = _433 + 32
        while u < _430:
            require floor32(arg2.length) + return_data.size + -v + 609 >= 192
            _469 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_469] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_469 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_469 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_469 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_469 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_469 + 160] = mem[v + 160]
            mem[w] = _469
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_371 + 96] = _433
        mem[t] = _371
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 641] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        revert with 'NH{q', 50
    _449 = mem[floor32(arg2.length) + ceil32(return_data.size) + 641]
    stor3 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641]]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 32]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 64]
    _518 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 96]]
    idx = 0
    while idx < _518:
        _521 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 32] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 32]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 64] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 64]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 96] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 96]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 128] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 160] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_521 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_521 + 32]
        stor6[stor6.length].field_512 = mem[_521 + 64]
        stor6[stor6.length].field_768 = mem[_521 + 96]
        stor6[stor6.length].field_1024 = mem[_521 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_521 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _518 = mem[mem[_449 + 96]]
        idx = idx + 1
        continue 
    _519 = mem[64]
    mem[64] = mem[64] + 128
    mem[_519] = stor3
    mem[_519 + 32] = stor4
    mem[_519 + 64] = stor5
    _520 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_520] = stor6.length
    s = _520 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _570 = mem[64]
        mem[64] = mem[64] + 192
        mem[_570] = stor6[idx].field_0
        mem[_570 + 32] = stor6[idx].field_256
        mem[_570 + 64] = stor6[idx].field_512
        mem[_570 + 96] = stor6[idx].field_768
        mem[_570 + 128] = stor6[idx].field_1024
        mem[_570 + 160] = stor6[idx].field_1280
        mem[s] = _570
        s = s + 32
        idx = idx + 1
        continue 
    mem[_519 + 96] = _520
    _571 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_519]
    mem[mem[64] + 64] = mem[_519 + 32]
    mem[mem[64] + 96] = mem[_519 + 64]
    mem[mem[64] + 128] = 128
    _576 = mem[_520]
    mem[mem[64] + 160] = mem[_520]
    idx = 0
    s = _520 + 32
    t = mem[64] + 192
    while idx < _576:
        _585 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_585 + 32]
        mem[t + 64] = mem[_585 + 64]
        mem[t + 96] = mem[_585 + 96]
        mem[t + 128] = mem[_585 + 140 len 20]
        mem[t + 160] = mem[_585 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _571 + (192 * _576) + -mem[64] + 192
}

function swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 96
    mem[floor32(arg2.length) + 225] = 0
    mem[floor32(arg2.length) + 257] = 0
    mem[floor32(arg2.length) + 289] = 0
    mem[floor32(arg2.length) + 321] = 96
    mem[floor32(arg2.length) + 353] = 7
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg2.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg2.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg2.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg2.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 613] = address(stor1)
    mem[floor32(arg2.length) + 645] = 160
    mem[floor32(arg2.length) + 773] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 805
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 677] = 0
    mem[floor32(arg2.length) + 709] = 0
    mem[floor32(arg2.length) + 741] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 805] = 7
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 837
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 805 len (32 * arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 609
    require return_data.size >= 32
    _285 = mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1)
    require mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 640 < floor32(arg2.length) + return_data.size + 609
    _286 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610
    mem[floor32(arg2.length) + ceil32(return_data.size) + 609] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _285 + 641
    t = floor32(arg2.length) + ceil32(return_data.size) + 641
    while idx < _286:
        _367 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _371 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _285 + _367 + 641] == mem[floor32(arg2.length) + _285 + _367 + 641]
        mem[_371] = mem[floor32(arg2.length) + _285 + _367 + 641]
        require mem[floor32(arg2.length) + _285 + _367 + 673] == mem[floor32(arg2.length) + _285 + _367 + 673]
        mem[_371 + 32] = mem[floor32(arg2.length) + _285 + _367 + 673]
        require mem[floor32(arg2.length) + _285 + _367 + 705] == mem[floor32(arg2.length) + _285 + _367 + 705]
        mem[_371 + 64] = mem[floor32(arg2.length) + _285 + _367 + 705]
        _428 = mem[floor32(arg2.length) + _285 + _367 + 737]
        require mem[floor32(arg2.length) + _285 + _367 + 737] <= test266151307()
        require floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 672 < floor32(arg2.length) + return_data.size + 609
        _430 = mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]
        if mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641] > test266151307():
            revert with 'NH{q', 65
        _433 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1
        mem[_433] = _430
        require _285 + _367 + _428 + (192 * _430) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _285 + _367 + _428 + 673
        w = _433 + 32
        while u < _430:
            require floor32(arg2.length) + return_data.size + -v + 609 >= 192
            _469 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_469] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_469 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_469 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_469 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_469 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_469 + 160] = mem[v + 160]
            mem[w] = _469
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_371 + 96] = _433
        mem[t] = _371
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 641] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        revert with 'NH{q', 50
    _449 = mem[floor32(arg2.length) + ceil32(return_data.size) + 641]
    stor3 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641]]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 32]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 64]
    _518 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 96]]
    idx = 0
    while idx < _518:
        _521 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 32] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 32]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 64] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 64]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 96] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 96]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 128] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 160] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_521 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_521 + 32]
        stor6[stor6.length].field_512 = mem[_521 + 64]
        stor6[stor6.length].field_768 = mem[_521 + 96]
        stor6[stor6.length].field_1024 = mem[_521 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_521 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _518 = mem[mem[_449 + 96]]
        idx = idx + 1
        continue 
    _519 = mem[64]
    mem[64] = mem[64] + 128
    mem[_519] = stor3
    mem[_519 + 32] = stor4
    mem[_519 + 64] = stor5
    _520 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_520] = stor6.length
    s = _520 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _570 = mem[64]
        mem[64] = mem[64] + 192
        mem[_570] = stor6[idx].field_0
        mem[_570 + 32] = stor6[idx].field_256
        mem[_570 + 64] = stor6[idx].field_512
        mem[_570 + 96] = stor6[idx].field_768
        mem[_570 + 128] = stor6[idx].field_1024
        mem[_570 + 160] = stor6[idx].field_1280
        mem[s] = _570
        s = s + 32
        idx = idx + 1
        continue 
    mem[_519 + 96] = _520
    _571 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_519]
    mem[mem[64] + 64] = mem[_519 + 32]
    mem[mem[64] + 96] = mem[_519 + 64]
    mem[mem[64] + 128] = 128
    _576 = mem[_520]
    mem[mem[64] + 160] = mem[_520]
    idx = 0
    s = _520 + 32
    t = mem[64] + 192
    while idx < _576:
        _585 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_585 + 32]
        mem[t + 64] = mem[_585 + 64]
        mem[t + 96] = mem[_585 + 96]
        mem[t + 128] = mem[_585 + 140 len 20]
        mem[t + 160] = mem[_585 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _571 + (192 * _576) + -mem[64] + 192
}

function swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 96
    mem[floor32(arg2.length) + 225] = 0
    mem[floor32(arg2.length) + 257] = 0
    mem[floor32(arg2.length) + 289] = 0
    mem[floor32(arg2.length) + 321] = 96
    mem[floor32(arg2.length) + 353] = 7
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg2.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg2.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg2.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg2.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 613] = address(stor1)
    mem[floor32(arg2.length) + 645] = 160
    mem[floor32(arg2.length) + 773] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 805
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 677] = 0
    mem[floor32(arg2.length) + 709] = 0
    mem[floor32(arg2.length) + 741] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 805] = 7
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 837
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 805 len (32 * arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 609
    require return_data.size >= 32
    _285 = mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1)
    require mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 640 < floor32(arg2.length) + return_data.size + 609
    _286 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610
    mem[floor32(arg2.length) + ceil32(return_data.size) + 609] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _285 + 641
    t = floor32(arg2.length) + ceil32(return_data.size) + 641
    while idx < _286:
        _367 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _371 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _285 + _367 + 641] == mem[floor32(arg2.length) + _285 + _367 + 641]
        mem[_371] = mem[floor32(arg2.length) + _285 + _367 + 641]
        require mem[floor32(arg2.length) + _285 + _367 + 673] == mem[floor32(arg2.length) + _285 + _367 + 673]
        mem[_371 + 32] = mem[floor32(arg2.length) + _285 + _367 + 673]
        require mem[floor32(arg2.length) + _285 + _367 + 705] == mem[floor32(arg2.length) + _285 + _367 + 705]
        mem[_371 + 64] = mem[floor32(arg2.length) + _285 + _367 + 705]
        _428 = mem[floor32(arg2.length) + _285 + _367 + 737]
        require mem[floor32(arg2.length) + _285 + _367 + 737] <= test266151307()
        require floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 672 < floor32(arg2.length) + return_data.size + 609
        _430 = mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]
        if mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641] > test266151307():
            revert with 'NH{q', 65
        _433 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1
        mem[_433] = _430
        require _285 + _367 + _428 + (192 * _430) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _285 + _367 + _428 + 673
        w = _433 + 32
        while u < _430:
            require floor32(arg2.length) + return_data.size + -v + 609 >= 192
            _469 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_469] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_469 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_469 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_469 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_469 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_469 + 160] = mem[v + 160]
            mem[w] = _469
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_371 + 96] = _433
        mem[t] = _371
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 641] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        revert with 'NH{q', 50
    _449 = mem[floor32(arg2.length) + ceil32(return_data.size) + 641]
    stor3 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641]]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 32]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 64]
    _518 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 96]]
    idx = 0
    while idx < _518:
        _521 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 32] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 32]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 64] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 64]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 96] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 96]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 128] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 160] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_521 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_521 + 32]
        stor6[stor6.length].field_512 = mem[_521 + 64]
        stor6[stor6.length].field_768 = mem[_521 + 96]
        stor6[stor6.length].field_1024 = mem[_521 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_521 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _518 = mem[mem[_449 + 96]]
        idx = idx + 1
        continue 
    _519 = mem[64]
    mem[64] = mem[64] + 128
    mem[_519] = stor3
    mem[_519 + 32] = stor4
    mem[_519 + 64] = stor5
    _520 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_520] = stor6.length
    s = _520 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _570 = mem[64]
        mem[64] = mem[64] + 192
        mem[_570] = stor6[idx].field_0
        mem[_570 + 32] = stor6[idx].field_256
        mem[_570 + 64] = stor6[idx].field_512
        mem[_570 + 96] = stor6[idx].field_768
        mem[_570 + 128] = stor6[idx].field_1024
        mem[_570 + 160] = stor6[idx].field_1280
        mem[s] = _570
        s = s + 32
        idx = idx + 1
        continue 
    mem[_519 + 96] = _520
    _571 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_519]
    mem[mem[64] + 64] = mem[_519 + 32]
    mem[mem[64] + 96] = mem[_519 + 64]
    mem[mem[64] + 128] = 128
    _576 = mem[_520]
    mem[mem[64] + 160] = mem[_520]
    idx = 0
    s = _520 + 32
    t = mem[64] + 192
    while idx < _576:
        _585 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_585 + 32]
        mem[t + 64] = mem[_585 + 64]
        mem[t + 96] = mem[_585 + 96]
        mem[t + 128] = mem[_585 + 140 len 20]
        mem[t + 160] = mem[_585 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _571 + (192 * _576) + -mem[64] + 192
}

function swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 96
    mem[floor32(arg2.length) + 225] = 0
    mem[floor32(arg2.length) + 257] = 0
    mem[floor32(arg2.length) + 289] = 0
    mem[floor32(arg2.length) + 321] = 96
    mem[floor32(arg2.length) + 353] = 7
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg2.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg2.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg2.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg2.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 613] = address(stor1)
    mem[floor32(arg2.length) + 645] = 160
    mem[floor32(arg2.length) + 773] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 805
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 677] = 0
    mem[floor32(arg2.length) + 709] = 0
    mem[floor32(arg2.length) + 741] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 805] = 7
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 837
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 805 len (32 * arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 609
    require return_data.size >= 32
    _285 = mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1)
    require mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 640 < floor32(arg2.length) + return_data.size + 609
    _286 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610
    mem[floor32(arg2.length) + ceil32(return_data.size) + 609] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _285 + 641
    t = floor32(arg2.length) + ceil32(return_data.size) + 641
    while idx < _286:
        _367 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _371 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _285 + _367 + 641] == mem[floor32(arg2.length) + _285 + _367 + 641]
        mem[_371] = mem[floor32(arg2.length) + _285 + _367 + 641]
        require mem[floor32(arg2.length) + _285 + _367 + 673] == mem[floor32(arg2.length) + _285 + _367 + 673]
        mem[_371 + 32] = mem[floor32(arg2.length) + _285 + _367 + 673]
        require mem[floor32(arg2.length) + _285 + _367 + 705] == mem[floor32(arg2.length) + _285 + _367 + 705]
        mem[_371 + 64] = mem[floor32(arg2.length) + _285 + _367 + 705]
        _428 = mem[floor32(arg2.length) + _285 + _367 + 737]
        require mem[floor32(arg2.length) + _285 + _367 + 737] <= test266151307()
        require floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 672 < floor32(arg2.length) + return_data.size + 609
        _430 = mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]
        if mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641] > test266151307():
            revert with 'NH{q', 65
        _433 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1
        mem[_433] = _430
        require _285 + _367 + _428 + (192 * _430) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _285 + _367 + _428 + 673
        w = _433 + 32
        while u < _430:
            require floor32(arg2.length) + return_data.size + -v + 609 >= 192
            _469 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_469] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_469 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_469 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_469 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_469 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_469 + 160] = mem[v + 160]
            mem[w] = _469
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_371 + 96] = _433
        mem[t] = _371
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 641] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        revert with 'NH{q', 50
    _449 = mem[floor32(arg2.length) + ceil32(return_data.size) + 641]
    stor3 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641]]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 32]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 64]
    _518 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 96]]
    idx = 0
    while idx < _518:
        _521 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 32] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 32]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 64] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 64]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 96] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 96]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 128] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 160] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_521 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_521 + 32]
        stor6[stor6.length].field_512 = mem[_521 + 64]
        stor6[stor6.length].field_768 = mem[_521 + 96]
        stor6[stor6.length].field_1024 = mem[_521 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_521 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _518 = mem[mem[_449 + 96]]
        idx = idx + 1
        continue 
    _519 = mem[64]
    mem[64] = mem[64] + 128
    mem[_519] = stor3
    mem[_519 + 32] = stor4
    mem[_519 + 64] = stor5
    _520 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_520] = stor6.length
    s = _520 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _570 = mem[64]
        mem[64] = mem[64] + 192
        mem[_570] = stor6[idx].field_0
        mem[_570 + 32] = stor6[idx].field_256
        mem[_570 + 64] = stor6[idx].field_512
        mem[_570 + 96] = stor6[idx].field_768
        mem[_570 + 128] = stor6[idx].field_1024
        mem[_570 + 160] = stor6[idx].field_1280
        mem[s] = _570
        s = s + 32
        idx = idx + 1
        continue 
    mem[_519 + 96] = _520
    _571 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_519]
    mem[mem[64] + 64] = mem[_519 + 32]
    mem[mem[64] + 96] = mem[_519 + 64]
    mem[mem[64] + 128] = 128
    _576 = mem[_520]
    mem[mem[64] + 160] = mem[_520]
    idx = 0
    s = _520 + 32
    t = mem[64] + 192
    while idx < _576:
        _585 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_585 + 32]
        mem[t + 64] = mem[_585 + 64]
        mem[t + 96] = mem[_585 + 96]
        mem[t + 128] = mem[_585 + 140 len 20]
        mem[t + 160] = mem[_585 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _571 + (192 * _576) + -mem[64] + 192
}

function swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 96
    mem[floor32(arg2.length) + 225] = 0
    mem[floor32(arg2.length) + 257] = 0
    mem[floor32(arg2.length) + 289] = 0
    mem[floor32(arg2.length) + 321] = 96
    mem[floor32(arg2.length) + 353] = 7
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg2.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg2.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg2.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg2.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 613] = address(stor1)
    mem[floor32(arg2.length) + 645] = 160
    mem[floor32(arg2.length) + 773] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 805
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 677] = 0
    mem[floor32(arg2.length) + 709] = 0
    mem[floor32(arg2.length) + 741] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 805] = 7
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 837
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 805 len (32 * arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 609
    require return_data.size >= 32
    _285 = mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1)
    require mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 640 < floor32(arg2.length) + return_data.size + 609
    _286 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610
    mem[floor32(arg2.length) + ceil32(return_data.size) + 609] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _285 + 641
    t = floor32(arg2.length) + ceil32(return_data.size) + 641
    while idx < _286:
        _367 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _371 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _285 + _367 + 641] == mem[floor32(arg2.length) + _285 + _367 + 641]
        mem[_371] = mem[floor32(arg2.length) + _285 + _367 + 641]
        require mem[floor32(arg2.length) + _285 + _367 + 673] == mem[floor32(arg2.length) + _285 + _367 + 673]
        mem[_371 + 32] = mem[floor32(arg2.length) + _285 + _367 + 673]
        require mem[floor32(arg2.length) + _285 + _367 + 705] == mem[floor32(arg2.length) + _285 + _367 + 705]
        mem[_371 + 64] = mem[floor32(arg2.length) + _285 + _367 + 705]
        _428 = mem[floor32(arg2.length) + _285 + _367 + 737]
        require mem[floor32(arg2.length) + _285 + _367 + 737] <= test266151307()
        require floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 672 < floor32(arg2.length) + return_data.size + 609
        _430 = mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]
        if mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641] > test266151307():
            revert with 'NH{q', 65
        _433 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1
        mem[_433] = _430
        require _285 + _367 + _428 + (192 * _430) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _285 + _367 + _428 + 673
        w = _433 + 32
        while u < _430:
            require floor32(arg2.length) + return_data.size + -v + 609 >= 192
            _469 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_469] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_469 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_469 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_469 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_469 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_469 + 160] = mem[v + 160]
            mem[w] = _469
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_371 + 96] = _433
        mem[t] = _371
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 641] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        revert with 'NH{q', 50
    _449 = mem[floor32(arg2.length) + ceil32(return_data.size) + 641]
    stor3 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641]]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 32]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 64]
    _518 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 96]]
    idx = 0
    while idx < _518:
        _521 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 32] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 32]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 64] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 64]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 96] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 96]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 128] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 160] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_521 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_521 + 32]
        stor6[stor6.length].field_512 = mem[_521 + 64]
        stor6[stor6.length].field_768 = mem[_521 + 96]
        stor6[stor6.length].field_1024 = mem[_521 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_521 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _518 = mem[mem[_449 + 96]]
        idx = idx + 1
        continue 
    _519 = mem[64]
    mem[64] = mem[64] + 128
    mem[_519] = stor3
    mem[_519 + 32] = stor4
    mem[_519 + 64] = stor5
    _520 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_520] = stor6.length
    s = _520 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _570 = mem[64]
        mem[64] = mem[64] + 192
        mem[_570] = stor6[idx].field_0
        mem[_570 + 32] = stor6[idx].field_256
        mem[_570 + 64] = stor6[idx].field_512
        mem[_570 + 96] = stor6[idx].field_768
        mem[_570 + 128] = stor6[idx].field_1024
        mem[_570 + 160] = stor6[idx].field_1280
        mem[s] = _570
        s = s + 32
        idx = idx + 1
        continue 
    mem[_519 + 96] = _520
    _571 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_519]
    mem[mem[64] + 64] = mem[_519 + 32]
    mem[mem[64] + 96] = mem[_519 + 64]
    mem[mem[64] + 128] = 128
    _576 = mem[_520]
    mem[mem[64] + 160] = mem[_520]
    idx = 0
    s = _520 + 32
    t = mem[64] + 192
    while idx < _576:
        _585 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_585 + 32]
        mem[t + 64] = mem[_585 + 64]
        mem[t + 96] = mem[_585 + 96]
        mem[t + 128] = mem[_585 + 140 len 20]
        mem[t + 160] = mem[_585 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _571 + (192 * _576) + -mem[64] + 192
}

function swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    mem[floor32(arg2.length) + 97] = 0
    mem[floor32(arg2.length) + 129] = 0
    mem[floor32(arg2.length) + 161] = 0
    mem[floor32(arg2.length) + 193] = 96
    mem[floor32(arg2.length) + 225] = 0
    mem[floor32(arg2.length) + 257] = 0
    mem[floor32(arg2.length) + 289] = 0
    mem[floor32(arg2.length) + 321] = 96
    mem[floor32(arg2.length) + 353] = 7
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(arg2.length) + 513] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(arg2.length) + 545] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(arg2.length) + 577] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(arg2.length) + 609] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 613] = address(stor1)
    mem[floor32(arg2.length) + 645] = 160
    mem[floor32(arg2.length) + 773] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 805
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 677] = 0
    mem[floor32(arg2.length) + 709] = 0
    mem[floor32(arg2.length) + 741] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 805] = 7
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 837
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 805 len (32 * arg2.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 609
    require return_data.size >= 32
    _285 = mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1)
    require mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 640 < floor32(arg2.length) + return_data.size + 609
    _286 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]) + 610
    mem[floor32(arg2.length) + ceil32(return_data.size) + 609] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 609 len 4], Mask(224, 0, stor1) + 609]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _285 + 641
    t = floor32(arg2.length) + ceil32(return_data.size) + 641
    while idx < _286:
        _367 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _371 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _285 + _367 + 641] == mem[floor32(arg2.length) + _285 + _367 + 641]
        mem[_371] = mem[floor32(arg2.length) + _285 + _367 + 641]
        require mem[floor32(arg2.length) + _285 + _367 + 673] == mem[floor32(arg2.length) + _285 + _367 + 673]
        mem[_371 + 32] = mem[floor32(arg2.length) + _285 + _367 + 673]
        require mem[floor32(arg2.length) + _285 + _367 + 705] == mem[floor32(arg2.length) + _285 + _367 + 705]
        mem[_371 + 64] = mem[floor32(arg2.length) + _285 + _367 + 705]
        _428 = mem[floor32(arg2.length) + _285 + _367 + 737]
        require mem[floor32(arg2.length) + _285 + _367 + 737] <= test266151307()
        require floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 672 < floor32(arg2.length) + return_data.size + 609
        _430 = mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]
        if mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641] > test266151307():
            revert with 'NH{q', 65
        _433 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _285 + _367 + mem[floor32(arg2.length) + _285 + _367 + 737] + 641]) + 1
        mem[_433] = _430
        require _285 + _367 + _428 + (192 * _430) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _285 + _367 + _428 + 673
        w = _433 + 32
        while u < _430:
            require floor32(arg2.length) + return_data.size + -v + 609 >= 192
            _469 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_469] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_469 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_469 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_469 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_469 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_469 + 160] = mem[v + 160]
            mem[w] = _469
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_371 + 96] = _433
        mem[t] = _371
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 641] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 609]:
        revert with 'NH{q', 50
    _449 = mem[floor32(arg2.length) + ceil32(return_data.size) + 641]
    stor3 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641]]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 32]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 64]
    _518 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 641] + 96]]
    idx = 0
    while idx < _518:
        _521 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 32] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 32]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 64] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 64]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 96] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 96]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 128] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_449 + 96]]:
            revert with 'NH{q', 50
        mem[_521 + 160] = mem[mem[(32 * idx) + mem[_449 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_521 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_521 + 32]
        stor6[stor6.length].field_512 = mem[_521 + 64]
        stor6[stor6.length].field_768 = mem[_521 + 96]
        stor6[stor6.length].field_1024 = mem[_521 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_521 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _518 = mem[mem[_449 + 96]]
        idx = idx + 1
        continue 
    _519 = mem[64]
    mem[64] = mem[64] + 128
    mem[_519] = stor3
    mem[_519 + 32] = stor4
    mem[_519 + 64] = stor5
    _520 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_520] = stor6.length
    s = _520 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _570 = mem[64]
        mem[64] = mem[64] + 192
        mem[_570] = stor6[idx].field_0
        mem[_570 + 32] = stor6[idx].field_256
        mem[_570 + 64] = stor6[idx].field_512
        mem[_570 + 96] = stor6[idx].field_768
        mem[_570 + 128] = stor6[idx].field_1024
        mem[_570 + 160] = stor6[idx].field_1280
        mem[s] = _570
        s = s + 32
        idx = idx + 1
        continue 
    mem[_519 + 96] = _520
    _571 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_519]
    mem[mem[64] + 64] = mem[_519 + 32]
    mem[mem[64] + 96] = mem[_519 + 64]
    mem[mem[64] + 128] = 128
    _576 = mem[_520]
    mem[mem[64] + 160] = mem[_520]
    idx = 0
    s = _520 + 32
    t = mem[64] + 192
    while idx < _576:
        _585 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_585 + 32]
        mem[t + 64] = mem[_585 + 64]
        mem[t + 96] = mem[_585 + 96]
        mem[t + 128] = mem[_585 + 140 len 20]
        mem[t + 160] = mem[_585 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _571 + (192 * _576) + -mem[64] + 192
}

function sub_86bf92f7(?) payable {
    require stor5 >= stor2
    if stor6.length != 2:
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor6.length
        mem[64] = (32 * stor6.length) + 128
        if not stor6.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _302 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_302] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_302 + 32] = stor6[idx].field_0
                        mem[_302 + 64] = 300
                        mem[_302 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _302
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _327 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_327] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_327 + 32] = stor6[idx].field_0
                    mem[_327 + 64] = 300
                    mem[_327 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _327
                else:
                    if address(s) != stor6[idx].field_1280:
                        _328 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_328] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_328 + 32] = stor6[idx].field_0
                        mem[_328 + 64] = 300
                        mem[_328 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _328
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _372 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_372] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_372 + 32] = stor6[idx].field_0
                    mem[_372 + 64] = 300
                    mem[_372 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _372
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _282 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _462 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _462:
                _547 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_547 + 44 len 20]
                mem[t + 64] = mem[_547 + 64]
                mem[t + 96] = mem[_547 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _282 + (128 * _462) + -mem[64] + 128
        mem[64] = (32 * stor6.length) + 256
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 0
        mem[var10001] = (32 * stor6.length) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 0
            mem[s + 32] = (32 * stor6.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _727 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_727] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_727 + 32] = stor6[idx].field_0
                    mem[_727 + 64] = 300
                    mem[_727 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _727
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _752 = mem[64]
                mem[64] = mem[64] + 128
                mem[_752] = stor6[idx].field_1024
                mem[0] = 6
                mem[_752 + 32] = stor6[idx].field_0
                mem[_752 + 64] = 300
                mem[_752 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _752
            else:
                if address(s) != stor6[idx].field_1280:
                    _753 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_753] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_753 + 32] = stor6[idx].field_0
                    mem[_753 + 64] = 300
                    mem[_753 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _753
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _787 = mem[64]
                mem[64] = mem[64] + 128
                mem[_787] = stor6[idx].field_1024
                mem[0] = 6
                mem[_787 + 32] = stor6[idx].field_0
                mem[_787 + 64] = 300
                mem[_787 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _787
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _707 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _802 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _802:
            _837 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_837 + 44 len 20]
            mem[t + 64] = mem[_837 + 64]
            mem[t + 96] = mem[_837 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _707 + (128 * _802) + -mem[64] + 128
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    if address(stor6.field_0) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if address(stor6.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor6.length > test266151307():
                revert with 'NH{q', 65
            mem[96] = stor6.length
            mem[64] = (32 * stor6.length) + 128
            if not stor6.length:
                idx = 0
                s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                while idx < stor6.length:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if address(s) != stor6[idx].field_1024:
                        if address(s) != stor6[idx].field_1280:
                            _303 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_303] = 0
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[_303 + 32] = stor6[idx].field_0
                            mem[_303 + 64] = 300
                            mem[_303 + 96] = 1
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _303
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        _331 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_331] = stor6[idx].field_1024
                        mem[0] = 6
                        mem[_331 + 32] = stor6[idx].field_0
                        mem[_331 + 64] = 300
                        mem[_331 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _331
                    else:
                        if address(s) != stor6[idx].field_1280:
                            _332 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_332] = stor6[idx].field_1280
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[_332 + 32] = stor6[idx].field_0
                            mem[_332 + 64] = 300
                            mem[_332 + 96] = 1
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _332
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx].field_1280
                            continue 
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        _375 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_375] = stor6[idx].field_1024
                        mem[0] = 6
                        mem[_375 + 32] = stor6[idx].field_0
                        mem[_375 + 64] = 300
                        mem[_375 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _375
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1024
                    continue 
                _284 = mem[64]
                mem[mem[64]] = stor3
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _465 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _465:
                    _548 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_548 + 44 len 20]
                    mem[t + 64] = mem[_548 + 64]
                    mem[t + 96] = mem[_548 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _284 + (128 * _465) + -mem[64] + 128
            mem[64] = (32 * stor6.length) + 256
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 0
            mem[var17001] = (32 * stor6.length) + 128
            s = var17001
            idx = var17002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[(32 * stor6.length) + 128] = 0
                mem[(32 * stor6.length) + 160] = 0
                mem[(32 * stor6.length) + 192] = 0
                mem[(32 * stor6.length) + 224] = 0
                mem[s + 32] = (32 * stor6.length) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _728 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_728] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_728 + 32] = stor6[idx].field_0
                        mem[_728 + 64] = 300
                        mem[_728 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _728
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _754 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_754] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_754 + 32] = stor6[idx].field_0
                    mem[_754 + 64] = 300
                    mem[_754 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _754
                else:
                    if address(s) != stor6[idx].field_1280:
                        _755 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_755] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_755 + 32] = stor6[idx].field_0
                        mem[_755 + 64] = 300
                        mem[_755 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _755
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _788 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_788] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_788 + 32] = stor6[idx].field_0
                    mem[_788 + 64] = 300
                    mem[_788 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _788
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _709 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _803 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _803:
                _838 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_838 + 44 len 20]
                mem[t + 64] = mem[_838 + 64]
                mem[t + 96] = mem[_838 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _709 + (128 * _803) + -mem[64] + 128
        if 1 >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        require address(stor6.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor6.length
        mem[64] = (32 * stor6.length) + 128
        if not stor6.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _304 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_304] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_304 + 32] = stor6[idx].field_0
                        mem[_304 + 64] = 300
                        mem[_304 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _304
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _335 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_335] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_335 + 32] = stor6[idx].field_0
                    mem[_335 + 64] = 300
                    mem[_335 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _335
                else:
                    if address(s) != stor6[idx].field_1280:
                        _336 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_336] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_336 + 32] = stor6[idx].field_0
                        mem[_336 + 64] = 300
                        mem[_336 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _336
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _378 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_378] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_378 + 32] = stor6[idx].field_0
                    mem[_378 + 64] = 300
                    mem[_378 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _378
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _286 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _468 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _468:
                _549 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_549 + 44 len 20]
                mem[t + 64] = mem[_549 + 64]
                mem[t + 96] = mem[_549 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _286 + (128 * _468) + -mem[64] + 128
        mem[64] = (32 * stor6.length) + 256
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 0
        mem[var19001] = (32 * stor6.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 0
            mem[s + 32] = (32 * stor6.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _729 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_729] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_729 + 32] = stor6[idx].field_0
                    mem[_729 + 64] = 300
                    mem[_729 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _729
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _756 = mem[64]
                mem[64] = mem[64] + 128
                mem[_756] = stor6[idx].field_1024
                mem[0] = 6
                mem[_756 + 32] = stor6[idx].field_0
                mem[_756 + 64] = 300
                mem[_756 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _756
            else:
                if address(s) != stor6[idx].field_1280:
                    _757 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_757] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_757 + 32] = stor6[idx].field_0
                    mem[_757 + 64] = 300
                    mem[_757 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _757
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _789 = mem[64]
                mem[64] = mem[64] + 128
                mem[_789] = stor6[idx].field_1024
                mem[0] = 6
                mem[_789 + 32] = stor6[idx].field_0
                mem[_789 + 64] = 300
                mem[_789 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _789
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _711 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _804 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _804:
            _839 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_839 + 44 len 20]
            mem[t + 64] = mem[_839 + 64]
            mem[t + 96] = mem[_839 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _711 + (128 * _804) + -mem[64] + 128
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    require address(stor6.field_1536) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    mem[0] = 6
    if address(stor6.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor6.length
        mem[64] = (32 * stor6.length) + 128
        if not stor6.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _305 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_305] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_305 + 32] = stor6[idx].field_0
                        mem[_305 + 64] = 300
                        mem[_305 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _305
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _339 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_339] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_339 + 32] = stor6[idx].field_0
                    mem[_339 + 64] = 300
                    mem[_339 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _339
                else:
                    if address(s) != stor6[idx].field_1280:
                        _340 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_340] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_340 + 32] = stor6[idx].field_0
                        mem[_340 + 64] = 300
                        mem[_340 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _340
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _381 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_381] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_381 + 32] = stor6[idx].field_0
                    mem[_381 + 64] = 300
                    mem[_381 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _381
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _288 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _471 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _471:
                _550 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_550 + 44 len 20]
                mem[t + 64] = mem[_550 + 64]
                mem[t + 96] = mem[_550 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _288 + (128 * _471) + -mem[64] + 128
        mem[64] = (32 * stor6.length) + 256
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 0
        mem[var19001] = (32 * stor6.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 0
            mem[s + 32] = (32 * stor6.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _730 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_730] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_730 + 32] = stor6[idx].field_0
                    mem[_730 + 64] = 300
                    mem[_730 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _730
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _758 = mem[64]
                mem[64] = mem[64] + 128
                mem[_758] = stor6[idx].field_1024
                mem[0] = 6
                mem[_758 + 32] = stor6[idx].field_0
                mem[_758 + 64] = 300
                mem[_758 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _758
            else:
                if address(s) != stor6[idx].field_1280:
                    _759 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_759] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_759 + 32] = stor6[idx].field_0
                    mem[_759 + 64] = 300
                    mem[_759 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _759
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _790 = mem[64]
                mem[64] = mem[64] + 128
                mem[_790] = stor6[idx].field_1024
                mem[0] = 6
                mem[_790 + 32] = stor6[idx].field_0
                mem[_790 + 64] = 300
                mem[_790 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _790
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _713 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _805 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _805:
            _840 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_840 + 44 len 20]
            mem[t + 64] = mem[_840 + 64]
            mem[t + 96] = mem[_840 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _713 + (128 * _805) + -mem[64] + 128
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    mem[0] = 6
    require address(stor6.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor6.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor6.length
    mem[64] = (32 * stor6.length) + 128
    if not stor6.length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _306 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_306] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_306 + 32] = stor6[idx].field_0
                    mem[_306 + 64] = 300
                    mem[_306 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _306
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _343 = mem[64]
                mem[64] = mem[64] + 128
                mem[_343] = stor6[idx].field_1024
                mem[0] = 6
                mem[_343 + 32] = stor6[idx].field_0
                mem[_343 + 64] = 300
                mem[_343 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _343
            else:
                if address(s) != stor6[idx].field_1280:
                    _344 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_344] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_344 + 32] = stor6[idx].field_0
                    mem[_344 + 64] = 300
                    mem[_344 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _344
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _384 = mem[64]
                mem[64] = mem[64] + 128
                mem[_384] = stor6[idx].field_1024
                mem[0] = 6
                mem[_384 + 32] = stor6[idx].field_0
                mem[_384 + 64] = 300
                mem[_384 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _384
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _290 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _474 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _474:
            _551 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_551 + 44 len 20]
            mem[t + 64] = mem[_551 + 64]
            mem[t + 96] = mem[_551 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _290 + (128 * _474) + -mem[64] + 128
    mem[64] = (32 * stor6.length) + 256
    mem[(32 * stor6.length) + 128] = 0
    mem[(32 * stor6.length) + 160] = 0
    mem[(32 * stor6.length) + 192] = 0
    mem[(32 * stor6.length) + 224] = 0
    mem[var21001] = (32 * stor6.length) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 0
        mem[s + 32] = (32 * stor6.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    while idx < stor6.length:
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if address(s) != stor6[idx].field_1024:
            if address(s) != stor6[idx].field_1280:
                _731 = mem[64]
                mem[64] = mem[64] + 128
                mem[_731] = 0
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                mem[_731 + 32] = stor6[idx].field_0
                mem[_731 + 64] = 300
                mem[_731 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _731
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                continue 
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _760 = mem[64]
            mem[64] = mem[64] + 128
            mem[_760] = stor6[idx].field_1024
            mem[0] = 6
            mem[_760 + 32] = stor6[idx].field_0
            mem[_760 + 64] = 300
            mem[_760 + 96] = 1
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _760
        else:
            if address(s) != stor6[idx].field_1280:
                _761 = mem[64]
                mem[64] = mem[64] + 128
                mem[_761] = stor6[idx].field_1280
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                mem[_761 + 32] = stor6[idx].field_0
                mem[_761 + 64] = 300
                mem[_761 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _761
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1280
                continue 
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _791 = mem[64]
            mem[64] = mem[64] + 128
            mem[_791] = stor6[idx].field_1024
            mem[0] = 6
            mem[_791 + 32] = stor6[idx].field_0
            mem[_791 + 64] = 300
            mem[_791 + 96] = 1
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _791
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor6[idx].field_1024
        continue 
    _715 = mem[64]
    mem[mem[64]] = stor3
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _806 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _806:
        _841 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_841 + 44 len 20]
        mem[t + 64] = mem[_841 + 64]
        mem[t + 96] = mem[_841 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _715 + (128 * _806) + -mem[64] + 128
}

function sub_d5ffafcc(?) payable {
    require calldata.size - 4 >= 64
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    address(stor1) = address(cd[36])
    mem[floor32(('cd', 4).length) + 97] = 0
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 96
    mem[floor32(('cd', 4).length) + 225] = 7
    mem[64] = floor32(('cd', 4).length) + 481
    mem[floor32(('cd', 4).length) + 257] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(('cd', 4).length) + 289] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 4).length) + 321] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(('cd', 4).length) + 353] = 0xdadaae6cdfe4fa3c35d54811087b3bc3cd60f348
    mem[floor32(('cd', 4).length) + 385] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[floor32(('cd', 4).length) + 417] = 0xf7b1e993d1b4f7348d64aa55a294e4b74512f7f2
    mem[floor32(('cd', 4).length) + 449] = 0x262dcfb36766c88e6a7a2953c16f8defc40c378a
    mem[floor32(('cd', 4).length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 485] = address(stor1)
    mem[floor32(('cd', 4).length) + 517] = 160
    mem[floor32(('cd', 4).length) + 645] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 677
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 549] = 0
    mem[floor32(('cd', 4).length) + 581] = 0
    mem[floor32(('cd', 4).length) + 613] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 677] = 7
    idx = 0
    s = floor32(('cd', 4).length) + 257
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 709
    while idx < mem[floor32(('cd', 4).length) + 225]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + (32 * mem[floor32(('cd', 4).length) + 225]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1071 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1072 = mem[_1071]
    require mem[_1071] <= test266151307()
    require _1071 + mem[_1071] + 31 < _1071 + return_data.size
    _1073 = mem[_1071 + mem[_1071]]
    if mem[_1071 + mem[_1071]] > test266151307():
        revert with 'NH{q', 65
    if _1071 + ceil32(return_data.size) + floor32(mem[_1071 + mem[_1071]]) + 1 > test266151307() or floor32(mem[_1071 + mem[_1071]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1071 + ceil32(return_data.size) + floor32(mem[_1071 + mem[_1071]]) + 1
    mem[_1071 + ceil32(return_data.size)] = _1073
    require _1072 + (32 * _1073) + 32 <= return_data.size
    idx = 0
    s = _1071 + _1072 + 32
    t = _1071 + ceil32(return_data.size) + 32
    while idx < _1073:
        _1416 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_1072 + -mem[s] - 32 >= 128
        _1420 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_1071 + _1072 + _1416 + 32] == mem[_1071 + _1072 + _1416 + 32]
        mem[_1420] = mem[_1071 + _1072 + _1416 + 32]
        require mem[_1071 + _1072 + _1416 + 64] == mem[_1071 + _1072 + _1416 + 64]
        mem[_1420 + 32] = mem[_1071 + _1072 + _1416 + 64]
        require mem[_1071 + _1072 + _1416 + 96] == mem[_1071 + _1072 + _1416 + 96]
        mem[_1420 + 64] = mem[_1071 + _1072 + _1416 + 96]
        _1576 = mem[_1071 + _1072 + _1416 + 128]
        require mem[_1071 + _1072 + _1416 + 128] <= test266151307()
        require _1071 + _1072 + _1416 + mem[_1071 + _1072 + _1416 + 128] + 63 < _1071 + return_data.size
        _1623 = mem[_1071 + _1072 + _1416 + mem[_1071 + _1072 + _1416 + 128] + 32]
        if mem[_1071 + _1072 + _1416 + mem[_1071 + _1072 + _1416 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _1685 = mem[64]
        if mem[64] + floor32(mem[_1071 + _1072 + _1416 + mem[_1071 + _1072 + _1416 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_1071 + _1072 + _1416 + mem[_1071 + _1072 + _1416 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_1071 + _1072 + _1416 + mem[_1071 + _1072 + _1416 + 128] + 32]) + 1
        mem[_1685] = _1623
        require _1072 + _1416 + _1576 + (192 * _1623) + 64 <= return_data.size
        u = 0
        v = _1071 + _1072 + _1416 + _1576 + 64
        w = _1685 + 32
        while u < _1623:
            require _1071 + return_data.size - v >= 192
            _1780 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_1780] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_1780 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_1780 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_1780 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_1780 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_1780 + 160] = mem[v + 160]
            mem[w] = _1780
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_1420 + 96] = _1685
        mem[t] = _1420
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    t = 0
    while t < mem[_1071 + ceil32(return_data.size)]:
        if t >= mem[_1071 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * t) + _1071 + ceil32(return_data.size) + 32] + 64] > 0:
            if t >= mem[_1071 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        continue 
    if 0 >= mem[_1071 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _1760 = mem[_1071 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_1071 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_1071 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_1071 + ceil32(return_data.size) + 32] + 64]
    _2091 = mem[mem[mem[_1071 + ceil32(return_data.size) + 32] + 96]]
    t = 0
    while t < _2091:
        _2094 = mem[64]
        mem[64] = mem[64] + 192
        if t >= mem[mem[_1760 + 96]]:
            revert with 'NH{q', 50
        mem[_2094] = mem[mem[(32 * t) + mem[_1760 + 96] + 32] + 12 len 20]
        if t >= mem[mem[_1760 + 96]]:
            revert with 'NH{q', 50
        mem[_2094 + 32] = mem[mem[(32 * t) + mem[_1760 + 96] + 32] + 32]
        if t >= mem[mem[_1760 + 96]]:
            revert with 'NH{q', 50
        mem[_2094 + 64] = mem[mem[(32 * t) + mem[_1760 + 96] + 32] + 64]
        if t >= mem[mem[_1760 + 96]]:
            revert with 'NH{q', 50
        mem[_2094 + 96] = mem[mem[(32 * t) + mem[_1760 + 96] + 32] + 96]
        if t >= mem[mem[_1760 + 96]]:
            revert with 'NH{q', 50
        mem[_2094 + 128] = mem[mem[(32 * t) + mem[_1760 + 96] + 32] + 140 len 20]
        if t >= mem[mem[_1760 + 96]]:
            revert with 'NH{q', 50
        mem[_2094 + 160] = mem[mem[(32 * t) + mem[_1760 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_2094 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_2094 + 32]
        stor6[stor6.length].field_512 = mem[_2094 + 64]
        stor6[stor6.length].field_768 = mem[_2094 + 96]
        stor6[stor6.length].field_1024 = mem[_2094 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_2094 + 172 len 20]
        if t == -1:
            revert with 'NH{q', 17
        _2091 = mem[mem[_1760 + 96]]
        t = t + 1
        continue 
    _2092 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2092] = stor3
    mem[_2092 + 32] = stor4
    mem[_2092 + 64] = stor5
    _2093 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_2093] = stor6.length
    u = _2093 + 32
    t = 0
    while t < stor6.length:
        mem[0] = 6
        _2405 = mem[64]
        mem[64] = mem[64] + 192
        mem[_2405] = stor6[t].field_0
        mem[_2405 + 32] = stor6[t].field_256
        mem[_2405 + 64] = stor6[t].field_512
        mem[_2405 + 96] = stor6[t].field_768
        mem[_2405 + 128] = stor6[t].field_1024
        mem[_2405 + 160] = stor6[t].field_1280
        mem[u] = _2405
        u = u + 32
        t = t + 1
        continue 
    mem[_2092 + 96] = _2093
    require stor5 >= stor2
    if stor6.length != 2:
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        _2406 = mem[64]
        mem[mem[64]] = stor6.length
        mem[64] = mem[64] + (32 * stor6.length) + 32
        if not stor6.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _2707 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2707] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2707 + 32] = stor6[idx].field_0
                        mem[_2707 + 64] = 300
                        mem[_2707 + 96] = 1
                        if idx >= mem[_2406]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2406 + 32] = _2707
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2732 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2732] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2732 + 32] = stor6[idx].field_0
                    mem[_2732 + 64] = 300
                    mem[_2732 + 96] = 1
                    if idx >= mem[_2406]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2406 + 32] = _2732
                else:
                    if address(s) != stor6[idx].field_1280:
                        _2733 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2733] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2733 + 32] = stor6[idx].field_0
                        mem[_2733 + 64] = 300
                        mem[_2733 + 96] = 1
                        if idx >= mem[_2406]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2406 + 32] = _2733
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2777 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2777] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2777 + 32] = stor6[idx].field_0
                    mem[_2777 + 64] = 300
                    mem[_2777 + 96] = 1
                    if idx >= mem[_2406]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2406 + 32] = _2777
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _2692 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2877 = mem[_2406]
            mem[mem[64] + 96] = mem[_2406]
            idx = 0
            s = _2406 + 32
            t = mem[64] + 128
            while idx < _2877:
                _2952 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2952 + 44 len 20]
                mem[t + 64] = mem[_2952 + 64]
                mem[t + 96] = mem[_2952 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2692 + (128 * _2877) + -mem[64] + 128
        mem[64] = _2406 + (32 * stor6.length) + 160
        mem[_2406 + (32 * stor6.length) + 32] = 0
        mem[_2406 + (32 * stor6.length) + 64] = 0
        mem[_2406 + (32 * stor6.length) + 96] = 0
        mem[_2406 + (32 * stor6.length) + 128] = 0
        mem[var138001] = _2406 + (32 * stor6.length) + 32
        s = var138001
        idx = var138002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2406 + (32 * stor6.length) + 32] = 0
            mem[_2406 + (32 * stor6.length) + 64] = 0
            mem[_2406 + (32 * stor6.length) + 96] = 0
            mem[_2406 + (32 * stor6.length) + 128] = 0
            mem[s + 32] = _2406 + (32 * stor6.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _3132 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3132] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3132 + 32] = stor6[idx].field_0
                    mem[_3132 + 64] = 300
                    mem[_3132 + 96] = 1
                    if idx >= mem[_2406]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2406 + 32] = _3132
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3157 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3157] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3157 + 32] = stor6[idx].field_0
                mem[_3157 + 64] = 300
                mem[_3157 + 96] = 1
                if idx >= mem[_2406]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2406 + 32] = _3157
            else:
                if address(s) != stor6[idx].field_1280:
                    _3158 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3158] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3158 + 32] = stor6[idx].field_0
                    mem[_3158 + 64] = 300
                    mem[_3158 + 96] = 1
                    if idx >= mem[_2406]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2406 + 32] = _3158
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3192 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3192] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3192 + 32] = stor6[idx].field_0
                mem[_3192 + 64] = 300
                mem[_3192 + 96] = 1
                if idx >= mem[_2406]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2406 + 32] = _3192
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _3117 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3207 = mem[_2406]
        mem[mem[64] + 96] = mem[_2406]
        idx = 0
        s = _2406 + 32
        t = mem[64] + 128
        while idx < _3207:
            _3242 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3242 + 44 len 20]
            mem[t + 64] = mem[_3242 + 64]
            mem[t + 96] = mem[_3242 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3117 + (128 * _3207) + -mem[64] + 128
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    if address(stor6.field_0) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if address(stor6.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor6.length > test266151307():
                revert with 'NH{q', 65
            _2418 = mem[64]
            mem[mem[64]] = stor6.length
            mem[64] = mem[64] + (32 * stor6.length) + 32
            if not stor6.length:
                idx = 0
                s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                while idx < stor6.length:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if address(s) != stor6[idx].field_1024:
                        if address(s) != stor6[idx].field_1280:
                            _2708 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2708] = 0
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[_2708 + 32] = stor6[idx].field_0
                            mem[_2708 + 64] = 300
                            mem[_2708 + 96] = 1
                            if idx >= mem[_2418]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2418 + 32] = _2708
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        _2735 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2735] = stor6[idx].field_1024
                        mem[0] = 6
                        mem[_2735 + 32] = stor6[idx].field_0
                        mem[_2735 + 64] = 300
                        mem[_2735 + 96] = 1
                        if idx >= mem[_2418]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2418 + 32] = _2735
                    else:
                        if address(s) != stor6[idx].field_1280:
                            _2736 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2736] = stor6[idx].field_1280
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[_2736 + 32] = stor6[idx].field_0
                            mem[_2736 + 64] = 300
                            mem[_2736 + 96] = 1
                            if idx >= mem[_2418]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2418 + 32] = _2736
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx].field_1280
                            continue 
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        _2780 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2780] = stor6[idx].field_1024
                        mem[0] = 6
                        mem[_2780 + 32] = stor6[idx].field_0
                        mem[_2780 + 64] = 300
                        mem[_2780 + 96] = 1
                        if idx >= mem[_2418]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2418 + 32] = _2780
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1024
                    continue 
                _2693 = mem[64]
                mem[mem[64]] = stor3
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _2878 = mem[_2418]
                mem[mem[64] + 96] = mem[_2418]
                idx = 0
                s = _2418 + 32
                t = mem[64] + 128
                while idx < _2878:
                    _2953 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2953 + 44 len 20]
                    mem[t + 64] = mem[_2953 + 64]
                    mem[t + 96] = mem[_2953 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _2693 + (128 * _2878) + -mem[64] + 128
            mem[64] = _2418 + (32 * stor6.length) + 160
            mem[_2418 + (32 * stor6.length) + 32] = 0
            mem[_2418 + (32 * stor6.length) + 64] = 0
            mem[_2418 + (32 * stor6.length) + 96] = 0
            mem[_2418 + (32 * stor6.length) + 128] = 0
            mem[var145001] = _2418 + (32 * stor6.length) + 32
            s = var145001
            idx = var145002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[_2418 + (32 * stor6.length) + 32] = 0
                mem[_2418 + (32 * stor6.length) + 64] = 0
                mem[_2418 + (32 * stor6.length) + 96] = 0
                mem[_2418 + (32 * stor6.length) + 128] = 0
                mem[s + 32] = _2418 + (32 * stor6.length) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _3133 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3133] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_3133 + 32] = stor6[idx].field_0
                        mem[_3133 + 64] = 300
                        mem[_3133 + 96] = 1
                        if idx >= mem[_2418]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2418 + 32] = _3133
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _3159 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3159] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_3159 + 32] = stor6[idx].field_0
                    mem[_3159 + 64] = 300
                    mem[_3159 + 96] = 1
                    if idx >= mem[_2418]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2418 + 32] = _3159
                else:
                    if address(s) != stor6[idx].field_1280:
                        _3160 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3160] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_3160 + 32] = stor6[idx].field_0
                        mem[_3160 + 64] = 300
                        mem[_3160 + 96] = 1
                        if idx >= mem[_2418]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2418 + 32] = _3160
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _3193 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3193] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_3193 + 32] = stor6[idx].field_0
                    mem[_3193 + 64] = 300
                    mem[_3193 + 96] = 1
                    if idx >= mem[_2418]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2418 + 32] = _3193
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _3118 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3208 = mem[_2418]
            mem[mem[64] + 96] = mem[_2418]
            idx = 0
            s = _2418 + 32
            t = mem[64] + 128
            while idx < _3208:
                _3243 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3243 + 44 len 20]
                mem[t + 64] = mem[_3243 + 64]
                mem[t + 96] = mem[_3243 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _3118 + (128 * _3208) + -mem[64] + 128
        if 1 >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        require address(stor6.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        _2427 = mem[64]
        mem[mem[64]] = stor6.length
        mem[64] = mem[64] + (32 * stor6.length) + 32
        if not stor6.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _2709 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2709] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2709 + 32] = stor6[idx].field_0
                        mem[_2709 + 64] = 300
                        mem[_2709 + 96] = 1
                        if idx >= mem[_2427]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2427 + 32] = _2709
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2738 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2738] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2738 + 32] = stor6[idx].field_0
                    mem[_2738 + 64] = 300
                    mem[_2738 + 96] = 1
                    if idx >= mem[_2427]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2427 + 32] = _2738
                else:
                    if address(s) != stor6[idx].field_1280:
                        _2739 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2739] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2739 + 32] = stor6[idx].field_0
                        mem[_2739 + 64] = 300
                        mem[_2739 + 96] = 1
                        if idx >= mem[_2427]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2427 + 32] = _2739
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2783 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2783] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2783 + 32] = stor6[idx].field_0
                    mem[_2783 + 64] = 300
                    mem[_2783 + 96] = 1
                    if idx >= mem[_2427]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2427 + 32] = _2783
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _2694 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2879 = mem[_2427]
            mem[mem[64] + 96] = mem[_2427]
            idx = 0
            s = _2427 + 32
            t = mem[64] + 128
            while idx < _2879:
                _2954 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2954 + 44 len 20]
                mem[t + 64] = mem[_2954 + 64]
                mem[t + 96] = mem[_2954 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2694 + (128 * _2879) + -mem[64] + 128
        mem[64] = _2427 + (32 * stor6.length) + 160
        mem[_2427 + (32 * stor6.length) + 32] = 0
        mem[_2427 + (32 * stor6.length) + 64] = 0
        mem[_2427 + (32 * stor6.length) + 96] = 0
        mem[_2427 + (32 * stor6.length) + 128] = 0
        mem[var147001] = _2427 + (32 * stor6.length) + 32
        s = var147001
        idx = var147002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2427 + (32 * stor6.length) + 32] = 0
            mem[_2427 + (32 * stor6.length) + 64] = 0
            mem[_2427 + (32 * stor6.length) + 96] = 0
            mem[_2427 + (32 * stor6.length) + 128] = 0
            mem[s + 32] = _2427 + (32 * stor6.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _3134 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3134] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3134 + 32] = stor6[idx].field_0
                    mem[_3134 + 64] = 300
                    mem[_3134 + 96] = 1
                    if idx >= mem[_2427]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2427 + 32] = _3134
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3161 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3161] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3161 + 32] = stor6[idx].field_0
                mem[_3161 + 64] = 300
                mem[_3161 + 96] = 1
                if idx >= mem[_2427]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2427 + 32] = _3161
            else:
                if address(s) != stor6[idx].field_1280:
                    _3162 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3162] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3162 + 32] = stor6[idx].field_0
                    mem[_3162 + 64] = 300
                    mem[_3162 + 96] = 1
                    if idx >= mem[_2427]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2427 + 32] = _3162
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3194 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3194] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3194 + 32] = stor6[idx].field_0
                mem[_3194 + 64] = 300
                mem[_3194 + 96] = 1
                if idx >= mem[_2427]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2427 + 32] = _3194
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _3119 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3209 = mem[_2427]
        mem[mem[64] + 96] = mem[_2427]
        idx = 0
        s = _2427 + 32
        t = mem[64] + 128
        while idx < _3209:
            _3244 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3244 + 44 len 20]
            mem[t + 64] = mem[_3244 + 64]
            mem[t + 96] = mem[_3244 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3119 + (128 * _3209) + -mem[64] + 128
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    require address(stor6.field_1536) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    mem[0] = 6
    if address(stor6.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        _2428 = mem[64]
        mem[mem[64]] = stor6.length
        mem[64] = mem[64] + (32 * stor6.length) + 32
        if not stor6.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if address(s) != stor6[idx].field_1024:
                    if address(s) != stor6[idx].field_1280:
                        _2710 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2710] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2710 + 32] = stor6[idx].field_0
                        mem[_2710 + 64] = 300
                        mem[_2710 + 96] = 1
                        if idx >= mem[_2428]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2428 + 32] = _2710
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2741 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2741] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2741 + 32] = stor6[idx].field_0
                    mem[_2741 + 64] = 300
                    mem[_2741 + 96] = 1
                    if idx >= mem[_2428]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2428 + 32] = _2741
                else:
                    if address(s) != stor6[idx].field_1280:
                        _2742 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2742] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2742 + 32] = stor6[idx].field_0
                        mem[_2742 + 64] = 300
                        mem[_2742 + 96] = 1
                        if idx >= mem[_2428]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2428 + 32] = _2742
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2786 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2786] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2786 + 32] = stor6[idx].field_0
                    mem[_2786 + 64] = 300
                    mem[_2786 + 96] = 1
                    if idx >= mem[_2428]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2428 + 32] = _2786
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _2695 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2880 = mem[_2428]
            mem[mem[64] + 96] = mem[_2428]
            idx = 0
            s = _2428 + 32
            t = mem[64] + 128
            while idx < _2880:
                _2955 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2955 + 44 len 20]
                mem[t + 64] = mem[_2955 + 64]
                mem[t + 96] = mem[_2955 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2695 + (128 * _2880) + -mem[64] + 128
        mem[64] = _2428 + (32 * stor6.length) + 160
        mem[_2428 + (32 * stor6.length) + 32] = 0
        mem[_2428 + (32 * stor6.length) + 64] = 0
        mem[_2428 + (32 * stor6.length) + 96] = 0
        mem[_2428 + (32 * stor6.length) + 128] = 0
        mem[var147001] = _2428 + (32 * stor6.length) + 32
        s = var147001
        idx = var147002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2428 + (32 * stor6.length) + 32] = 0
            mem[_2428 + (32 * stor6.length) + 64] = 0
            mem[_2428 + (32 * stor6.length) + 96] = 0
            mem[_2428 + (32 * stor6.length) + 128] = 0
            mem[s + 32] = _2428 + (32 * stor6.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _3135 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3135] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3135 + 32] = stor6[idx].field_0
                    mem[_3135 + 64] = 300
                    mem[_3135 + 96] = 1
                    if idx >= mem[_2428]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2428 + 32] = _3135
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3163 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3163] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3163 + 32] = stor6[idx].field_0
                mem[_3163 + 64] = 300
                mem[_3163 + 96] = 1
                if idx >= mem[_2428]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2428 + 32] = _3163
            else:
                if address(s) != stor6[idx].field_1280:
                    _3164 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3164] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3164 + 32] = stor6[idx].field_0
                    mem[_3164 + 64] = 300
                    mem[_3164 + 96] = 1
                    if idx >= mem[_2428]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2428 + 32] = _3164
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3195 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3195] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3195 + 32] = stor6[idx].field_0
                mem[_3195 + 64] = 300
                mem[_3195 + 96] = 1
                if idx >= mem[_2428]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2428 + 32] = _3195
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _3120 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3210 = mem[_2428]
        mem[mem[64] + 96] = mem[_2428]
        idx = 0
        s = _2428 + 32
        t = mem[64] + 128
        while idx < _3210:
            _3245 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3245 + 44 len 20]
            mem[t + 64] = mem[_3245 + 64]
            mem[t + 96] = mem[_3245 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3120 + (128 * _3210) + -mem[64] + 128
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    mem[0] = 6
    require address(stor6.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor6.length > test266151307():
        revert with 'NH{q', 65
    _2440 = mem[64]
    mem[mem[64]] = stor6.length
    mem[64] = mem[64] + (32 * stor6.length) + 32
    if not stor6.length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if address(s) != stor6[idx].field_1024:
                if address(s) != stor6[idx].field_1280:
                    _2711 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2711] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_2711 + 32] = stor6[idx].field_0
                    mem[_2711 + 64] = 300
                    mem[_2711 + 96] = 1
                    if idx >= mem[_2440]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2440 + 32] = _2711
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _2744 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2744] = stor6[idx].field_1024
                mem[0] = 6
                mem[_2744 + 32] = stor6[idx].field_0
                mem[_2744 + 64] = 300
                mem[_2744 + 96] = 1
                if idx >= mem[_2440]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2440 + 32] = _2744
            else:
                if address(s) != stor6[idx].field_1280:
                    _2745 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2745] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_2745 + 32] = stor6[idx].field_0
                    mem[_2745 + 64] = 300
                    mem[_2745 + 96] = 1
                    if idx >= mem[_2440]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2440 + 32] = _2745
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _2789 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2789] = stor6[idx].field_1024
                mem[0] = 6
                mem[_2789 + 32] = stor6[idx].field_0
                mem[_2789 + 64] = 300
                mem[_2789 + 96] = 1
                if idx >= mem[_2440]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2440 + 32] = _2789
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _2696 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _2881 = mem[_2440]
        mem[mem[64] + 96] = mem[_2440]
        idx = 0
        s = _2440 + 32
        t = mem[64] + 128
        while idx < _2881:
            _2956 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2956 + 44 len 20]
            mem[t + 64] = mem[_2956 + 64]
            mem[t + 96] = mem[_2956 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2696 + (128 * _2881) + -mem[64] + 128
    mem[64] = _2440 + (32 * stor6.length) + 160
    mem[_2440 + (32 * stor6.length) + 32] = 0
    mem[_2440 + (32 * stor6.length) + 64] = 0
    mem[_2440 + (32 * stor6.length) + 96] = 0
    mem[_2440 + (32 * stor6.length) + 128] = 0
    mem[var149001] = _2440 + (32 * stor6.length) + 32
    u = var149001
    t = var149002
    while t - 1:
        mem[64] = mem[64] + 128
        mem[_2440 + (32 * stor6.length) + 32] = 0
        mem[_2440 + (32 * stor6.length) + 64] = 0
        mem[_2440 + (32 * stor6.length) + 96] = 0
        mem[_2440 + (32 * stor6.length) + 128] = 0
        mem[u + 32] = _2440 + (32 * stor6.length) + 32
        u = u + 32
        t = t - 1
        continue 
    t = 0
    u = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    while t < stor6.length:
        if t >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if address(u) != stor6[t].field_1024:
            if address(u) != stor6[t].field_1280:
                _3136 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3136] = 0
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                mem[_3136 + 32] = stor6[t].field_0
                mem[_3136 + 64] = 300
                mem[_3136 + 96] = 1
                if t >= mem[_2440]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _2440 + 32] = _3136
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = 0
                continue 
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _3165 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3165] = stor6[t].field_1024
            mem[0] = 6
            mem[_3165 + 32] = stor6[t].field_0
            mem[_3165 + 64] = 300
            mem[_3165 + 96] = 1
            if t >= mem[_2440]:
                revert with 'NH{q', 50
            mem[(32 * t) + _2440 + 32] = _3165
        else:
            if address(u) != stor6[t].field_1280:
                _3166 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3166] = stor6[t].field_1280
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                mem[_3166 + 32] = stor6[t].field_0
                mem[_3166 + 64] = 300
                mem[_3166 + 96] = 1
                if t >= mem[_2440]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _2440 + 32] = _3166
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t].field_1280
                continue 
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _3196 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3196] = stor6[t].field_1024
            mem[0] = 6
            mem[_3196 + 32] = stor6[t].field_0
            mem[_3196 + 64] = 300
            mem[_3196 + 96] = 1
            if t >= mem[_2440]:
                revert with 'NH{q', 50
            mem[(32 * t) + _2440 + 32] = _3196
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        u = stor6[t].field_1024
        continue 
    _3121 = mem[64]
    mem[mem[64]] = stor3
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _3211 = mem[_2440]
    mem[mem[64] + 96] = mem[_2440]
    idx = 0
    s = _2440 + 32
    t = mem[64] + 128
    while idx < _3211:
        _3246 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_3246 + 44 len 20]
        mem[t + 64] = mem[_3246 + 64]
        mem[t + 96] = mem[_3246 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _3121 + (128 * _3211) + -mem[64] + 128
}



}
