contract main {




// =====================  Runtime code  =====================


address stor0;
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

function setAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    address(stor1) = arg1
    return block.number
}

function setMinProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'owner'
    stor2 = arg1
    return stor2
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
    mem[floor32(arg2.length) + 353] = 3
    mem[64] = floor32(arg2.length) + 481
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 485] = address(stor1)
    mem[floor32(arg2.length) + 517] = 160
    mem[floor32(arg2.length) + 645] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 677
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 549] = 0
    mem[floor32(arg2.length) + 581] = 0
    mem[floor32(arg2.length) + 613] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 677] = 3
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 709
    while idx < mem[floor32(arg2.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg2.length) + (32 * arg2.length) + (32 * mem[floor32(arg2.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    require mem[_277] <= test266151307()
    require _277 + mem[_277] + 31 < _277 + return_data.size
    _279 = mem[_277 + mem[_277]]
    if mem[_277 + mem[_277]] > test266151307():
        revert with 'NH{q', 65
    if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
    mem[_277 + ceil32(return_data.size)] = _279
    require _278 + (32 * _279) + 32 <= return_data.size
    idx = 0
    s = _277 + _278 + 32
    t = _277 + ceil32(return_data.size) + 32
    while idx < _279:
        _360 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_278 + -mem[s] - 32 >= 128
        _364 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_277 + _278 + _360 + 32] == mem[_277 + _278 + _360 + 32]
        mem[_364] = mem[_277 + _278 + _360 + 32]
        require mem[_277 + _278 + _360 + 64] == mem[_277 + _278 + _360 + 64]
        mem[_364 + 32] = mem[_277 + _278 + _360 + 64]
        require mem[_277 + _278 + _360 + 96] == mem[_277 + _278 + _360 + 96]
        mem[_364 + 64] = mem[_277 + _278 + _360 + 96]
        _421 = mem[_277 + _278 + _360 + 128]
        require mem[_277 + _278 + _360 + 128] <= test266151307()
        require _277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 63 < _277 + return_data.size
        _423 = mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]
        if mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _426 = mem[64]
        if mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1
        mem[_426] = _423
        require _278 + _360 + _421 + (192 * _423) + 64 <= return_data.size
        u = 0
        v = _277 + _278 + _360 + _421 + 64
        w = _426 + 32
        while u < _423:
            require _277 + return_data.size - v >= 192
            _462 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_462] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_462 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_462 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_462 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_462 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_462 + 160] = mem[v + 160]
            mem[w] = _462
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_364 + 96] = _426
        mem[t] = _364
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_277 + ceil32(return_data.size)]:
        if idx >= mem[_277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _277 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_277 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_277 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _442 = mem[_277 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_277 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_277 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_277 + ceil32(return_data.size) + 32] + 64]
    _511 = mem[mem[mem[_277 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _511:
        _514 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 32] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 32]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 64] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 64]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 96] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 96]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 128] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 160] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_514 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_514 + 32]
        stor6[stor6.length].field_512 = mem[_514 + 64]
        stor6[stor6.length].field_768 = mem[_514 + 96]
        stor6[stor6.length].field_1024 = mem[_514 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_514 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _511 = mem[mem[_442 + 96]]
        idx = idx + 1
        continue 
    _512 = mem[64]
    mem[64] = mem[64] + 128
    mem[_512] = stor3
    mem[_512 + 32] = stor4
    mem[_512 + 64] = stor5
    _513 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_513] = stor6.length
    s = _513 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _563 = mem[64]
        mem[64] = mem[64] + 192
        mem[_563] = stor6[idx].field_0
        mem[_563 + 32] = stor6[idx].field_256
        mem[_563 + 64] = stor6[idx].field_512
        mem[_563 + 96] = stor6[idx].field_768
        mem[_563 + 128] = stor6[idx].field_1024
        mem[_563 + 160] = stor6[idx].field_1280
        mem[s] = _563
        s = s + 32
        idx = idx + 1
        continue 
    mem[_512 + 96] = _513
    _564 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_512]
    mem[mem[64] + 64] = mem[_512 + 32]
    mem[mem[64] + 96] = mem[_512 + 64]
    mem[mem[64] + 128] = 128
    _569 = mem[_513]
    mem[mem[64] + 160] = mem[_513]
    idx = 0
    s = _513 + 32
    t = mem[64] + 192
    while idx < _569:
        _578 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_578 + 32]
        mem[t + 64] = mem[_578 + 64]
        mem[t + 96] = mem[_578 + 96]
        mem[t + 128] = mem[_578 + 140 len 20]
        mem[t + 160] = mem[_578 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _564 + (192 * _569) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 3
    mem[64] = floor32(arg2.length) + 481
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 485] = address(stor1)
    mem[floor32(arg2.length) + 517] = 160
    mem[floor32(arg2.length) + 645] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 677
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 549] = 0
    mem[floor32(arg2.length) + 581] = 0
    mem[floor32(arg2.length) + 613] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 677] = 3
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 709
    while idx < mem[floor32(arg2.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg2.length) + (32 * arg2.length) + (32 * mem[floor32(arg2.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    require mem[_277] <= test266151307()
    require _277 + mem[_277] + 31 < _277 + return_data.size
    _279 = mem[_277 + mem[_277]]
    if mem[_277 + mem[_277]] > test266151307():
        revert with 'NH{q', 65
    if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
    mem[_277 + ceil32(return_data.size)] = _279
    require _278 + (32 * _279) + 32 <= return_data.size
    idx = 0
    s = _277 + _278 + 32
    t = _277 + ceil32(return_data.size) + 32
    while idx < _279:
        _360 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_278 + -mem[s] - 32 >= 128
        _364 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_277 + _278 + _360 + 32] == mem[_277 + _278 + _360 + 32]
        mem[_364] = mem[_277 + _278 + _360 + 32]
        require mem[_277 + _278 + _360 + 64] == mem[_277 + _278 + _360 + 64]
        mem[_364 + 32] = mem[_277 + _278 + _360 + 64]
        require mem[_277 + _278 + _360 + 96] == mem[_277 + _278 + _360 + 96]
        mem[_364 + 64] = mem[_277 + _278 + _360 + 96]
        _421 = mem[_277 + _278 + _360 + 128]
        require mem[_277 + _278 + _360 + 128] <= test266151307()
        require _277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 63 < _277 + return_data.size
        _423 = mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]
        if mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _426 = mem[64]
        if mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1
        mem[_426] = _423
        require _278 + _360 + _421 + (192 * _423) + 64 <= return_data.size
        u = 0
        v = _277 + _278 + _360 + _421 + 64
        w = _426 + 32
        while u < _423:
            require _277 + return_data.size - v >= 192
            _462 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_462] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_462 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_462 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_462 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_462 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_462 + 160] = mem[v + 160]
            mem[w] = _462
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_364 + 96] = _426
        mem[t] = _364
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_277 + ceil32(return_data.size)]:
        if idx >= mem[_277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _277 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_277 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_277 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _442 = mem[_277 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_277 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_277 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_277 + ceil32(return_data.size) + 32] + 64]
    _511 = mem[mem[mem[_277 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _511:
        _514 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 32] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 32]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 64] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 64]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 96] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 96]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 128] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 160] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_514 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_514 + 32]
        stor6[stor6.length].field_512 = mem[_514 + 64]
        stor6[stor6.length].field_768 = mem[_514 + 96]
        stor6[stor6.length].field_1024 = mem[_514 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_514 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _511 = mem[mem[_442 + 96]]
        idx = idx + 1
        continue 
    _512 = mem[64]
    mem[64] = mem[64] + 128
    mem[_512] = stor3
    mem[_512 + 32] = stor4
    mem[_512 + 64] = stor5
    _513 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_513] = stor6.length
    s = _513 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _563 = mem[64]
        mem[64] = mem[64] + 192
        mem[_563] = stor6[idx].field_0
        mem[_563 + 32] = stor6[idx].field_256
        mem[_563 + 64] = stor6[idx].field_512
        mem[_563 + 96] = stor6[idx].field_768
        mem[_563 + 128] = stor6[idx].field_1024
        mem[_563 + 160] = stor6[idx].field_1280
        mem[s] = _563
        s = s + 32
        idx = idx + 1
        continue 
    mem[_512 + 96] = _513
    _564 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_512]
    mem[mem[64] + 64] = mem[_512 + 32]
    mem[mem[64] + 96] = mem[_512 + 64]
    mem[mem[64] + 128] = 128
    _569 = mem[_513]
    mem[mem[64] + 160] = mem[_513]
    idx = 0
    s = _513 + 32
    t = mem[64] + 192
    while idx < _569:
        _578 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_578 + 32]
        mem[t + 64] = mem[_578 + 64]
        mem[t + 96] = mem[_578 + 96]
        mem[t + 128] = mem[_578 + 140 len 20]
        mem[t + 160] = mem[_578 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _564 + (192 * _569) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 3
    mem[64] = floor32(arg2.length) + 481
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 485] = address(stor1)
    mem[floor32(arg2.length) + 517] = 160
    mem[floor32(arg2.length) + 645] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 677
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 549] = 0
    mem[floor32(arg2.length) + 581] = 0
    mem[floor32(arg2.length) + 613] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 677] = 3
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 709
    while idx < mem[floor32(arg2.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg2.length) + (32 * arg2.length) + (32 * mem[floor32(arg2.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    require mem[_277] <= test266151307()
    require _277 + mem[_277] + 31 < _277 + return_data.size
    _279 = mem[_277 + mem[_277]]
    if mem[_277 + mem[_277]] > test266151307():
        revert with 'NH{q', 65
    if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
    mem[_277 + ceil32(return_data.size)] = _279
    require _278 + (32 * _279) + 32 <= return_data.size
    idx = 0
    s = _277 + _278 + 32
    t = _277 + ceil32(return_data.size) + 32
    while idx < _279:
        _360 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_278 + -mem[s] - 32 >= 128
        _364 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_277 + _278 + _360 + 32] == mem[_277 + _278 + _360 + 32]
        mem[_364] = mem[_277 + _278 + _360 + 32]
        require mem[_277 + _278 + _360 + 64] == mem[_277 + _278 + _360 + 64]
        mem[_364 + 32] = mem[_277 + _278 + _360 + 64]
        require mem[_277 + _278 + _360 + 96] == mem[_277 + _278 + _360 + 96]
        mem[_364 + 64] = mem[_277 + _278 + _360 + 96]
        _421 = mem[_277 + _278 + _360 + 128]
        require mem[_277 + _278 + _360 + 128] <= test266151307()
        require _277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 63 < _277 + return_data.size
        _423 = mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]
        if mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _426 = mem[64]
        if mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1
        mem[_426] = _423
        require _278 + _360 + _421 + (192 * _423) + 64 <= return_data.size
        u = 0
        v = _277 + _278 + _360 + _421 + 64
        w = _426 + 32
        while u < _423:
            require _277 + return_data.size - v >= 192
            _462 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_462] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_462 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_462 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_462 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_462 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_462 + 160] = mem[v + 160]
            mem[w] = _462
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_364 + 96] = _426
        mem[t] = _364
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_277 + ceil32(return_data.size)]:
        if idx >= mem[_277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _277 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_277 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_277 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _442 = mem[_277 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_277 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_277 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_277 + ceil32(return_data.size) + 32] + 64]
    _511 = mem[mem[mem[_277 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _511:
        _514 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 32] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 32]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 64] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 64]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 96] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 96]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 128] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 160] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_514 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_514 + 32]
        stor6[stor6.length].field_512 = mem[_514 + 64]
        stor6[stor6.length].field_768 = mem[_514 + 96]
        stor6[stor6.length].field_1024 = mem[_514 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_514 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _511 = mem[mem[_442 + 96]]
        idx = idx + 1
        continue 
    _512 = mem[64]
    mem[64] = mem[64] + 128
    mem[_512] = stor3
    mem[_512 + 32] = stor4
    mem[_512 + 64] = stor5
    _513 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_513] = stor6.length
    s = _513 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _563 = mem[64]
        mem[64] = mem[64] + 192
        mem[_563] = stor6[idx].field_0
        mem[_563 + 32] = stor6[idx].field_256
        mem[_563 + 64] = stor6[idx].field_512
        mem[_563 + 96] = stor6[idx].field_768
        mem[_563 + 128] = stor6[idx].field_1024
        mem[_563 + 160] = stor6[idx].field_1280
        mem[s] = _563
        s = s + 32
        idx = idx + 1
        continue 
    mem[_512 + 96] = _513
    _564 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_512]
    mem[mem[64] + 64] = mem[_512 + 32]
    mem[mem[64] + 96] = mem[_512 + 64]
    mem[mem[64] + 128] = 128
    _569 = mem[_513]
    mem[mem[64] + 160] = mem[_513]
    idx = 0
    s = _513 + 32
    t = mem[64] + 192
    while idx < _569:
        _578 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_578 + 32]
        mem[t + 64] = mem[_578 + 64]
        mem[t + 96] = mem[_578 + 96]
        mem[t + 128] = mem[_578 + 140 len 20]
        mem[t + 160] = mem[_578 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _564 + (192 * _569) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 3
    mem[64] = floor32(arg2.length) + 481
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 485] = address(stor1)
    mem[floor32(arg2.length) + 517] = 160
    mem[floor32(arg2.length) + 645] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 677
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 549] = 0
    mem[floor32(arg2.length) + 581] = 0
    mem[floor32(arg2.length) + 613] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 677] = 3
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 709
    while idx < mem[floor32(arg2.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg2.length) + (32 * arg2.length) + (32 * mem[floor32(arg2.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    require mem[_277] <= test266151307()
    require _277 + mem[_277] + 31 < _277 + return_data.size
    _279 = mem[_277 + mem[_277]]
    if mem[_277 + mem[_277]] > test266151307():
        revert with 'NH{q', 65
    if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
    mem[_277 + ceil32(return_data.size)] = _279
    require _278 + (32 * _279) + 32 <= return_data.size
    idx = 0
    s = _277 + _278 + 32
    t = _277 + ceil32(return_data.size) + 32
    while idx < _279:
        _360 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_278 + -mem[s] - 32 >= 128
        _364 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_277 + _278 + _360 + 32] == mem[_277 + _278 + _360 + 32]
        mem[_364] = mem[_277 + _278 + _360 + 32]
        require mem[_277 + _278 + _360 + 64] == mem[_277 + _278 + _360 + 64]
        mem[_364 + 32] = mem[_277 + _278 + _360 + 64]
        require mem[_277 + _278 + _360 + 96] == mem[_277 + _278 + _360 + 96]
        mem[_364 + 64] = mem[_277 + _278 + _360 + 96]
        _421 = mem[_277 + _278 + _360 + 128]
        require mem[_277 + _278 + _360 + 128] <= test266151307()
        require _277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 63 < _277 + return_data.size
        _423 = mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]
        if mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _426 = mem[64]
        if mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1
        mem[_426] = _423
        require _278 + _360 + _421 + (192 * _423) + 64 <= return_data.size
        u = 0
        v = _277 + _278 + _360 + _421 + 64
        w = _426 + 32
        while u < _423:
            require _277 + return_data.size - v >= 192
            _462 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_462] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_462 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_462 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_462 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_462 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_462 + 160] = mem[v + 160]
            mem[w] = _462
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_364 + 96] = _426
        mem[t] = _364
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_277 + ceil32(return_data.size)]:
        if idx >= mem[_277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _277 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_277 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_277 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _442 = mem[_277 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_277 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_277 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_277 + ceil32(return_data.size) + 32] + 64]
    _511 = mem[mem[mem[_277 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _511:
        _514 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 32] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 32]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 64] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 64]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 96] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 96]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 128] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 160] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_514 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_514 + 32]
        stor6[stor6.length].field_512 = mem[_514 + 64]
        stor6[stor6.length].field_768 = mem[_514 + 96]
        stor6[stor6.length].field_1024 = mem[_514 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_514 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _511 = mem[mem[_442 + 96]]
        idx = idx + 1
        continue 
    _512 = mem[64]
    mem[64] = mem[64] + 128
    mem[_512] = stor3
    mem[_512 + 32] = stor4
    mem[_512 + 64] = stor5
    _513 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_513] = stor6.length
    s = _513 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _563 = mem[64]
        mem[64] = mem[64] + 192
        mem[_563] = stor6[idx].field_0
        mem[_563 + 32] = stor6[idx].field_256
        mem[_563 + 64] = stor6[idx].field_512
        mem[_563 + 96] = stor6[idx].field_768
        mem[_563 + 128] = stor6[idx].field_1024
        mem[_563 + 160] = stor6[idx].field_1280
        mem[s] = _563
        s = s + 32
        idx = idx + 1
        continue 
    mem[_512 + 96] = _513
    _564 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_512]
    mem[mem[64] + 64] = mem[_512 + 32]
    mem[mem[64] + 96] = mem[_512 + 64]
    mem[mem[64] + 128] = 128
    _569 = mem[_513]
    mem[mem[64] + 160] = mem[_513]
    idx = 0
    s = _513 + 32
    t = mem[64] + 192
    while idx < _569:
        _578 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_578 + 32]
        mem[t + 64] = mem[_578 + 64]
        mem[t + 96] = mem[_578 + 96]
        mem[t + 128] = mem[_578 + 140 len 20]
        mem[t + 160] = mem[_578 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _564 + (192 * _569) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 3
    mem[64] = floor32(arg2.length) + 481
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 485] = address(stor1)
    mem[floor32(arg2.length) + 517] = 160
    mem[floor32(arg2.length) + 645] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 677
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 549] = 0
    mem[floor32(arg2.length) + 581] = 0
    mem[floor32(arg2.length) + 613] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 677] = 3
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 709
    while idx < mem[floor32(arg2.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg2.length) + (32 * arg2.length) + (32 * mem[floor32(arg2.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    require mem[_277] <= test266151307()
    require _277 + mem[_277] + 31 < _277 + return_data.size
    _279 = mem[_277 + mem[_277]]
    if mem[_277 + mem[_277]] > test266151307():
        revert with 'NH{q', 65
    if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
    mem[_277 + ceil32(return_data.size)] = _279
    require _278 + (32 * _279) + 32 <= return_data.size
    idx = 0
    s = _277 + _278 + 32
    t = _277 + ceil32(return_data.size) + 32
    while idx < _279:
        _360 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_278 + -mem[s] - 32 >= 128
        _364 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_277 + _278 + _360 + 32] == mem[_277 + _278 + _360 + 32]
        mem[_364] = mem[_277 + _278 + _360 + 32]
        require mem[_277 + _278 + _360 + 64] == mem[_277 + _278 + _360 + 64]
        mem[_364 + 32] = mem[_277 + _278 + _360 + 64]
        require mem[_277 + _278 + _360 + 96] == mem[_277 + _278 + _360 + 96]
        mem[_364 + 64] = mem[_277 + _278 + _360 + 96]
        _421 = mem[_277 + _278 + _360 + 128]
        require mem[_277 + _278 + _360 + 128] <= test266151307()
        require _277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 63 < _277 + return_data.size
        _423 = mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]
        if mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _426 = mem[64]
        if mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1
        mem[_426] = _423
        require _278 + _360 + _421 + (192 * _423) + 64 <= return_data.size
        u = 0
        v = _277 + _278 + _360 + _421 + 64
        w = _426 + 32
        while u < _423:
            require _277 + return_data.size - v >= 192
            _462 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_462] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_462 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_462 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_462 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_462 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_462 + 160] = mem[v + 160]
            mem[w] = _462
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_364 + 96] = _426
        mem[t] = _364
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_277 + ceil32(return_data.size)]:
        if idx >= mem[_277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _277 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_277 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_277 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _442 = mem[_277 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_277 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_277 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_277 + ceil32(return_data.size) + 32] + 64]
    _511 = mem[mem[mem[_277 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _511:
        _514 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 32] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 32]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 64] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 64]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 96] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 96]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 128] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 160] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_514 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_514 + 32]
        stor6[stor6.length].field_512 = mem[_514 + 64]
        stor6[stor6.length].field_768 = mem[_514 + 96]
        stor6[stor6.length].field_1024 = mem[_514 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_514 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _511 = mem[mem[_442 + 96]]
        idx = idx + 1
        continue 
    _512 = mem[64]
    mem[64] = mem[64] + 128
    mem[_512] = stor3
    mem[_512 + 32] = stor4
    mem[_512 + 64] = stor5
    _513 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_513] = stor6.length
    s = _513 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _563 = mem[64]
        mem[64] = mem[64] + 192
        mem[_563] = stor6[idx].field_0
        mem[_563 + 32] = stor6[idx].field_256
        mem[_563 + 64] = stor6[idx].field_512
        mem[_563 + 96] = stor6[idx].field_768
        mem[_563 + 128] = stor6[idx].field_1024
        mem[_563 + 160] = stor6[idx].field_1280
        mem[s] = _563
        s = s + 32
        idx = idx + 1
        continue 
    mem[_512 + 96] = _513
    _564 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_512]
    mem[mem[64] + 64] = mem[_512 + 32]
    mem[mem[64] + 96] = mem[_512 + 64]
    mem[mem[64] + 128] = 128
    _569 = mem[_513]
    mem[mem[64] + 160] = mem[_513]
    idx = 0
    s = _513 + 32
    t = mem[64] + 192
    while idx < _569:
        _578 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_578 + 32]
        mem[t + 64] = mem[_578 + 64]
        mem[t + 96] = mem[_578 + 96]
        mem[t + 128] = mem[_578 + 140 len 20]
        mem[t + 160] = mem[_578 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _564 + (192 * _569) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 3
    mem[64] = floor32(arg2.length) + 481
    mem[floor32(arg2.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg2.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg2.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 485] = address(stor1)
    mem[floor32(arg2.length) + 517] = 160
    mem[floor32(arg2.length) + 645] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 677
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 549] = 0
    mem[floor32(arg2.length) + 581] = 0
    mem[floor32(arg2.length) + 613] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 677] = 3
    idx = 0
    s = floor32(arg2.length) + 385
    t = floor32(arg2.length) + (32 * arg2.length) + 709
    while idx < mem[floor32(arg2.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg2.length) + (32 * arg2.length) + (32 * mem[floor32(arg2.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _278 = mem[_277]
    require mem[_277] <= test266151307()
    require _277 + mem[_277] + 31 < _277 + return_data.size
    _279 = mem[_277 + mem[_277]]
    if mem[_277 + mem[_277]] > test266151307():
        revert with 'NH{q', 65
    if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
    mem[_277 + ceil32(return_data.size)] = _279
    require _278 + (32 * _279) + 32 <= return_data.size
    idx = 0
    s = _277 + _278 + 32
    t = _277 + ceil32(return_data.size) + 32
    while idx < _279:
        _360 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_278 + -mem[s] - 32 >= 128
        _364 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_277 + _278 + _360 + 32] == mem[_277 + _278 + _360 + 32]
        mem[_364] = mem[_277 + _278 + _360 + 32]
        require mem[_277 + _278 + _360 + 64] == mem[_277 + _278 + _360 + 64]
        mem[_364 + 32] = mem[_277 + _278 + _360 + 64]
        require mem[_277 + _278 + _360 + 96] == mem[_277 + _278 + _360 + 96]
        mem[_364 + 64] = mem[_277 + _278 + _360 + 96]
        _421 = mem[_277 + _278 + _360 + 128]
        require mem[_277 + _278 + _360 + 128] <= test266151307()
        require _277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 63 < _277 + return_data.size
        _423 = mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]
        if mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _426 = mem[64]
        if mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_277 + _278 + _360 + mem[_277 + _278 + _360 + 128] + 32]) + 1
        mem[_426] = _423
        require _278 + _360 + _421 + (192 * _423) + 64 <= return_data.size
        u = 0
        v = _277 + _278 + _360 + _421 + 64
        w = _426 + 32
        while u < _423:
            require _277 + return_data.size - v >= 192
            _462 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_462] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_462 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_462 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_462 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_462 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_462 + 160] = mem[v + 160]
            mem[w] = _462
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_364 + 96] = _426
        mem[t] = _364
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_277 + ceil32(return_data.size)]:
        if idx >= mem[_277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _277 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_277 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_277 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _442 = mem[_277 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_277 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_277 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_277 + ceil32(return_data.size) + 32] + 64]
    _511 = mem[mem[mem[_277 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _511:
        _514 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 32] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 32]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 64] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 64]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 96] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 96]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 128] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_442 + 96]]:
            revert with 'NH{q', 50
        mem[_514 + 160] = mem[mem[(32 * idx) + mem[_442 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_514 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_514 + 32]
        stor6[stor6.length].field_512 = mem[_514 + 64]
        stor6[stor6.length].field_768 = mem[_514 + 96]
        stor6[stor6.length].field_1024 = mem[_514 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_514 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _511 = mem[mem[_442 + 96]]
        idx = idx + 1
        continue 
    _512 = mem[64]
    mem[64] = mem[64] + 128
    mem[_512] = stor3
    mem[_512 + 32] = stor4
    mem[_512 + 64] = stor5
    _513 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_513] = stor6.length
    s = _513 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _563 = mem[64]
        mem[64] = mem[64] + 192
        mem[_563] = stor6[idx].field_0
        mem[_563 + 32] = stor6[idx].field_256
        mem[_563 + 64] = stor6[idx].field_512
        mem[_563 + 96] = stor6[idx].field_768
        mem[_563 + 128] = stor6[idx].field_1024
        mem[_563 + 160] = stor6[idx].field_1280
        mem[s] = _563
        s = s + 32
        idx = idx + 1
        continue 
    mem[_512 + 96] = _513
    _564 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_512]
    mem[mem[64] + 64] = mem[_512 + 32]
    mem[mem[64] + 96] = mem[_512 + 64]
    mem[mem[64] + 128] = 128
    _569 = mem[_513]
    mem[mem[64] + 160] = mem[_513]
    idx = 0
    s = _513 + 32
    t = mem[64] + 192
    while idx < _569:
        _578 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_578 + 32]
        mem[t + 64] = mem[_578 + 64]
        mem[t + 96] = mem[_578 + 96]
        mem[t + 128] = mem[_578 + 140 len 20]
        mem[t + 160] = mem[_578 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _564 + (192 * _569) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 3
    mem[64] = floor32(arg3.length) + 481
    mem[floor32(arg3.length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(arg3.length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg3.length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(arg3.length) + 481] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 485] = address(stor1)
    mem[floor32(arg3.length) + 517] = 160
    mem[floor32(arg3.length) + 645] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 677
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 549] = 0
    mem[floor32(arg3.length) + 581] = 0
    mem[floor32(arg3.length) + 613] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 677] = 3
    idx = 0
    s = floor32(arg3.length) + 385
    t = floor32(arg3.length) + (32 * arg3.length) + 709
    while idx < mem[floor32(arg3.length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(arg3.length) + (32 * arg3.length) + (32 * mem[floor32(arg3.length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + mem[_276] + 31 < _276 + return_data.size
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 'NH{q', 65
    if _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1 > test266151307() or floor32(mem[_276 + mem[_276]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _276 + ceil32(return_data.size) + floor32(mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    idx = 0
    s = _276 + _277 + 32
    t = _276 + ceil32(return_data.size) + 32
    while idx < _278:
        _359 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_277 + -mem[s] - 32 >= 128
        _363 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_276 + _277 + _359 + 32] == mem[_276 + _277 + _359 + 32]
        mem[_363] = mem[_276 + _277 + _359 + 32]
        require mem[_276 + _277 + _359 + 64] == mem[_276 + _277 + _359 + 64]
        mem[_363 + 32] = mem[_276 + _277 + _359 + 64]
        require mem[_276 + _277 + _359 + 96] == mem[_276 + _277 + _359 + 96]
        mem[_363 + 64] = mem[_276 + _277 + _359 + 96]
        _420 = mem[_276 + _277 + _359 + 128]
        require mem[_276 + _277 + _359 + 128] <= test266151307()
        require _276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 63 < _276 + return_data.size
        _422 = mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]
        if mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _425 = mem[64]
        if mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_276 + _277 + _359 + mem[_276 + _277 + _359 + 128] + 32]) + 1
        mem[_425] = _422
        require _277 + _359 + _420 + (192 * _422) + 64 <= return_data.size
        u = 0
        v = _276 + _277 + _359 + _420 + 64
        w = _425 + 32
        while u < _422:
            require _276 + return_data.size - v >= 192
            _461 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_461] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_461 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_461 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_461 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_461 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_461 + 160] = mem[v + 160]
            mem[w] = _461
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_363 + 96] = _425
        mem[t] = _363
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_276 + ceil32(return_data.size)]:
        if idx >= mem[_276 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _276 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_276 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _441 = mem[_276 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_276 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_276 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_276 + ceil32(return_data.size) + 32] + 64]
    _510 = mem[mem[mem[_276 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _510:
        _513 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 32] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 32]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 64] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 64]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 96] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 96]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 128] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_441 + 96]]:
            revert with 'NH{q', 50
        mem[_513 + 160] = mem[mem[(32 * idx) + mem[_441 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_513 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_513 + 32]
        stor6[stor6.length].field_512 = mem[_513 + 64]
        stor6[stor6.length].field_768 = mem[_513 + 96]
        stor6[stor6.length].field_1024 = mem[_513 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_513 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _510 = mem[mem[_441 + 96]]
        idx = idx + 1
        continue 
    _511 = mem[64]
    mem[64] = mem[64] + 128
    mem[_511] = stor3
    mem[_511 + 32] = stor4
    mem[_511 + 64] = stor5
    _512 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_512] = stor6.length
    s = _512 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _562 = mem[64]
        mem[64] = mem[64] + 192
        mem[_562] = stor6[idx].field_0
        mem[_562 + 32] = stor6[idx].field_256
        mem[_562 + 64] = stor6[idx].field_512
        mem[_562 + 96] = stor6[idx].field_768
        mem[_562 + 128] = stor6[idx].field_1024
        mem[_562 + 160] = stor6[idx].field_1280
        mem[s] = _562
        s = s + 32
        idx = idx + 1
        continue 
    mem[_511 + 96] = _512
    _563 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_511]
    mem[mem[64] + 64] = mem[_511 + 32]
    mem[mem[64] + 96] = mem[_511 + 64]
    mem[mem[64] + 128] = 128
    _568 = mem[_512]
    mem[mem[64] + 160] = mem[_512]
    idx = 0
    s = _512 + 32
    t = mem[64] + 192
    while idx < _568:
        _577 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_577 + 32]
        mem[t + 64] = mem[_577 + 64]
        mem[t + 96] = mem[_577 + 96]
        mem[t + 128] = mem[_577 + 140 len 20]
        mem[t + 160] = mem[_577 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _563 + (192 * _568) + -mem[64] + 192
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
    mem[floor32(('cd', 4).length) + 353] = 3
    mem[64] = floor32(('cd', 4).length) + 481
    mem[floor32(('cd', 4).length) + 385] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(('cd', 4).length) + 417] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 4).length) + 449] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
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
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 677] = 3
    idx = 0
    s = floor32(('cd', 4).length) + 385
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 709
    while idx < mem[floor32(('cd', 4).length) + 353]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + (32 * mem[floor32(('cd', 4).length) + 353]) + -mem[64] + 705]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _279 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _280 = mem[_279]
    require mem[_279] <= test266151307()
    require _279 + mem[_279] + 31 < _279 + return_data.size
    _281 = mem[_279 + mem[_279]]
    if mem[_279 + mem[_279]] > test266151307():
        revert with 'NH{q', 65
    if _279 + ceil32(return_data.size) + floor32(mem[_279 + mem[_279]]) + 1 > test266151307() or floor32(mem[_279 + mem[_279]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _279 + ceil32(return_data.size) + floor32(mem[_279 + mem[_279]]) + 1
    mem[_279 + ceil32(return_data.size)] = _281
    require _280 + (32 * _281) + 32 <= return_data.size
    idx = 0
    s = _279 + _280 + 32
    t = _279 + ceil32(return_data.size) + 32
    while idx < _281:
        _362 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_280 + -mem[s] - 32 >= 128
        _366 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_279 + _280 + _362 + 32] == mem[_279 + _280 + _362 + 32]
        mem[_366] = mem[_279 + _280 + _362 + 32]
        require mem[_279 + _280 + _362 + 64] == mem[_279 + _280 + _362 + 64]
        mem[_366 + 32] = mem[_279 + _280 + _362 + 64]
        require mem[_279 + _280 + _362 + 96] == mem[_279 + _280 + _362 + 96]
        mem[_366 + 64] = mem[_279 + _280 + _362 + 96]
        _423 = mem[_279 + _280 + _362 + 128]
        require mem[_279 + _280 + _362 + 128] <= test266151307()
        require _279 + _280 + _362 + mem[_279 + _280 + _362 + 128] + 63 < _279 + return_data.size
        _425 = mem[_279 + _280 + _362 + mem[_279 + _280 + _362 + 128] + 32]
        if mem[_279 + _280 + _362 + mem[_279 + _280 + _362 + 128] + 32] > test266151307():
            revert with 'NH{q', 65
        _428 = mem[64]
        if mem[64] + floor32(mem[_279 + _280 + _362 + mem[_279 + _280 + _362 + 128] + 32]) + 1 > test266151307() or mem[64] + floor32(mem[_279 + _280 + _362 + mem[_279 + _280 + _362 + 128] + 32]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[_279 + _280 + _362 + mem[_279 + _280 + _362 + 128] + 32]) + 1
        mem[_428] = _425
        require _280 + _362 + _423 + (192 * _425) + 64 <= return_data.size
        u = 0
        v = _279 + _280 + _362 + _423 + 64
        w = _428 + 32
        while u < _425:
            require _279 + return_data.size - v >= 192
            _464 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_464] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_464 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_464 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_464 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_464 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_464 + 160] = mem[v + 160]
            mem[w] = _464
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_366 + 96] = _428
        mem[t] = _366
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[_279 + ceil32(return_data.size)]:
        if idx >= mem[_279 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _279 + ceil32(return_data.size) + 32] + 64] > 0:
            if idx >= mem[_279 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_279 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    _444 = mem[_279 + ceil32(return_data.size) + 32]
    stor3 = mem[mem[_279 + ceil32(return_data.size) + 32]]
    stor4 = mem[mem[_279 + ceil32(return_data.size) + 32] + 32]
    stor5 = mem[mem[_279 + ceil32(return_data.size) + 32] + 64]
    _513 = mem[mem[mem[_279 + ceil32(return_data.size) + 32] + 96]]
    idx = 0
    while idx < _513:
        _516 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 32] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 32]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 64] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 64]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 96] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 96]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 128] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 160] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_516 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_516 + 32]
        stor6[stor6.length].field_512 = mem[_516 + 64]
        stor6[stor6.length].field_768 = mem[_516 + 96]
        stor6[stor6.length].field_1024 = mem[_516 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_516 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _513 = mem[mem[_444 + 96]]
        idx = idx + 1
        continue 
    _514 = mem[64]
    mem[64] = mem[64] + 128
    mem[_514] = stor3
    mem[_514 + 32] = stor4
    mem[_514 + 64] = stor5
    _515 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_515] = stor6.length
    s = _515 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _565 = mem[64]
        mem[64] = mem[64] + 192
        mem[_565] = stor6[idx].field_0
        mem[_565 + 32] = stor6[idx].field_256
        mem[_565 + 64] = stor6[idx].field_512
        mem[_565 + 96] = stor6[idx].field_768
        mem[_565 + 128] = stor6[idx].field_1024
        mem[_565 + 160] = stor6[idx].field_1280
        mem[s] = _565
        s = s + 32
        idx = idx + 1
        continue 
    mem[_514 + 96] = _515
    _566 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_514]
    mem[mem[64] + 64] = mem[_514 + 32]
    mem[mem[64] + 96] = mem[_514 + 64]
    mem[mem[64] + 128] = 128
    _571 = mem[_515]
    mem[mem[64] + 160] = mem[_515]
    idx = 0
    s = _515 + 32
    t = mem[64] + 192
    while idx < _571:
        _580 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_580 + 32]
        mem[t + 64] = mem[_580 + 64]
        mem[t + 96] = mem[_580 + 96]
        mem[t + 128] = mem[_580 + 140 len 20]
        mem[t + 160] = mem[_580 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _566 + (192 * _571) + -mem[64] + 192
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
    mem[floor32(('cd', 4).length) + 225] = 3
    mem[floor32(('cd', 4).length) + 257] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(('cd', 4).length) + 289] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 4).length) + 321] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(('cd', 4).length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 357] = address(stor1)
    mem[floor32(('cd', 4).length) + 389] = 160
    mem[floor32(('cd', 4).length) + 517] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 549
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 421] = 0
    mem[floor32(('cd', 4).length) + 453] = 0
    mem[floor32(('cd', 4).length) + 485] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 549] = 3
    idx = 0
    s = floor32(('cd', 4).length) + 257
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 581
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 549 len (32 * ('cd', 4).length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _280 = mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1)
    require mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 384 < floor32(('cd', 4).length) + return_data.size + 353
    _281 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]) + 354 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]) + 354
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353] = _281
    require _280 + (32 * _281) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _280 + 385
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 385
    while idx < _281:
        _362 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_280 + -mem[s] - 32 >= 128
        _366 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _280 + _362 + 385] == mem[floor32(('cd', 4).length) + _280 + _362 + 385]
        mem[_366] = mem[floor32(('cd', 4).length) + _280 + _362 + 385]
        require mem[floor32(('cd', 4).length) + _280 + _362 + 417] == mem[floor32(('cd', 4).length) + _280 + _362 + 417]
        mem[_366 + 32] = mem[floor32(('cd', 4).length) + _280 + _362 + 417]
        require mem[floor32(('cd', 4).length) + _280 + _362 + 449] == mem[floor32(('cd', 4).length) + _280 + _362 + 449]
        mem[_366 + 64] = mem[floor32(('cd', 4).length) + _280 + _362 + 449]
        _423 = mem[floor32(('cd', 4).length) + _280 + _362 + 481]
        require mem[floor32(('cd', 4).length) + _280 + _362 + 481] <= test266151307()
        require floor32(('cd', 4).length) + _280 + _362 + mem[floor32(('cd', 4).length) + _280 + _362 + 481] + 416 < floor32(('cd', 4).length) + return_data.size + 353
        _426 = mem[floor32(('cd', 4).length) + _280 + _362 + mem[floor32(('cd', 4).length) + _280 + _362 + 481] + 385]
        if mem[floor32(('cd', 4).length) + _280 + _362 + mem[floor32(('cd', 4).length) + _280 + _362 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _429 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _280 + _362 + mem[floor32(('cd', 4).length) + _280 + _362 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _280 + _362 + mem[floor32(('cd', 4).length) + _280 + _362 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _280 + _362 + mem[floor32(('cd', 4).length) + _280 + _362 + 481] + 385]) + 1
        mem[_429] = _426
        require _280 + _362 + _423 + (192 * _426) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _280 + _362 + _423 + 417
        w = _429 + 32
        while u < _426:
            require floor32(('cd', 4).length) + return_data.size + -v + 353 >= 192
            _464 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_464] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_464 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_464 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_464 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_464 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_464 + 160] = mem[v + 160]
            mem[w] = _464
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_366 + 96] = _429
        mem[t] = _366
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _444 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]
    stor3 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 32]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64]
    _513 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _513:
        _516 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 32] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 32]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 64] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 64]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 96] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 96]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 128] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_444 + 96]]:
            revert with 'NH{q', 50
        mem[_516 + 160] = mem[mem[(32 * idx) + mem[_444 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_516 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_516 + 32]
        stor6[stor6.length].field_512 = mem[_516 + 64]
        stor6[stor6.length].field_768 = mem[_516 + 96]
        stor6[stor6.length].field_1024 = mem[_516 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_516 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _513 = mem[mem[_444 + 96]]
        idx = idx + 1
        continue 
    _514 = mem[64]
    mem[64] = mem[64] + 128
    mem[_514] = stor3
    mem[_514 + 32] = stor4
    mem[_514 + 64] = stor5
    _515 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_515] = stor6.length
    s = _515 + 32
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _565 = mem[64]
        mem[64] = mem[64] + 192
        mem[_565] = stor6[idx].field_0
        mem[_565 + 32] = stor6[idx].field_256
        mem[_565 + 64] = stor6[idx].field_512
        mem[_565 + 96] = stor6[idx].field_768
        mem[_565 + 128] = stor6[idx].field_1024
        mem[_565 + 160] = stor6[idx].field_1280
        mem[s] = _565
        s = s + 32
        idx = idx + 1
        continue 
    mem[_514 + 96] = _515
    _566 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_514]
    mem[mem[64] + 64] = mem[_514 + 32]
    mem[mem[64] + 96] = mem[_514 + 64]
    mem[mem[64] + 128] = 128
    _571 = mem[_515]
    mem[mem[64] + 160] = mem[_515]
    idx = 0
    s = _515 + 32
    t = mem[64] + 192
    while idx < _571:
        _580 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_580 + 32]
        mem[t + 64] = mem[_580 + 64]
        mem[t + 96] = mem[_580 + 96]
        mem[t + 128] = mem[_580 + 140 len 20]
        mem[t + 160] = mem[_580 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _566 + (192 * _571) + -mem[64] + 192
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
    mem[floor32(('cd', 4).length) + 225] = 3
    mem[floor32(('cd', 4).length) + 257] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[floor32(('cd', 4).length) + 289] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 4).length) + 321] = 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
    mem[floor32(('cd', 4).length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 357] = address(stor1)
    mem[floor32(('cd', 4).length) + 389] = 160
    mem[floor32(('cd', 4).length) + 517] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 549
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 421] = 0
    mem[floor32(('cd', 4).length) + 453] = 0
    mem[floor32(('cd', 4).length) + 485] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 549] = 3
    idx = 0
    s = floor32(('cd', 4).length) + 257
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 581
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor1), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 549 len (32 * ('cd', 4).length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _1064 = mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1)
    require mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 384 < floor32(('cd', 4).length) + return_data.size + 353
    _1065 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]) + 354 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor1) + 353]) + 354
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353] = _1065
    require _1064 + (32 * _1065) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _1064 + 385
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 385
    while idx < _1065:
        _1408 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_1064 + -mem[s] - 32 >= 128
        _1412 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _1064 + _1408 + 385] == mem[floor32(('cd', 4).length) + _1064 + _1408 + 385]
        mem[_1412] = mem[floor32(('cd', 4).length) + _1064 + _1408 + 385]
        require mem[floor32(('cd', 4).length) + _1064 + _1408 + 417] == mem[floor32(('cd', 4).length) + _1064 + _1408 + 417]
        mem[_1412 + 32] = mem[floor32(('cd', 4).length) + _1064 + _1408 + 417]
        require mem[floor32(('cd', 4).length) + _1064 + _1408 + 449] == mem[floor32(('cd', 4).length) + _1064 + _1408 + 449]
        mem[_1412 + 64] = mem[floor32(('cd', 4).length) + _1064 + _1408 + 449]
        _1568 = mem[floor32(('cd', 4).length) + _1064 + _1408 + 481]
        require mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] <= test266151307()
        require floor32(('cd', 4).length) + _1064 + _1408 + mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] + 416 < floor32(('cd', 4).length) + return_data.size + 353
        _1615 = mem[floor32(('cd', 4).length) + _1064 + _1408 + mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] + 385]
        if mem[floor32(('cd', 4).length) + _1064 + _1408 + mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _1677 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _1064 + _1408 + mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _1064 + _1408 + mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _1064 + _1408 + mem[floor32(('cd', 4).length) + _1064 + _1408 + 481] + 385]) + 1
        mem[_1677] = _1615
        require _1064 + _1408 + _1568 + (192 * _1615) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _1064 + _1408 + _1568 + 417
        w = _1677 + 32
        while u < _1615:
            require floor32(('cd', 4).length) + return_data.size + -v + 353 >= 192
            _1772 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_1772] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_1772 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_1772 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_1772 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_1772 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_1772 + 160] = mem[v + 160]
            mem[w] = _1772
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_1412 + 96] = _1677
        mem[t] = _1412
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    t = 0
    while t < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
        if t >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * t) + floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64] > 0:
            if t >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _1752 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]
    stor3 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 32]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64]
    _2083 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 96]]
    t = 0
    while t < _2083:
        _2086 = mem[64]
        mem[64] = mem[64] + 192
        if t >= mem[mem[_1752 + 96]]:
            revert with 'NH{q', 50
        mem[_2086] = mem[mem[(32 * t) + mem[_1752 + 96] + 32] + 12 len 20]
        if t >= mem[mem[_1752 + 96]]:
            revert with 'NH{q', 50
        mem[_2086 + 32] = mem[mem[(32 * t) + mem[_1752 + 96] + 32] + 32]
        if t >= mem[mem[_1752 + 96]]:
            revert with 'NH{q', 50
        mem[_2086 + 64] = mem[mem[(32 * t) + mem[_1752 + 96] + 32] + 64]
        if t >= mem[mem[_1752 + 96]]:
            revert with 'NH{q', 50
        mem[_2086 + 96] = mem[mem[(32 * t) + mem[_1752 + 96] + 32] + 96]
        if t >= mem[mem[_1752 + 96]]:
            revert with 'NH{q', 50
        mem[_2086 + 128] = mem[mem[(32 * t) + mem[_1752 + 96] + 32] + 140 len 20]
        if t >= mem[mem[_1752 + 96]]:
            revert with 'NH{q', 50
        mem[_2086 + 160] = mem[mem[(32 * t) + mem[_1752 + 96] + 32] + 172 len 20]
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = mem[_2086 + 12 len 20]
        stor6[stor6.length].field_256 = mem[_2086 + 32]
        stor6[stor6.length].field_512 = mem[_2086 + 64]
        stor6[stor6.length].field_768 = mem[_2086 + 96]
        stor6[stor6.length].field_1024 = mem[_2086 + 140 len 20]
        stor6[stor6.length].field_1280 = mem[_2086 + 172 len 20]
        if t == -1:
            revert with 'NH{q', 17
        _2083 = mem[mem[_1752 + 96]]
        t = t + 1
        continue 
    _2084 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2084] = stor3
    mem[_2084 + 32] = stor4
    mem[_2084 + 64] = stor5
    _2085 = mem[64]
    mem[64] = mem[64] + (32 * stor6.length) + 32
    mem[_2085] = stor6.length
    u = _2085 + 32
    t = 0
    while t < stor6.length:
        mem[0] = 6
        _2397 = mem[64]
        mem[64] = mem[64] + 192
        mem[_2397] = stor6[t].field_0
        mem[_2397 + 32] = stor6[t].field_256
        mem[_2397 + 64] = stor6[t].field_512
        mem[_2397 + 96] = stor6[t].field_768
        mem[_2397 + 128] = stor6[t].field_1024
        mem[_2397 + 160] = stor6[t].field_1280
        mem[u] = _2397
        u = u + 32
        t = t + 1
        continue 
    mem[_2084 + 96] = _2085
    require stor5 >= stor2
    if stor6.length != 2:
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        _2398 = mem[64]
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
                        _2699 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2699] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2699 + 32] = stor6[idx].field_0
                        mem[_2699 + 64] = 300
                        mem[_2699 + 96] = 1
                        if idx >= mem[_2398]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2398 + 32] = _2699
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2724 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2724] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2724 + 32] = stor6[idx].field_0
                    mem[_2724 + 64] = 300
                    mem[_2724 + 96] = 1
                    if idx >= mem[_2398]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2398 + 32] = _2724
                else:
                    if address(s) != stor6[idx].field_1280:
                        _2725 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2725] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2725 + 32] = stor6[idx].field_0
                        mem[_2725 + 64] = 300
                        mem[_2725 + 96] = 1
                        if idx >= mem[_2398]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2398 + 32] = _2725
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2769 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2769] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2769 + 32] = stor6[idx].field_0
                    mem[_2769 + 64] = 300
                    mem[_2769 + 96] = 1
                    if idx >= mem[_2398]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2398 + 32] = _2769
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _2684 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2869 = mem[_2398]
            mem[mem[64] + 96] = mem[_2398]
            idx = 0
            s = _2398 + 32
            t = mem[64] + 128
            while idx < _2869:
                _2944 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2944 + 44 len 20]
                mem[t + 64] = mem[_2944 + 64]
                mem[t + 96] = mem[_2944 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2684 + (128 * _2869) + -mem[64] + 128
        mem[64] = _2398 + (32 * stor6.length) + 160
        mem[_2398 + (32 * stor6.length) + 32] = 0
        mem[_2398 + (32 * stor6.length) + 64] = 0
        mem[_2398 + (32 * stor6.length) + 96] = 0
        mem[_2398 + (32 * stor6.length) + 128] = 0
        mem[var134001] = _2398 + (32 * stor6.length) + 32
        s = var134001
        idx = var134002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2398 + (32 * stor6.length) + 32] = 0
            mem[_2398 + (32 * stor6.length) + 64] = 0
            mem[_2398 + (32 * stor6.length) + 96] = 0
            mem[_2398 + (32 * stor6.length) + 128] = 0
            mem[s + 32] = _2398 + (32 * stor6.length) + 32
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
                    _3124 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3124] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3124 + 32] = stor6[idx].field_0
                    mem[_3124 + 64] = 300
                    mem[_3124 + 96] = 1
                    if idx >= mem[_2398]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2398 + 32] = _3124
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3149 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3149] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3149 + 32] = stor6[idx].field_0
                mem[_3149 + 64] = 300
                mem[_3149 + 96] = 1
                if idx >= mem[_2398]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2398 + 32] = _3149
            else:
                if address(s) != stor6[idx].field_1280:
                    _3150 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3150] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3150 + 32] = stor6[idx].field_0
                    mem[_3150 + 64] = 300
                    mem[_3150 + 96] = 1
                    if idx >= mem[_2398]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2398 + 32] = _3150
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3184 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3184] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3184 + 32] = stor6[idx].field_0
                mem[_3184 + 64] = 300
                mem[_3184 + 96] = 1
                if idx >= mem[_2398]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2398 + 32] = _3184
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _3109 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3199 = mem[_2398]
        mem[mem[64] + 96] = mem[_2398]
        idx = 0
        s = _2398 + 32
        t = mem[64] + 128
        while idx < _3199:
            _3234 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3234 + 44 len 20]
            mem[t + 64] = mem[_3234 + 64]
            mem[t + 96] = mem[_3234 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3109 + (128 * _3199) + -mem[64] + 128
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    if address(stor6.field_0) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if address(stor6.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor6.length > test266151307():
                revert with 'NH{q', 65
            _2410 = mem[64]
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
                            _2700 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2700] = 0
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[_2700 + 32] = stor6[idx].field_0
                            mem[_2700 + 64] = 300
                            mem[_2700 + 96] = 1
                            if idx >= mem[_2410]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2410 + 32] = _2700
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        _2727 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2727] = stor6[idx].field_1024
                        mem[0] = 6
                        mem[_2727 + 32] = stor6[idx].field_0
                        mem[_2727 + 64] = 300
                        mem[_2727 + 96] = 1
                        if idx >= mem[_2410]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2410 + 32] = _2727
                    else:
                        if address(s) != stor6[idx].field_1280:
                            _2728 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2728] = stor6[idx].field_1280
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[_2728 + 32] = stor6[idx].field_0
                            mem[_2728 + 64] = 300
                            mem[_2728 + 96] = 1
                            if idx >= mem[_2410]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2410 + 32] = _2728
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx].field_1280
                            continue 
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        _2772 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2772] = stor6[idx].field_1024
                        mem[0] = 6
                        mem[_2772 + 32] = stor6[idx].field_0
                        mem[_2772 + 64] = 300
                        mem[_2772 + 96] = 1
                        if idx >= mem[_2410]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2410 + 32] = _2772
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1024
                    continue 
                _2685 = mem[64]
                mem[mem[64]] = stor3
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _2870 = mem[_2410]
                mem[mem[64] + 96] = mem[_2410]
                idx = 0
                s = _2410 + 32
                t = mem[64] + 128
                while idx < _2870:
                    _2945 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2945 + 44 len 20]
                    mem[t + 64] = mem[_2945 + 64]
                    mem[t + 96] = mem[_2945 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _2685 + (128 * _2870) + -mem[64] + 128
            mem[64] = _2410 + (32 * stor6.length) + 160
            mem[_2410 + (32 * stor6.length) + 32] = 0
            mem[_2410 + (32 * stor6.length) + 64] = 0
            mem[_2410 + (32 * stor6.length) + 96] = 0
            mem[_2410 + (32 * stor6.length) + 128] = 0
            mem[var141001] = _2410 + (32 * stor6.length) + 32
            s = var141001
            idx = var141002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[_2410 + (32 * stor6.length) + 32] = 0
                mem[_2410 + (32 * stor6.length) + 64] = 0
                mem[_2410 + (32 * stor6.length) + 96] = 0
                mem[_2410 + (32 * stor6.length) + 128] = 0
                mem[s + 32] = _2410 + (32 * stor6.length) + 32
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
                        _3125 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3125] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_3125 + 32] = stor6[idx].field_0
                        mem[_3125 + 64] = 300
                        mem[_3125 + 96] = 1
                        if idx >= mem[_2410]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2410 + 32] = _3125
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _3151 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3151] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_3151 + 32] = stor6[idx].field_0
                    mem[_3151 + 64] = 300
                    mem[_3151 + 96] = 1
                    if idx >= mem[_2410]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2410 + 32] = _3151
                else:
                    if address(s) != stor6[idx].field_1280:
                        _3152 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3152] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_3152 + 32] = stor6[idx].field_0
                        mem[_3152 + 64] = 300
                        mem[_3152 + 96] = 1
                        if idx >= mem[_2410]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2410 + 32] = _3152
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _3185 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3185] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_3185 + 32] = stor6[idx].field_0
                    mem[_3185 + 64] = 300
                    mem[_3185 + 96] = 1
                    if idx >= mem[_2410]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2410 + 32] = _3185
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _3110 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3200 = mem[_2410]
            mem[mem[64] + 96] = mem[_2410]
            idx = 0
            s = _2410 + 32
            t = mem[64] + 128
            while idx < _3200:
                _3235 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3235 + 44 len 20]
                mem[t + 64] = mem[_3235 + 64]
                mem[t + 96] = mem[_3235 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _3110 + (128 * _3200) + -mem[64] + 128
        if 1 >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        require address(stor6.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        _2419 = mem[64]
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
                        _2701 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2701] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2701 + 32] = stor6[idx].field_0
                        mem[_2701 + 64] = 300
                        mem[_2701 + 96] = 1
                        if idx >= mem[_2419]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2419 + 32] = _2701
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2730 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2730] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2730 + 32] = stor6[idx].field_0
                    mem[_2730 + 64] = 300
                    mem[_2730 + 96] = 1
                    if idx >= mem[_2419]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2419 + 32] = _2730
                else:
                    if address(s) != stor6[idx].field_1280:
                        _2731 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2731] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2731 + 32] = stor6[idx].field_0
                        mem[_2731 + 64] = 300
                        mem[_2731 + 96] = 1
                        if idx >= mem[_2419]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2419 + 32] = _2731
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2775 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2775] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2775 + 32] = stor6[idx].field_0
                    mem[_2775 + 64] = 300
                    mem[_2775 + 96] = 1
                    if idx >= mem[_2419]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2419 + 32] = _2775
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _2686 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2871 = mem[_2419]
            mem[mem[64] + 96] = mem[_2419]
            idx = 0
            s = _2419 + 32
            t = mem[64] + 128
            while idx < _2871:
                _2946 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2946 + 44 len 20]
                mem[t + 64] = mem[_2946 + 64]
                mem[t + 96] = mem[_2946 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2686 + (128 * _2871) + -mem[64] + 128
        mem[64] = _2419 + (32 * stor6.length) + 160
        mem[_2419 + (32 * stor6.length) + 32] = 0
        mem[_2419 + (32 * stor6.length) + 64] = 0
        mem[_2419 + (32 * stor6.length) + 96] = 0
        mem[_2419 + (32 * stor6.length) + 128] = 0
        mem[var143001] = _2419 + (32 * stor6.length) + 32
        s = var143001
        idx = var143002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2419 + (32 * stor6.length) + 32] = 0
            mem[_2419 + (32 * stor6.length) + 64] = 0
            mem[_2419 + (32 * stor6.length) + 96] = 0
            mem[_2419 + (32 * stor6.length) + 128] = 0
            mem[s + 32] = _2419 + (32 * stor6.length) + 32
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
                    _3126 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3126] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3126 + 32] = stor6[idx].field_0
                    mem[_3126 + 64] = 300
                    mem[_3126 + 96] = 1
                    if idx >= mem[_2419]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2419 + 32] = _3126
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3153 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3153] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3153 + 32] = stor6[idx].field_0
                mem[_3153 + 64] = 300
                mem[_3153 + 96] = 1
                if idx >= mem[_2419]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2419 + 32] = _3153
            else:
                if address(s) != stor6[idx].field_1280:
                    _3154 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3154] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3154 + 32] = stor6[idx].field_0
                    mem[_3154 + 64] = 300
                    mem[_3154 + 96] = 1
                    if idx >= mem[_2419]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2419 + 32] = _3154
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3186 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3186] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3186 + 32] = stor6[idx].field_0
                mem[_3186 + 64] = 300
                mem[_3186 + 96] = 1
                if idx >= mem[_2419]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2419 + 32] = _3186
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _3111 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3201 = mem[_2419]
        mem[mem[64] + 96] = mem[_2419]
        idx = 0
        s = _2419 + 32
        t = mem[64] + 128
        while idx < _3201:
            _3236 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3236 + 44 len 20]
            mem[t + 64] = mem[_3236 + 64]
            mem[t + 96] = mem[_3236 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3111 + (128 * _3201) + -mem[64] + 128
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    require address(stor6.field_1536) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    mem[0] = 6
    if address(stor6.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor6.length > test266151307():
            revert with 'NH{q', 65
        _2420 = mem[64]
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
                        _2702 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2702] = 0
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2702 + 32] = stor6[idx].field_0
                        mem[_2702 + 64] = 300
                        mem[_2702 + 96] = 1
                        if idx >= mem[_2420]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2420 + 32] = _2702
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2733 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2733] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2733 + 32] = stor6[idx].field_0
                    mem[_2733 + 64] = 300
                    mem[_2733 + 96] = 1
                    if idx >= mem[_2420]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2420 + 32] = _2733
                else:
                    if address(s) != stor6[idx].field_1280:
                        _2734 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2734] = stor6[idx].field_1280
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        mem[_2734 + 32] = stor6[idx].field_0
                        mem[_2734 + 64] = 300
                        mem[_2734 + 96] = 1
                        if idx >= mem[_2420]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2420 + 32] = _2734
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx].field_1280
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    _2778 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2778] = stor6[idx].field_1024
                    mem[0] = 6
                    mem[_2778 + 32] = stor6[idx].field_0
                    mem[_2778 + 64] = 300
                    mem[_2778 + 96] = 1
                    if idx >= mem[_2420]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2420 + 32] = _2778
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx].field_1024
                continue 
            _2687 = mem[64]
            mem[mem[64]] = stor3
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2872 = mem[_2420]
            mem[mem[64] + 96] = mem[_2420]
            idx = 0
            s = _2420 + 32
            t = mem[64] + 128
            while idx < _2872:
                _2947 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2947 + 44 len 20]
                mem[t + 64] = mem[_2947 + 64]
                mem[t + 96] = mem[_2947 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2687 + (128 * _2872) + -mem[64] + 128
        mem[64] = _2420 + (32 * stor6.length) + 160
        mem[_2420 + (32 * stor6.length) + 32] = 0
        mem[_2420 + (32 * stor6.length) + 64] = 0
        mem[_2420 + (32 * stor6.length) + 96] = 0
        mem[_2420 + (32 * stor6.length) + 128] = 0
        mem[var143001] = _2420 + (32 * stor6.length) + 32
        s = var143001
        idx = var143002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2420 + (32 * stor6.length) + 32] = 0
            mem[_2420 + (32 * stor6.length) + 64] = 0
            mem[_2420 + (32 * stor6.length) + 96] = 0
            mem[_2420 + (32 * stor6.length) + 128] = 0
            mem[s + 32] = _2420 + (32 * stor6.length) + 32
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
                    _3127 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3127] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3127 + 32] = stor6[idx].field_0
                    mem[_3127 + 64] = 300
                    mem[_3127 + 96] = 1
                    if idx >= mem[_2420]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2420 + 32] = _3127
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3155 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3155] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3155 + 32] = stor6[idx].field_0
                mem[_3155 + 64] = 300
                mem[_3155 + 96] = 1
                if idx >= mem[_2420]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2420 + 32] = _3155
            else:
                if address(s) != stor6[idx].field_1280:
                    _3156 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3156] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_3156 + 32] = stor6[idx].field_0
                    mem[_3156 + 64] = 300
                    mem[_3156 + 96] = 1
                    if idx >= mem[_2420]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2420 + 32] = _3156
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _3187 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3187] = stor6[idx].field_1024
                mem[0] = 6
                mem[_3187 + 32] = stor6[idx].field_0
                mem[_3187 + 64] = 300
                mem[_3187 + 96] = 1
                if idx >= mem[_2420]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2420 + 32] = _3187
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _3112 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3202 = mem[_2420]
        mem[mem[64] + 96] = mem[_2420]
        idx = 0
        s = _2420 + 32
        t = mem[64] + 128
        while idx < _3202:
            _3237 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3237 + 44 len 20]
            mem[t + 64] = mem[_3237 + 64]
            mem[t + 96] = mem[_3237 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3112 + (128 * _3202) + -mem[64] + 128
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    mem[0] = 6
    require address(stor6.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor6.length > test266151307():
        revert with 'NH{q', 65
    _2432 = mem[64]
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
                    _2703 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2703] = 0
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_2703 + 32] = stor6[idx].field_0
                    mem[_2703 + 64] = 300
                    mem[_2703 + 96] = 1
                    if idx >= mem[_2432]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2432 + 32] = _2703
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _2736 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2736] = stor6[idx].field_1024
                mem[0] = 6
                mem[_2736 + 32] = stor6[idx].field_0
                mem[_2736 + 64] = 300
                mem[_2736 + 96] = 1
                if idx >= mem[_2432]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2432 + 32] = _2736
            else:
                if address(s) != stor6[idx].field_1280:
                    _2737 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2737] = stor6[idx].field_1280
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    mem[_2737 + 32] = stor6[idx].field_0
                    mem[_2737 + 64] = 300
                    mem[_2737 + 96] = 1
                    if idx >= mem[_2432]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2432 + 32] = _2737
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx].field_1280
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                _2781 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2781] = stor6[idx].field_1024
                mem[0] = 6
                mem[_2781 + 32] = stor6[idx].field_0
                mem[_2781 + 64] = 300
                mem[_2781 + 96] = 1
                if idx >= mem[_2432]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2432 + 32] = _2781
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx].field_1024
            continue 
        _2688 = mem[64]
        mem[mem[64]] = stor3
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _2873 = mem[_2432]
        mem[mem[64] + 96] = mem[_2432]
        idx = 0
        s = _2432 + 32
        t = mem[64] + 128
        while idx < _2873:
            _2948 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2948 + 44 len 20]
            mem[t + 64] = mem[_2948 + 64]
            mem[t + 96] = mem[_2948 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2688 + (128 * _2873) + -mem[64] + 128
    mem[64] = _2432 + (32 * stor6.length) + 160
    mem[_2432 + (32 * stor6.length) + 32] = 0
    mem[_2432 + (32 * stor6.length) + 64] = 0
    mem[_2432 + (32 * stor6.length) + 96] = 0
    mem[_2432 + (32 * stor6.length) + 128] = 0
    mem[var145001] = _2432 + (32 * stor6.length) + 32
    u = var145001
    t = var145002
    while t - 1:
        mem[64] = mem[64] + 128
        mem[_2432 + (32 * stor6.length) + 32] = 0
        mem[_2432 + (32 * stor6.length) + 64] = 0
        mem[_2432 + (32 * stor6.length) + 96] = 0
        mem[_2432 + (32 * stor6.length) + 128] = 0
        mem[u + 32] = _2432 + (32 * stor6.length) + 32
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
                _3128 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3128] = 0
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                mem[_3128 + 32] = stor6[t].field_0
                mem[_3128 + 64] = 300
                mem[_3128 + 96] = 1
                if t >= mem[_2432]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _2432 + 32] = _3128
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = 0
                continue 
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _3157 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3157] = stor6[t].field_1024
            mem[0] = 6
            mem[_3157 + 32] = stor6[t].field_0
            mem[_3157 + 64] = 300
            mem[_3157 + 96] = 1
            if t >= mem[_2432]:
                revert with 'NH{q', 50
            mem[(32 * t) + _2432 + 32] = _3157
        else:
            if address(u) != stor6[t].field_1280:
                _3158 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3158] = stor6[t].field_1280
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                mem[_3158 + 32] = stor6[t].field_0
                mem[_3158 + 64] = 300
                mem[_3158 + 96] = 1
                if t >= mem[_2432]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _2432 + 32] = _3158
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t].field_1280
                continue 
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _3188 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3188] = stor6[t].field_1024
            mem[0] = 6
            mem[_3188 + 32] = stor6[t].field_0
            mem[_3188 + 64] = 300
            mem[_3188 + 96] = 1
            if t >= mem[_2432]:
                revert with 'NH{q', 50
            mem[(32 * t) + _2432 + 32] = _3188
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        u = stor6[t].field_1024
        continue 
    _3113 = mem[64]
    mem[mem[64]] = stor3
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _3203 = mem[_2432]
    mem[mem[64] + 96] = mem[_2432]
    idx = 0
    s = _2432 + 32
    t = mem[64] + 128
    while idx < _3203:
        _3238 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_3238 + 44 len 20]
        mem[t + 64] = mem[_3238 + 64]
        mem[t + 96] = mem[_3238 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _3113 + (128 * _3203) + -mem[64] + 128
}



}
