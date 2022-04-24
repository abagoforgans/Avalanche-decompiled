contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of struct stor7;

function _fallback() payable {
    revert
}

function setMinProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor3 = arg1
    return stor3
}

function setAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    address(stor2) = arg1
    return address(stor2)
}

function getStats() payable {
    if stor1.length:
        mem[128] = address(stor1.field_0)
        idx = 128
        s = 0
        while (32 * stor1.length) + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor1.length) + 128] = address(stor2)
    mem[(32 * stor1.length) + 160] = stor3
    mem[(32 * stor1.length) + 192] = 96
    mem[(32 * stor1.length) + 224] = stor1.length
    idx = 0
    s = 128
    t = (32 * stor1.length) + 256
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor1.length) + 128
       len (96 * stor1.length) + 128
}

function sub_82f1d9b7(?) payable {
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
    if stor0 != msg.sender:
        revert with 0, 'bad sender'
    stor1.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor1[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[64] = floor32(('cd', 4).length) + (32 * stor1.length) + 129
    mem[floor32(('cd', 4).length) + 97] = stor1.length
    if stor1.length:
        mem[floor32(('cd', 4).length) + 129] = address(stor1.field_0)
        idx = floor32(('cd', 4).length) + 129
        s = 0
        while floor32(('cd', 4).length) + (32 * stor1.length) + 97 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[floor32(('cd', 4).length) + (32 * stor1.length) + 129] = 32
    mem[floor32(('cd', 4).length) + (32 * stor1.length) + 161] = stor1.length
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len floor32(('cd', 4).length) + (64 * stor1.length) + -mem[64] + 193
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
    mem[floor32(arg2.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 357] = address(stor2)
    mem[floor32(arg2.length) + 389] = 160
    mem[floor32(arg2.length) + 517] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 549
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 421] = 0
    mem[floor32(arg2.length) + 453] = 0
    mem[floor32(arg2.length) + 485] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg2.length) + (32 * arg2.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _286 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _287 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _286 + (32 * _287) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _286 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _287:
        _375 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_286 + -mem[s] - 32 >= 128
        _379 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _286 + _375 + 385] == mem[floor32(arg2.length) + _286 + _375 + 385]
        mem[_379] = mem[floor32(arg2.length) + _286 + _375 + 385]
        require mem[floor32(arg2.length) + _286 + _375 + 417] == mem[floor32(arg2.length) + _286 + _375 + 417]
        mem[_379 + 32] = mem[floor32(arg2.length) + _286 + _375 + 417]
        require mem[floor32(arg2.length) + _286 + _375 + 449] == mem[floor32(arg2.length) + _286 + _375 + 449]
        mem[_379 + 64] = mem[floor32(arg2.length) + _286 + _375 + 449]
        _441 = mem[floor32(arg2.length) + _286 + _375 + 481]
        require mem[floor32(arg2.length) + _286 + _375 + 481] <= test266151307()
        require floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _443 = mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]
        if mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _446 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1
        mem[_446] = _443
        require _286 + _375 + _441 + (224 * _443) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _286 + _375 + _441 + 417
        w = _446 + 32
        while u < _443:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 224
            _484 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_484] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_484 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_484 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_484 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_484 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_484 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_484 + 192] = mem[v + 192]
            mem[w] = _484
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_379 + 96] = _446
        mem[t] = _379
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _464 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _540 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _540:
        _543 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 32] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 64] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 64]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 96] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 96]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 128] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 128]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 160] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 192] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_543 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_543 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_543 + 64]
        stor7[stor7.length].field_768 = mem[_543 + 96]
        stor7[stor7.length].field_1024 = mem[_543 + 128]
        stor7[stor7.length].field_1280 = mem[_543 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_543 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _540 = mem[mem[_464 + 96]]
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + 128
    mem[_541] = stor4
    mem[_541 + 32] = stor5
    mem[_541 + 64] = stor6
    _542 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_542] = stor7.length
    s = _542 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _598 = mem[64]
        mem[64] = mem[64] + 224
        mem[_598] = stor7[idx].field_0
        mem[_598 + 32] = stor7[idx].field_256
        mem[_598 + 64] = stor7[idx].field_512
        mem[_598 + 96] = stor7[idx].field_768
        mem[_598 + 128] = stor7[idx].field_1024
        mem[_598 + 160] = stor7[idx].field_1280
        mem[_598 + 192] = stor7[idx].field_1536
        mem[s] = _598
        s = s + 32
        idx = idx + 1
        continue 
    mem[_541 + 96] = _542
    _599 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_541]
    mem[mem[64] + 64] = mem[_541 + 32]
    mem[mem[64] + 96] = mem[_541 + 64]
    mem[mem[64] + 128] = 128
    _604 = mem[_542]
    mem[mem[64] + 160] = mem[_542]
    idx = 0
    s = _542 + 32
    t = mem[64] + 192
    while idx < _604:
        _614 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_614 + 44 len 20]
        mem[t + 64] = mem[_614 + 64]
        mem[t + 96] = mem[_614 + 96]
        mem[t + 128] = mem[_614 + 128]
        mem[t + 160] = mem[_614 + 172 len 20]
        mem[t + 192] = mem[_614 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _599 + (224 * _604) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 357] = address(stor2)
    mem[floor32(arg2.length) + 389] = 160
    mem[floor32(arg2.length) + 517] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 549
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 421] = 0
    mem[floor32(arg2.length) + 453] = 0
    mem[floor32(arg2.length) + 485] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg2.length) + (32 * arg2.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _286 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _287 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _286 + (32 * _287) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _286 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _287:
        _375 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_286 + -mem[s] - 32 >= 128
        _379 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _286 + _375 + 385] == mem[floor32(arg2.length) + _286 + _375 + 385]
        mem[_379] = mem[floor32(arg2.length) + _286 + _375 + 385]
        require mem[floor32(arg2.length) + _286 + _375 + 417] == mem[floor32(arg2.length) + _286 + _375 + 417]
        mem[_379 + 32] = mem[floor32(arg2.length) + _286 + _375 + 417]
        require mem[floor32(arg2.length) + _286 + _375 + 449] == mem[floor32(arg2.length) + _286 + _375 + 449]
        mem[_379 + 64] = mem[floor32(arg2.length) + _286 + _375 + 449]
        _441 = mem[floor32(arg2.length) + _286 + _375 + 481]
        require mem[floor32(arg2.length) + _286 + _375 + 481] <= test266151307()
        require floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _443 = mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]
        if mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _446 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1
        mem[_446] = _443
        require _286 + _375 + _441 + (224 * _443) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _286 + _375 + _441 + 417
        w = _446 + 32
        while u < _443:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 224
            _484 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_484] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_484 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_484 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_484 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_484 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_484 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_484 + 192] = mem[v + 192]
            mem[w] = _484
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_379 + 96] = _446
        mem[t] = _379
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _464 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _540 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _540:
        _543 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 32] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 64] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 64]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 96] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 96]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 128] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 128]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 160] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 192] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_543 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_543 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_543 + 64]
        stor7[stor7.length].field_768 = mem[_543 + 96]
        stor7[stor7.length].field_1024 = mem[_543 + 128]
        stor7[stor7.length].field_1280 = mem[_543 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_543 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _540 = mem[mem[_464 + 96]]
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + 128
    mem[_541] = stor4
    mem[_541 + 32] = stor5
    mem[_541 + 64] = stor6
    _542 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_542] = stor7.length
    s = _542 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _598 = mem[64]
        mem[64] = mem[64] + 224
        mem[_598] = stor7[idx].field_0
        mem[_598 + 32] = stor7[idx].field_256
        mem[_598 + 64] = stor7[idx].field_512
        mem[_598 + 96] = stor7[idx].field_768
        mem[_598 + 128] = stor7[idx].field_1024
        mem[_598 + 160] = stor7[idx].field_1280
        mem[_598 + 192] = stor7[idx].field_1536
        mem[s] = _598
        s = s + 32
        idx = idx + 1
        continue 
    mem[_541 + 96] = _542
    _599 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_541]
    mem[mem[64] + 64] = mem[_541 + 32]
    mem[mem[64] + 96] = mem[_541 + 64]
    mem[mem[64] + 128] = 128
    _604 = mem[_542]
    mem[mem[64] + 160] = mem[_542]
    idx = 0
    s = _542 + 32
    t = mem[64] + 192
    while idx < _604:
        _614 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_614 + 44 len 20]
        mem[t + 64] = mem[_614 + 64]
        mem[t + 96] = mem[_614 + 96]
        mem[t + 128] = mem[_614 + 128]
        mem[t + 160] = mem[_614 + 172 len 20]
        mem[t + 192] = mem[_614 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _599 + (224 * _604) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 357] = address(stor2)
    mem[floor32(arg2.length) + 389] = 160
    mem[floor32(arg2.length) + 517] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 549
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 421] = 0
    mem[floor32(arg2.length) + 453] = 0
    mem[floor32(arg2.length) + 485] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg2.length) + (32 * arg2.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _286 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _287 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _286 + (32 * _287) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _286 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _287:
        _375 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_286 + -mem[s] - 32 >= 128
        _379 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _286 + _375 + 385] == mem[floor32(arg2.length) + _286 + _375 + 385]
        mem[_379] = mem[floor32(arg2.length) + _286 + _375 + 385]
        require mem[floor32(arg2.length) + _286 + _375 + 417] == mem[floor32(arg2.length) + _286 + _375 + 417]
        mem[_379 + 32] = mem[floor32(arg2.length) + _286 + _375 + 417]
        require mem[floor32(arg2.length) + _286 + _375 + 449] == mem[floor32(arg2.length) + _286 + _375 + 449]
        mem[_379 + 64] = mem[floor32(arg2.length) + _286 + _375 + 449]
        _441 = mem[floor32(arg2.length) + _286 + _375 + 481]
        require mem[floor32(arg2.length) + _286 + _375 + 481] <= test266151307()
        require floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _443 = mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]
        if mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _446 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1
        mem[_446] = _443
        require _286 + _375 + _441 + (224 * _443) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _286 + _375 + _441 + 417
        w = _446 + 32
        while u < _443:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 224
            _484 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_484] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_484 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_484 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_484 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_484 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_484 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_484 + 192] = mem[v + 192]
            mem[w] = _484
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_379 + 96] = _446
        mem[t] = _379
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _464 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _540 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _540:
        _543 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 32] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 64] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 64]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 96] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 96]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 128] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 128]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 160] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 192] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_543 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_543 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_543 + 64]
        stor7[stor7.length].field_768 = mem[_543 + 96]
        stor7[stor7.length].field_1024 = mem[_543 + 128]
        stor7[stor7.length].field_1280 = mem[_543 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_543 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _540 = mem[mem[_464 + 96]]
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + 128
    mem[_541] = stor4
    mem[_541 + 32] = stor5
    mem[_541 + 64] = stor6
    _542 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_542] = stor7.length
    s = _542 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _598 = mem[64]
        mem[64] = mem[64] + 224
        mem[_598] = stor7[idx].field_0
        mem[_598 + 32] = stor7[idx].field_256
        mem[_598 + 64] = stor7[idx].field_512
        mem[_598 + 96] = stor7[idx].field_768
        mem[_598 + 128] = stor7[idx].field_1024
        mem[_598 + 160] = stor7[idx].field_1280
        mem[_598 + 192] = stor7[idx].field_1536
        mem[s] = _598
        s = s + 32
        idx = idx + 1
        continue 
    mem[_541 + 96] = _542
    _599 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_541]
    mem[mem[64] + 64] = mem[_541 + 32]
    mem[mem[64] + 96] = mem[_541 + 64]
    mem[mem[64] + 128] = 128
    _604 = mem[_542]
    mem[mem[64] + 160] = mem[_542]
    idx = 0
    s = _542 + 32
    t = mem[64] + 192
    while idx < _604:
        _614 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_614 + 44 len 20]
        mem[t + 64] = mem[_614 + 64]
        mem[t + 96] = mem[_614 + 96]
        mem[t + 128] = mem[_614 + 128]
        mem[t + 160] = mem[_614 + 172 len 20]
        mem[t + 192] = mem[_614 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _599 + (224 * _604) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 357] = address(stor2)
    mem[floor32(arg2.length) + 389] = 160
    mem[floor32(arg2.length) + 517] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 549
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 421] = 0
    mem[floor32(arg2.length) + 453] = 0
    mem[floor32(arg2.length) + 485] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg2.length) + (32 * arg2.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _286 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _287 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _286 + (32 * _287) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _286 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _287:
        _375 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_286 + -mem[s] - 32 >= 128
        _379 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _286 + _375 + 385] == mem[floor32(arg2.length) + _286 + _375 + 385]
        mem[_379] = mem[floor32(arg2.length) + _286 + _375 + 385]
        require mem[floor32(arg2.length) + _286 + _375 + 417] == mem[floor32(arg2.length) + _286 + _375 + 417]
        mem[_379 + 32] = mem[floor32(arg2.length) + _286 + _375 + 417]
        require mem[floor32(arg2.length) + _286 + _375 + 449] == mem[floor32(arg2.length) + _286 + _375 + 449]
        mem[_379 + 64] = mem[floor32(arg2.length) + _286 + _375 + 449]
        _441 = mem[floor32(arg2.length) + _286 + _375 + 481]
        require mem[floor32(arg2.length) + _286 + _375 + 481] <= test266151307()
        require floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _443 = mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]
        if mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _446 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1
        mem[_446] = _443
        require _286 + _375 + _441 + (224 * _443) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _286 + _375 + _441 + 417
        w = _446 + 32
        while u < _443:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 224
            _484 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_484] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_484 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_484 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_484 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_484 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_484 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_484 + 192] = mem[v + 192]
            mem[w] = _484
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_379 + 96] = _446
        mem[t] = _379
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _464 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _540 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _540:
        _543 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 32] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 64] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 64]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 96] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 96]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 128] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 128]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 160] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 192] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_543 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_543 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_543 + 64]
        stor7[stor7.length].field_768 = mem[_543 + 96]
        stor7[stor7.length].field_1024 = mem[_543 + 128]
        stor7[stor7.length].field_1280 = mem[_543 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_543 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _540 = mem[mem[_464 + 96]]
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + 128
    mem[_541] = stor4
    mem[_541 + 32] = stor5
    mem[_541 + 64] = stor6
    _542 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_542] = stor7.length
    s = _542 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _598 = mem[64]
        mem[64] = mem[64] + 224
        mem[_598] = stor7[idx].field_0
        mem[_598 + 32] = stor7[idx].field_256
        mem[_598 + 64] = stor7[idx].field_512
        mem[_598 + 96] = stor7[idx].field_768
        mem[_598 + 128] = stor7[idx].field_1024
        mem[_598 + 160] = stor7[idx].field_1280
        mem[_598 + 192] = stor7[idx].field_1536
        mem[s] = _598
        s = s + 32
        idx = idx + 1
        continue 
    mem[_541 + 96] = _542
    _599 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_541]
    mem[mem[64] + 64] = mem[_541 + 32]
    mem[mem[64] + 96] = mem[_541 + 64]
    mem[mem[64] + 128] = 128
    _604 = mem[_542]
    mem[mem[64] + 160] = mem[_542]
    idx = 0
    s = _542 + 32
    t = mem[64] + 192
    while idx < _604:
        _614 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_614 + 44 len 20]
        mem[t + 64] = mem[_614 + 64]
        mem[t + 96] = mem[_614 + 96]
        mem[t + 128] = mem[_614 + 128]
        mem[t + 160] = mem[_614 + 172 len 20]
        mem[t + 192] = mem[_614 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _599 + (224 * _604) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 357] = address(stor2)
    mem[floor32(arg2.length) + 389] = 160
    mem[floor32(arg2.length) + 517] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 549
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 421] = 0
    mem[floor32(arg2.length) + 453] = 0
    mem[floor32(arg2.length) + 485] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg2.length) + (32 * arg2.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _286 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _287 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _286 + (32 * _287) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _286 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _287:
        _375 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_286 + -mem[s] - 32 >= 128
        _379 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _286 + _375 + 385] == mem[floor32(arg2.length) + _286 + _375 + 385]
        mem[_379] = mem[floor32(arg2.length) + _286 + _375 + 385]
        require mem[floor32(arg2.length) + _286 + _375 + 417] == mem[floor32(arg2.length) + _286 + _375 + 417]
        mem[_379 + 32] = mem[floor32(arg2.length) + _286 + _375 + 417]
        require mem[floor32(arg2.length) + _286 + _375 + 449] == mem[floor32(arg2.length) + _286 + _375 + 449]
        mem[_379 + 64] = mem[floor32(arg2.length) + _286 + _375 + 449]
        _441 = mem[floor32(arg2.length) + _286 + _375 + 481]
        require mem[floor32(arg2.length) + _286 + _375 + 481] <= test266151307()
        require floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _443 = mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]
        if mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _446 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1
        mem[_446] = _443
        require _286 + _375 + _441 + (224 * _443) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _286 + _375 + _441 + 417
        w = _446 + 32
        while u < _443:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 224
            _484 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_484] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_484 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_484 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_484 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_484 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_484 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_484 + 192] = mem[v + 192]
            mem[w] = _484
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_379 + 96] = _446
        mem[t] = _379
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _464 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _540 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _540:
        _543 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 32] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 64] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 64]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 96] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 96]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 128] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 128]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 160] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 192] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_543 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_543 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_543 + 64]
        stor7[stor7.length].field_768 = mem[_543 + 96]
        stor7[stor7.length].field_1024 = mem[_543 + 128]
        stor7[stor7.length].field_1280 = mem[_543 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_543 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _540 = mem[mem[_464 + 96]]
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + 128
    mem[_541] = stor4
    mem[_541 + 32] = stor5
    mem[_541 + 64] = stor6
    _542 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_542] = stor7.length
    s = _542 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _598 = mem[64]
        mem[64] = mem[64] + 224
        mem[_598] = stor7[idx].field_0
        mem[_598 + 32] = stor7[idx].field_256
        mem[_598 + 64] = stor7[idx].field_512
        mem[_598 + 96] = stor7[idx].field_768
        mem[_598 + 128] = stor7[idx].field_1024
        mem[_598 + 160] = stor7[idx].field_1280
        mem[_598 + 192] = stor7[idx].field_1536
        mem[s] = _598
        s = s + 32
        idx = idx + 1
        continue 
    mem[_541 + 96] = _542
    _599 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_541]
    mem[mem[64] + 64] = mem[_541 + 32]
    mem[mem[64] + 96] = mem[_541 + 64]
    mem[mem[64] + 128] = 128
    _604 = mem[_542]
    mem[mem[64] + 160] = mem[_542]
    idx = 0
    s = _542 + 32
    t = mem[64] + 192
    while idx < _604:
        _614 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_614 + 44 len 20]
        mem[t + 64] = mem[_614 + 64]
        mem[t + 96] = mem[_614 + 96]
        mem[t + 128] = mem[_614 + 128]
        mem[t + 160] = mem[_614 + 172 len 20]
        mem[t + 192] = mem[_614 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _599 + (224 * _604) + -mem[64] + 192
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
    mem[floor32(arg2.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 357] = address(stor2)
    mem[floor32(arg2.length) + 389] = 160
    mem[floor32(arg2.length) + 517] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 549
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 421] = 0
    mem[floor32(arg2.length) + 453] = 0
    mem[floor32(arg2.length) + 485] = (32 * arg2.length) + 192
    mem[floor32(arg2.length) + (32 * arg2.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg2.length) + (32 * arg2.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _286 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _287 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _286 + (32 * _287) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _286 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _287:
        _375 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_286 + -mem[s] - 32 >= 128
        _379 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _286 + _375 + 385] == mem[floor32(arg2.length) + _286 + _375 + 385]
        mem[_379] = mem[floor32(arg2.length) + _286 + _375 + 385]
        require mem[floor32(arg2.length) + _286 + _375 + 417] == mem[floor32(arg2.length) + _286 + _375 + 417]
        mem[_379 + 32] = mem[floor32(arg2.length) + _286 + _375 + 417]
        require mem[floor32(arg2.length) + _286 + _375 + 449] == mem[floor32(arg2.length) + _286 + _375 + 449]
        mem[_379 + 64] = mem[floor32(arg2.length) + _286 + _375 + 449]
        _441 = mem[floor32(arg2.length) + _286 + _375 + 481]
        require mem[floor32(arg2.length) + _286 + _375 + 481] <= test266151307()
        require floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _443 = mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]
        if mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _446 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _286 + _375 + mem[floor32(arg2.length) + _286 + _375 + 481] + 385]) + 1
        mem[_446] = _443
        require _286 + _375 + _441 + (224 * _443) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _286 + _375 + _441 + 417
        w = _446 + 32
        while u < _443:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 224
            _484 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_484] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_484 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_484 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_484 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_484 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_484 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_484 + 192] = mem[v + 192]
            mem[w] = _484
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_379 + 96] = _446
        mem[t] = _379
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _464 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _540 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _540:
        _543 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 32] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 64] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 64]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 96] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 96]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 128] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 128]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 160] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_464 + 96]]:
            revert with 'NH{q', 50
        mem[_543 + 192] = mem[mem[(32 * idx) + mem[_464 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_543 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_543 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_543 + 64]
        stor7[stor7.length].field_768 = mem[_543 + 96]
        stor7[stor7.length].field_1024 = mem[_543 + 128]
        stor7[stor7.length].field_1280 = mem[_543 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_543 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _540 = mem[mem[_464 + 96]]
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + 128
    mem[_541] = stor4
    mem[_541 + 32] = stor5
    mem[_541 + 64] = stor6
    _542 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_542] = stor7.length
    s = _542 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _598 = mem[64]
        mem[64] = mem[64] + 224
        mem[_598] = stor7[idx].field_0
        mem[_598 + 32] = stor7[idx].field_256
        mem[_598 + 64] = stor7[idx].field_512
        mem[_598 + 96] = stor7[idx].field_768
        mem[_598 + 128] = stor7[idx].field_1024
        mem[_598 + 160] = stor7[idx].field_1280
        mem[_598 + 192] = stor7[idx].field_1536
        mem[s] = _598
        s = s + 32
        idx = idx + 1
        continue 
    mem[_541 + 96] = _542
    _599 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_541]
    mem[mem[64] + 64] = mem[_541 + 32]
    mem[mem[64] + 96] = mem[_541 + 64]
    mem[mem[64] + 128] = 128
    _604 = mem[_542]
    mem[mem[64] + 160] = mem[_542]
    idx = 0
    s = _542 + 32
    t = mem[64] + 192
    while idx < _604:
        _614 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_614 + 44 len 20]
        mem[t + 64] = mem[_614 + 64]
        mem[t + 96] = mem[_614 + 96]
        mem[t + 128] = mem[_614 + 128]
        mem[t + 160] = mem[_614 + 172 len 20]
        mem[t + 192] = mem[_614 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _599 + (224 * _604) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(arg3.length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 357] = address(stor2)
    mem[floor32(arg3.length) + 389] = 160
    mem[floor32(arg3.length) + 517] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 549
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 421] = 0
    mem[floor32(arg3.length) + 453] = 0
    mem[floor32(arg3.length) + 485] = (32 * arg3.length) + 192
    mem[floor32(arg3.length) + (32 * arg3.length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(arg3.length) + (32 * arg3.length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _285 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _286 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _285 + (32 * _286) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _285 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _286:
        _374 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_285 + -mem[s] - 32 >= 128
        _378 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _285 + _374 + 385] == mem[floor32(arg3.length) + _285 + _374 + 385]
        mem[_378] = mem[floor32(arg3.length) + _285 + _374 + 385]
        require mem[floor32(arg3.length) + _285 + _374 + 417] == mem[floor32(arg3.length) + _285 + _374 + 417]
        mem[_378 + 32] = mem[floor32(arg3.length) + _285 + _374 + 417]
        require mem[floor32(arg3.length) + _285 + _374 + 449] == mem[floor32(arg3.length) + _285 + _374 + 449]
        mem[_378 + 64] = mem[floor32(arg3.length) + _285 + _374 + 449]
        _440 = mem[floor32(arg3.length) + _285 + _374 + 481]
        require mem[floor32(arg3.length) + _285 + _374 + 481] <= test266151307()
        require floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _442 = mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]
        if mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _445 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _285 + _374 + mem[floor32(arg3.length) + _285 + _374 + 481] + 385]) + 1
        mem[_445] = _442
        require _285 + _374 + _440 + (224 * _442) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _285 + _374 + _440 + 417
        w = _445 + 32
        while u < _442:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 224
            _483 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_483] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_483 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_483 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_483 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_483 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_483 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_483 + 192] = mem[v + 192]
            mem[w] = _483
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_378 + 96] = _445
        mem[t] = _378
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _463 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _539 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _539:
        _542 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 32] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 64] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 64]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 96] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 96]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 128] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 128]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 160] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_463 + 96]]:
            revert with 'NH{q', 50
        mem[_542 + 192] = mem[mem[(32 * idx) + mem[_463 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_542 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_542 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_542 + 64]
        stor7[stor7.length].field_768 = mem[_542 + 96]
        stor7[stor7.length].field_1024 = mem[_542 + 128]
        stor7[stor7.length].field_1280 = mem[_542 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_542 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[mem[_463 + 96]]
        idx = idx + 1
        continue 
    _540 = mem[64]
    mem[64] = mem[64] + 128
    mem[_540] = stor4
    mem[_540 + 32] = stor5
    mem[_540 + 64] = stor6
    _541 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_541] = stor7.length
    s = _541 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _597 = mem[64]
        mem[64] = mem[64] + 224
        mem[_597] = stor7[idx].field_0
        mem[_597 + 32] = stor7[idx].field_256
        mem[_597 + 64] = stor7[idx].field_512
        mem[_597 + 96] = stor7[idx].field_768
        mem[_597 + 128] = stor7[idx].field_1024
        mem[_597 + 160] = stor7[idx].field_1280
        mem[_597 + 192] = stor7[idx].field_1536
        mem[s] = _597
        s = s + 32
        idx = idx + 1
        continue 
    mem[_540 + 96] = _541
    _598 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_540]
    mem[mem[64] + 64] = mem[_540 + 32]
    mem[mem[64] + 96] = mem[_540 + 64]
    mem[mem[64] + 128] = 128
    _603 = mem[_541]
    mem[mem[64] + 160] = mem[_541]
    idx = 0
    s = _541 + 32
    t = mem[64] + 192
    while idx < _603:
        _613 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_613 + 44 len 20]
        mem[t + 64] = mem[_613 + 64]
        mem[t + 96] = mem[_613 + 96]
        mem[t + 128] = mem[_613 + 128]
        mem[t + 160] = mem[_613 + 172 len 20]
        mem[t + 192] = mem[_613 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _598 + (224 * _603) + -mem[64] + 192
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
    mem[floor32(('cd', 4).length) + 225] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 229] = address(stor2)
    mem[floor32(('cd', 4).length) + 261] = 160
    mem[floor32(('cd', 4).length) + 389] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 421
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 293] = 0
    mem[floor32(('cd', 4).length) + 325] = 0
    mem[floor32(('cd', 4).length) + 357] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 421] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 453
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 421 len (32 * ('cd', 4).length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 225
    require return_data.size >= 32
    _288 = mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2)
    require mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 256 < floor32(('cd', 4).length) + return_data.size + 225
    _289 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]
    require _288 + (32 * _289) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _288 + 257
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 257
    while idx < _289:
        _377 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_288 + -mem[s] - 32 >= 128
        _381 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _288 + _377 + 257] == mem[floor32(('cd', 4).length) + _288 + _377 + 257]
        mem[_381] = mem[floor32(('cd', 4).length) + _288 + _377 + 257]
        require mem[floor32(('cd', 4).length) + _288 + _377 + 289] == mem[floor32(('cd', 4).length) + _288 + _377 + 289]
        mem[_381 + 32] = mem[floor32(('cd', 4).length) + _288 + _377 + 289]
        require mem[floor32(('cd', 4).length) + _288 + _377 + 321] == mem[floor32(('cd', 4).length) + _288 + _377 + 321]
        mem[_381 + 64] = mem[floor32(('cd', 4).length) + _288 + _377 + 321]
        _443 = mem[floor32(('cd', 4).length) + _288 + _377 + 353]
        require mem[floor32(('cd', 4).length) + _288 + _377 + 353] <= test266151307()
        require floor32(('cd', 4).length) + _288 + _377 + mem[floor32(('cd', 4).length) + _288 + _377 + 353] + 288 < floor32(('cd', 4).length) + return_data.size + 225
        _446 = mem[floor32(('cd', 4).length) + _288 + _377 + mem[floor32(('cd', 4).length) + _288 + _377 + 353] + 257]
        if mem[floor32(('cd', 4).length) + _288 + _377 + mem[floor32(('cd', 4).length) + _288 + _377 + 353] + 257] > test266151307():
            revert with 'NH{q', 65
        _449 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _288 + _377 + mem[floor32(('cd', 4).length) + _288 + _377 + 353] + 257]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _288 + _377 + mem[floor32(('cd', 4).length) + _288 + _377 + 353] + 257]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _288 + _377 + mem[floor32(('cd', 4).length) + _288 + _377 + 353] + 257]) + 1
        mem[_449] = _446
        require _288 + _377 + _443 + (224 * _446) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _288 + _377 + _443 + 289
        w = _449 + 32
        while u < _446:
            require floor32(('cd', 4).length) + return_data.size + -v + 225 >= 224
            _486 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_486] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_486 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_486 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_486 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_486 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_486 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_486 + 192] = mem[v + 192]
            mem[w] = _486
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_381 + 96] = _449
        mem[t] = _381
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64]
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        revert with 'NH{q', 50
    _466 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 32]
    stor6 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64]
    _542 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 96]]
    idx = 0
    while idx < _542:
        _545 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545 + 32] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545 + 64] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 64]
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545 + 96] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 96]
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545 + 128] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 128]
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545 + 160] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_466 + 96]]:
            revert with 'NH{q', 50
        mem[_545 + 192] = mem[mem[(32 * idx) + mem[_466 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_545 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_545 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_545 + 64]
        stor7[stor7.length].field_768 = mem[_545 + 96]
        stor7[stor7.length].field_1024 = mem[_545 + 128]
        stor7[stor7.length].field_1280 = mem[_545 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_545 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _542 = mem[mem[_466 + 96]]
        idx = idx + 1
        continue 
    _543 = mem[64]
    mem[64] = mem[64] + 128
    mem[_543] = stor4
    mem[_543 + 32] = stor5
    mem[_543 + 64] = stor6
    _544 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_544] = stor7.length
    s = _544 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _600 = mem[64]
        mem[64] = mem[64] + 224
        mem[_600] = stor7[idx].field_0
        mem[_600 + 32] = stor7[idx].field_256
        mem[_600 + 64] = stor7[idx].field_512
        mem[_600 + 96] = stor7[idx].field_768
        mem[_600 + 128] = stor7[idx].field_1024
        mem[_600 + 160] = stor7[idx].field_1280
        mem[_600 + 192] = stor7[idx].field_1536
        mem[s] = _600
        s = s + 32
        idx = idx + 1
        continue 
    mem[_543 + 96] = _544
    _601 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_543]
    mem[mem[64] + 64] = mem[_543 + 32]
    mem[mem[64] + 96] = mem[_543 + 64]
    mem[mem[64] + 128] = 128
    _606 = mem[_544]
    mem[mem[64] + 160] = mem[_544]
    idx = 0
    s = _544 + 32
    t = mem[64] + 192
    while idx < _606:
        _616 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_616 + 44 len 20]
        mem[t + 64] = mem[_616 + 64]
        mem[t + 96] = mem[_616 + 96]
        mem[t + 128] = mem[_616 + 128]
        mem[t + 160] = mem[_616 + 172 len 20]
        mem[t + 192] = mem[_616 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _601 + (224 * _606) + -mem[64] + 192
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
    address(stor2) = address(cd[36])
    mem[floor32(('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + 257] = 0
    mem[floor32(('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + 321] = 96
    mem[floor32(('cd', 4).length) + 353] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 357] = address(stor2)
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
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 549] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 581
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 549 len (32 * ('cd', 4).length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _289 = mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(('cd', 4).length) + return_data.size + 353
    _290 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353] = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _289 + (32 * _290) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _289 + 385
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 385
    while idx < _290:
        _378 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_289 + -mem[s] - 32 >= 128
        _382 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _289 + _378 + 385] == mem[floor32(('cd', 4).length) + _289 + _378 + 385]
        mem[_382] = mem[floor32(('cd', 4).length) + _289 + _378 + 385]
        require mem[floor32(('cd', 4).length) + _289 + _378 + 417] == mem[floor32(('cd', 4).length) + _289 + _378 + 417]
        mem[_382 + 32] = mem[floor32(('cd', 4).length) + _289 + _378 + 417]
        require mem[floor32(('cd', 4).length) + _289 + _378 + 449] == mem[floor32(('cd', 4).length) + _289 + _378 + 449]
        mem[_382 + 64] = mem[floor32(('cd', 4).length) + _289 + _378 + 449]
        _444 = mem[floor32(('cd', 4).length) + _289 + _378 + 481]
        require mem[floor32(('cd', 4).length) + _289 + _378 + 481] <= test266151307()
        require floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 416 < floor32(('cd', 4).length) + return_data.size + 353
        _446 = mem[floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 385]
        if mem[floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _449 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 385]) + 1
        mem[_449] = mem[floor32(('cd', 4).length) + _289 + _378 + mem[floor32(('cd', 4).length) + _289 + _378 + 481] + 385]
        require _289 + _378 + _444 + (224 * _446) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _289 + _378 + _444 + 417
        w = _449 + 32
        while u < _446:
            require floor32(('cd', 4).length) + return_data.size + -v + 353 >= 224
            _487 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_487] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_487 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_487 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_487 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_487 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_487 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_487 + 192] = mem[v + 192]
            mem[w] = _487
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_382 + 96] = _449
        mem[t] = _382
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64]
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _467 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64]
    _543 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _543:
        _546 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546 + 32] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546 + 64] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 64]
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546 + 96] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 96]
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546 + 128] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 128]
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546 + 160] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_467 + 96]]:
            revert with 'NH{q', 50
        mem[_546 + 192] = mem[mem[(32 * idx) + mem[_467 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_546 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_546 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_546 + 64]
        stor7[stor7.length].field_768 = mem[_546 + 96]
        stor7[stor7.length].field_1024 = mem[_546 + 128]
        stor7[stor7.length].field_1280 = mem[_546 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_546 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _543 = mem[mem[_467 + 96]]
        idx = idx + 1
        continue 
    _544 = mem[64]
    mem[64] = mem[64] + 128
    mem[_544] = stor4
    mem[_544 + 32] = stor5
    mem[_544 + 64] = stor6
    _545 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_545] = stor7.length
    s = _545 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _601 = mem[64]
        mem[64] = mem[64] + 224
        mem[_601] = stor7[idx].field_0
        mem[_601 + 32] = stor7[idx].field_256
        mem[_601 + 64] = stor7[idx].field_512
        mem[_601 + 96] = stor7[idx].field_768
        mem[_601 + 128] = stor7[idx].field_1024
        mem[_601 + 160] = stor7[idx].field_1280
        mem[_601 + 192] = stor7[idx].field_1536
        mem[s] = _601
        s = s + 32
        idx = idx + 1
        continue 
    mem[_544 + 96] = _545
    _602 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_544]
    mem[mem[64] + 64] = mem[_544 + 32]
    mem[mem[64] + 96] = mem[_544 + 64]
    mem[mem[64] + 128] = 128
    _607 = mem[_545]
    mem[mem[64] + 160] = mem[_545]
    idx = 0
    s = _545 + 32
    t = mem[64] + 192
    while idx < _607:
        _617 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_617 + 44 len 20]
        mem[t + 64] = mem[_617 + 64]
        mem[t + 96] = mem[_617 + 96]
        mem[t + 128] = mem[_617 + 128]
        mem[t + 160] = mem[_617 + 172 len 20]
        mem[t + 192] = mem[_617 + 204 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _602 + (224 * _607) + -mem[64] + 192
}

function sub_86bf92f7(?) payable {
    require stor6 >= stor3
    if stor7.length != 2:
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor7.length
        mem[64] = (32 * stor7.length) + 128
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _352 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_352] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_352 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_352 + 64] = stor7[idx].field_0
                        mem[_352 + 96] = 300
                        mem[_352 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _352
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _374 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_374] = stor7[idx].field_1280
                    mem[_374 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_374 + 64] = stor7[idx].field_0
                    mem[_374 + 96] = 300
                    mem[_374 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _374
                else:
                    if address(s) != stor7[idx].field_1536:
                        _375 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_375] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_375 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_375 + 64] = stor7[idx].field_0
                        mem[_375 + 96] = 300
                        mem[_375 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _375
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _421 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_421] = stor7[idx].field_1280
                    mem[_421 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_421 + 64] = stor7[idx].field_0
                    mem[_421 + 96] = 300
                    mem[_421 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _421
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _332 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _547 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _547:
                _647 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_647 + 44 len 20]
                mem[t + 64] = mem[_647 + 76 len 20]
                mem[t + 96] = mem[_647 + 96]
                mem[t + 128] = mem[_647 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _332 + (160 * _547) + -mem[64] + 128
        mem[64] = (32 * stor7.length) + 288
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[(32 * stor7.length) + 256] = 0
        mem[var10001] = (32 * stor7.length) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
            mem[(32 * stor7.length) + 256] = 0
            mem[s + 32] = (32 * stor7.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _857 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_857] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_857 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_857 + 64] = stor7[idx].field_0
                    mem[_857 + 96] = 300
                    mem[_857 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _857
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _879 = mem[64]
                mem[64] = mem[64] + 160
                mem[_879] = stor7[idx].field_1280
                mem[_879 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_879 + 64] = stor7[idx].field_0
                mem[_879 + 96] = 300
                mem[_879 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _879
            else:
                if address(s) != stor7[idx].field_1536:
                    _880 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_880] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_880 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_880 + 64] = stor7[idx].field_0
                    mem[_880 + 96] = 300
                    mem[_880 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _880
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _916 = mem[64]
                mem[64] = mem[64] + 160
                mem[_916] = stor7[idx].field_1280
                mem[_916 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_916 + 64] = stor7[idx].field_0
                mem[_916 + 96] = 300
                mem[_916 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _916
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _837 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _952 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _952:
            _992 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_992 + 44 len 20]
            mem[t + 64] = mem[_992 + 76 len 20]
            mem[t + 96] = mem[_992 + 96]
            mem[t + 128] = mem[_992 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _837 + (160 * _952) + -mem[64] + 128
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    if address(stor7.field_256) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(stor7.field_256) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor7.length > test266151307():
                revert with 'NH{q', 65
            mem[96] = stor7.length
            mem[64] = (32 * stor7.length) + 128
            if not stor7.length:
                idx = 0
                s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                while idx < stor7.length:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    if address(s) != stor7[idx].field_1280:
                        if address(s) != stor7[idx].field_1536:
                            _353 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_353] = 0
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[_353 + 32] = stor7[idx].field_256
                            mem[0] = 7
                            mem[_353 + 64] = stor7[idx].field_0
                            mem[_353 + 96] = 300
                            mem[_353 + 128] = 5
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _353
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _380 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_380] = stor7[idx].field_1280
                        mem[_380 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_380 + 64] = stor7[idx].field_0
                        mem[_380 + 96] = 300
                        mem[_380 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _380
                    else:
                        if address(s) != stor7[idx].field_1536:
                            _381 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_381] = stor7[idx].field_1536
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[_381 + 32] = stor7[idx].field_256
                            mem[0] = 7
                            mem[_381 + 64] = stor7[idx].field_0
                            mem[_381 + 96] = 300
                            mem[_381 + 128] = 5
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _381
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor7[idx].field_1536
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _428 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_428] = stor7[idx].field_1280
                        mem[_428 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_428 + 64] = stor7[idx].field_0
                        mem[_428 + 96] = 300
                        mem[_428 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _428
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                _334 = mem[64]
                mem[mem[64]] = stor4
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _549 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _549:
                    _648 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_648 + 44 len 20]
                    mem[t + 64] = mem[_648 + 76 len 20]
                    mem[t + 96] = mem[_648 + 96]
                    mem[t + 128] = mem[_648 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                return memory
                  from mem[64]
                   len _334 + (160 * _549) + -mem[64] + 128
            mem[64] = (32 * stor7.length) + 288
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
            mem[(32 * stor7.length) + 256] = 0
            mem[var17001] = (32 * stor7.length) + 128
            s = var17001
            idx = var17002
            while idx - 1:
                mem[64] = mem[64] + 160
                mem[(32 * stor7.length) + 128] = 0
                mem[(32 * stor7.length) + 160] = 0
                mem[(32 * stor7.length) + 192] = 0
                mem[(32 * stor7.length) + 224] = 0
                mem[(32 * stor7.length) + 256] = 0
                mem[s + 32] = (32 * stor7.length) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _858 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_858] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_858 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_858 + 64] = stor7[idx].field_0
                        mem[_858 + 96] = 300
                        mem[_858 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _858
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _883 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_883] = stor7[idx].field_1280
                    mem[_883 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_883 + 64] = stor7[idx].field_0
                    mem[_883 + 96] = 300
                    mem[_883 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _883
                else:
                    if address(s) != stor7[idx].field_1536:
                        _884 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_884] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_884 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_884 + 64] = stor7[idx].field_0
                        mem[_884 + 96] = 300
                        mem[_884 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _884
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _921 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_921] = stor7[idx].field_1280
                    mem[_921 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_921 + 64] = stor7[idx].field_0
                    mem[_921 + 96] = 300
                    mem[_921 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _921
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _839 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _953 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _953:
                _993 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_993 + 44 len 20]
                mem[t + 64] = mem[_993 + 76 len 20]
                mem[t + 96] = mem[_993 + 96]
                mem[t + 128] = mem[_993 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _839 + (160 * _953) + -mem[64] + 128
        if 1 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require address(stor7.field_2048) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor7.length
        mem[64] = (32 * stor7.length) + 128
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _354 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_354] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_354 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_354 + 64] = stor7[idx].field_0
                        mem[_354 + 96] = 300
                        mem[_354 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _354
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _386 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_386] = stor7[idx].field_1280
                    mem[_386 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_386 + 64] = stor7[idx].field_0
                    mem[_386 + 96] = 300
                    mem[_386 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _386
                else:
                    if address(s) != stor7[idx].field_1536:
                        _387 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_387] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_387 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_387 + 64] = stor7[idx].field_0
                        mem[_387 + 96] = 300
                        mem[_387 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _387
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _435 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_435] = stor7[idx].field_1280
                    mem[_435 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_435 + 64] = stor7[idx].field_0
                    mem[_435 + 96] = 300
                    mem[_435 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _435
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _336 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _551 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _551:
                _649 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_649 + 44 len 20]
                mem[t + 64] = mem[_649 + 76 len 20]
                mem[t + 96] = mem[_649 + 96]
                mem[t + 128] = mem[_649 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _336 + (160 * _551) + -mem[64] + 128
        mem[64] = (32 * stor7.length) + 288
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[(32 * stor7.length) + 256] = 0
        mem[var19001] = (32 * stor7.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
            mem[(32 * stor7.length) + 256] = 0
            mem[s + 32] = (32 * stor7.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _859 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_859] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_859 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_859 + 64] = stor7[idx].field_0
                    mem[_859 + 96] = 300
                    mem[_859 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _859
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _887 = mem[64]
                mem[64] = mem[64] + 160
                mem[_887] = stor7[idx].field_1280
                mem[_887 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_887 + 64] = stor7[idx].field_0
                mem[_887 + 96] = 300
                mem[_887 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _887
            else:
                if address(s) != stor7[idx].field_1536:
                    _888 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_888] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_888 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_888 + 64] = stor7[idx].field_0
                    mem[_888 + 96] = 300
                    mem[_888 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _888
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _926 = mem[64]
                mem[64] = mem[64] + 160
                mem[_926] = stor7[idx].field_1280
                mem[_926 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_926 + 64] = stor7[idx].field_0
                mem[_926 + 96] = 300
                mem[_926 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _926
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _841 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _954 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _954:
            _994 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_994 + 44 len 20]
            mem[t + 64] = mem[_994 + 76 len 20]
            mem[t + 96] = mem[_994 + 96]
            mem[t + 128] = mem[_994 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _841 + (160 * _954) + -mem[64] + 128
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    require address(stor7.field_2048) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    if address(stor7.field_256) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor7.length
        mem[64] = (32 * stor7.length) + 128
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _355 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_355] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_355 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_355 + 64] = stor7[idx].field_0
                        mem[_355 + 96] = 300
                        mem[_355 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _355
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _392 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_392] = stor7[idx].field_1280
                    mem[_392 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_392 + 64] = stor7[idx].field_0
                    mem[_392 + 96] = 300
                    mem[_392 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _392
                else:
                    if address(s) != stor7[idx].field_1536:
                        _393 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_393] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_393 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_393 + 64] = stor7[idx].field_0
                        mem[_393 + 96] = 300
                        mem[_393 + 128] = 5
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _393
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _442 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_442] = stor7[idx].field_1280
                    mem[_442 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_442 + 64] = stor7[idx].field_0
                    mem[_442 + 96] = 300
                    mem[_442 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _442
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _338 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _553 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _553:
                _650 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_650 + 44 len 20]
                mem[t + 64] = mem[_650 + 76 len 20]
                mem[t + 96] = mem[_650 + 96]
                mem[t + 128] = mem[_650 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _338 + (160 * _553) + -mem[64] + 128
        mem[64] = (32 * stor7.length) + 288
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[(32 * stor7.length) + 256] = 0
        mem[var19001] = (32 * stor7.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
            mem[(32 * stor7.length) + 256] = 0
            mem[s + 32] = (32 * stor7.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _860 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_860] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_860 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_860 + 64] = stor7[idx].field_0
                    mem[_860 + 96] = 300
                    mem[_860 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _860
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _891 = mem[64]
                mem[64] = mem[64] + 160
                mem[_891] = stor7[idx].field_1280
                mem[_891 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_891 + 64] = stor7[idx].field_0
                mem[_891 + 96] = 300
                mem[_891 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _891
            else:
                if address(s) != stor7[idx].field_1536:
                    _892 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_892] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_892 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_892 + 64] = stor7[idx].field_0
                    mem[_892 + 96] = 300
                    mem[_892 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _892
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _931 = mem[64]
                mem[64] = mem[64] + 160
                mem[_931] = stor7[idx].field_1280
                mem[_931 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_931 + 64] = stor7[idx].field_0
                mem[_931 + 96] = 300
                mem[_931 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _931
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _843 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _955 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _955:
            _995 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_995 + 44 len 20]
            mem[t + 64] = mem[_995 + 76 len 20]
            mem[t + 96] = mem[_995 + 96]
            mem[t + 128] = mem[_995 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _843 + (160 * _955) + -mem[64] + 128
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    require address(stor7.field_2048) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor7.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor7.length
    mem[64] = (32 * stor7.length) + 128
    if not stor7.length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _356 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_356] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_356 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_356 + 64] = stor7[idx].field_0
                    mem[_356 + 96] = 300
                    mem[_356 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _356
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _398 = mem[64]
                mem[64] = mem[64] + 160
                mem[_398] = stor7[idx].field_1280
                mem[_398 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_398 + 64] = stor7[idx].field_0
                mem[_398 + 96] = 300
                mem[_398 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _398
            else:
                if address(s) != stor7[idx].field_1536:
                    _399 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_399] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_399 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_399 + 64] = stor7[idx].field_0
                    mem[_399 + 96] = 300
                    mem[_399 + 128] = 5
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _399
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _449 = mem[64]
                mem[64] = mem[64] + 160
                mem[_449] = stor7[idx].field_1280
                mem[_449 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_449 + 64] = stor7[idx].field_0
                mem[_449 + 96] = 300
                mem[_449 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _449
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _340 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _555 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _555:
            _651 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_651 + 44 len 20]
            mem[t + 64] = mem[_651 + 76 len 20]
            mem[t + 96] = mem[_651 + 96]
            mem[t + 128] = mem[_651 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _340 + (160 * _555) + -mem[64] + 128
    mem[64] = (32 * stor7.length) + 288
    mem[(32 * stor7.length) + 128] = 0
    mem[(32 * stor7.length) + 160] = 0
    mem[(32 * stor7.length) + 192] = 0
    mem[(32 * stor7.length) + 224] = 0
    mem[(32 * stor7.length) + 256] = 0
    mem[var21001] = (32 * stor7.length) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[(32 * stor7.length) + 256] = 0
        mem[s + 32] = (32 * stor7.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    while idx < stor7.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(s) != stor7[idx].field_1280:
            if address(s) != stor7[idx].field_1536:
                _861 = mem[64]
                mem[64] = mem[64] + 160
                mem[_861] = 0
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[_861 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_861 + 64] = stor7[idx].field_0
                mem[_861 + 96] = 300
                mem[_861 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _861
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                continue 
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _895 = mem[64]
            mem[64] = mem[64] + 160
            mem[_895] = stor7[idx].field_1280
            mem[_895 + 32] = stor7[idx].field_256
            mem[0] = 7
            mem[_895 + 64] = stor7[idx].field_0
            mem[_895 + 96] = 300
            mem[_895 + 128] = 5
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _895
        else:
            if address(s) != stor7[idx].field_1536:
                _896 = mem[64]
                mem[64] = mem[64] + 160
                mem[_896] = stor7[idx].field_1536
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[_896 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_896 + 64] = stor7[idx].field_0
                mem[_896 + 96] = 300
                mem[_896 + 128] = 5
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _896
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1536
                continue 
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _936 = mem[64]
            mem[64] = mem[64] + 160
            mem[_936] = stor7[idx].field_1280
            mem[_936 + 32] = stor7[idx].field_256
            mem[0] = 7
            mem[_936 + 64] = stor7[idx].field_0
            mem[_936 + 96] = 300
            mem[_936 + 128] = 5
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _936
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor7[idx].field_1280
        continue 
    _845 = mem[64]
    mem[mem[64]] = stor4
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _956 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _956:
        _996 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_996 + 44 len 20]
        mem[t + 64] = mem[_996 + 76 len 20]
        mem[t + 96] = mem[_996 + 96]
        mem[t + 128] = mem[_996 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _845 + (160 * _956) + -mem[64] + 128
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
    address(stor2) = address(cd[36])
    mem[floor32(('cd', 4).length) + 97] = 0
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 96
    mem[floor32(('cd', 4).length) + 225] = 0xaef022b800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 229] = address(stor2)
    mem[floor32(('cd', 4).length) + 261] = 160
    mem[floor32(('cd', 4).length) + 389] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 421
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 293] = 0
    mem[floor32(('cd', 4).length) + 325] = 0
    mem[floor32(('cd', 4).length) + 357] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 421] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 453
    while idx < stor1.length:
        mem[t] = stor1[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x63c0181b8670e444f4d5d6b05669bad04a850a07)
    staticcall 0x63c0181b8670e444f4d5d6b05669bad04a850a07.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 421 len (32 * ('cd', 4).length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 225
    require return_data.size >= 32
    _1220 = mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2)
    require mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 256 < floor32(('cd', 4).length) + return_data.size + 225
    _1221 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]
    require _1220 + (32 * _1221) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _1220 + 257
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 257
    while idx < _1221:
        _1620 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_1220 + -mem[s] - 32 >= 128
        _1624 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _1220 + _1620 + 257] == mem[floor32(('cd', 4).length) + _1220 + _1620 + 257]
        mem[_1624] = mem[floor32(('cd', 4).length) + _1220 + _1620 + 257]
        require mem[floor32(('cd', 4).length) + _1220 + _1620 + 289] == mem[floor32(('cd', 4).length) + _1220 + _1620 + 289]
        mem[_1624 + 32] = mem[floor32(('cd', 4).length) + _1220 + _1620 + 289]
        require mem[floor32(('cd', 4).length) + _1220 + _1620 + 321] == mem[floor32(('cd', 4).length) + _1220 + _1620 + 321]
        mem[_1624 + 64] = mem[floor32(('cd', 4).length) + _1220 + _1620 + 321]
        _1798 = mem[floor32(('cd', 4).length) + _1220 + _1620 + 353]
        require mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] <= test266151307()
        require floor32(('cd', 4).length) + _1220 + _1620 + mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] + 288 < floor32(('cd', 4).length) + return_data.size + 225
        _1848 = mem[floor32(('cd', 4).length) + _1220 + _1620 + mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] + 257]
        if mem[floor32(('cd', 4).length) + _1220 + _1620 + mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] + 257] > test266151307():
            revert with 'NH{q', 65
        _1933 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _1220 + _1620 + mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] + 257]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _1220 + _1620 + mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] + 257]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _1220 + _1620 + mem[floor32(('cd', 4).length) + _1220 + _1620 + 353] + 257]) + 1
        mem[_1933] = _1848
        require _1220 + _1620 + _1798 + (224 * _1848) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _1220 + _1620 + _1798 + 289
        w = _1933 + 32
        while u < _1848:
            require floor32(('cd', 4).length) + return_data.size + -v + 225 >= 224
            _2040 = mem[64]
            if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 224
            require mem[v] == mem[v + 12 len 20]
            mem[_2040] = mem[v]
            require mem[v + 32] == mem[v + 44 len 20]
            mem[_2040 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_2040 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_2040 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 128]
            mem[_2040 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_2040 + 160] = mem[v + 160]
            require mem[v + 192] == mem[v + 204 len 20]
            mem[_2040 + 192] = mem[v + 192]
            mem[w] = _2040
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[_1624 + 96] = _1933
        mem[t] = _1624
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64]
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        revert with 'NH{q', 50
    _2020 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 32]
    stor6 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64]
    _2407 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 96]]
    idx = 0
    while idx < _2407:
        _2410 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410 + 32] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 44 len 20]
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410 + 64] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 64]
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410 + 96] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 96]
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410 + 128] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 128]
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410 + 160] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 172 len 20]
        if idx >= mem[mem[_2020 + 96]]:
            revert with 'NH{q', 50
        mem[_2410 + 192] = mem[mem[(32 * idx) + mem[_2020 + 96] + 32] + 204 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_2410 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_2410 + 44 len 20]
        stor7[stor7.length].field_512 = mem[_2410 + 64]
        stor7[stor7.length].field_768 = mem[_2410 + 96]
        stor7[stor7.length].field_1024 = mem[_2410 + 128]
        stor7[stor7.length].field_1280 = mem[_2410 + 172 len 20]
        stor7[stor7.length].field_1536 = mem[_2410 + 204 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _2407 = mem[mem[_2020 + 96]]
        idx = idx + 1
        continue 
    _2408 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2408] = stor4
    mem[_2408 + 32] = stor5
    mem[_2408 + 64] = stor6
    _2409 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_2409] = stor7.length
    s = _2409 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _2776 = mem[64]
        mem[64] = mem[64] + 224
        mem[_2776] = stor7[idx].field_0
        mem[_2776 + 32] = stor7[idx].field_256
        mem[_2776 + 64] = stor7[idx].field_512
        mem[_2776 + 96] = stor7[idx].field_768
        mem[_2776 + 128] = stor7[idx].field_1024
        mem[_2776 + 160] = stor7[idx].field_1280
        mem[_2776 + 192] = stor7[idx].field_1536
        mem[s] = _2776
        s = s + 32
        idx = idx + 1
        continue 
    mem[_2408 + 96] = _2409
    require stor6 >= stor3
    if stor7.length != 2:
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        _2777 = mem[64]
        mem[mem[64]] = stor7.length
        mem[64] = mem[64] + (32 * stor7.length) + 32
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _3128 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3128] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3128 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3128 + 64] = stor7[idx].field_0
                        mem[_3128 + 96] = 300
                        mem[_3128 + 128] = 5
                        if idx >= mem[_2777]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2777 + 32] = _3128
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3150 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3150] = stor7[idx].field_1280
                    mem[_3150 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3150 + 64] = stor7[idx].field_0
                    mem[_3150 + 96] = 300
                    mem[_3150 + 128] = 5
                    if idx >= mem[_2777]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2777 + 32] = _3150
                else:
                    if address(s) != stor7[idx].field_1536:
                        _3151 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3151] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3151 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3151 + 64] = stor7[idx].field_0
                        mem[_3151 + 96] = 300
                        mem[_3151 + 128] = 5
                        if idx >= mem[_2777]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2777 + 32] = _3151
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3197 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3197] = stor7[idx].field_1280
                    mem[_3197 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3197 + 64] = stor7[idx].field_0
                    mem[_3197 + 96] = 300
                    mem[_3197 + 128] = 5
                    if idx >= mem[_2777]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2777 + 32] = _3197
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _3113 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3328 = mem[_2777]
            mem[mem[64] + 96] = mem[_2777]
            idx = 0
            s = _2777 + 32
            t = mem[64] + 128
            while idx < _3328:
                _3423 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3423 + 44 len 20]
                mem[t + 64] = mem[_3423 + 76 len 20]
                mem[t + 96] = mem[_3423 + 96]
                mem[t + 128] = mem[_3423 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _3113 + (160 * _3328) + -mem[64] + 128
        mem[64] = _2777 + (32 * stor7.length) + 192
        mem[_2777 + (32 * stor7.length) + 32] = 0
        mem[_2777 + (32 * stor7.length) + 64] = 0
        mem[_2777 + (32 * stor7.length) + 96] = 0
        mem[_2777 + (32 * stor7.length) + 128] = 0
        mem[_2777 + (32 * stor7.length) + 160] = 0
        mem[var128001] = _2777 + (32 * stor7.length) + 32
        s = var128001
        idx = var128002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_2777 + (32 * stor7.length) + 32] = 0
            mem[_2777 + (32 * stor7.length) + 64] = 0
            mem[_2777 + (32 * stor7.length) + 96] = 0
            mem[_2777 + (32 * stor7.length) + 128] = 0
            mem[_2777 + (32 * stor7.length) + 160] = 0
            mem[s + 32] = _2777 + (32 * stor7.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _3633 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3633] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3633 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3633 + 64] = stor7[idx].field_0
                    mem[_3633 + 96] = 300
                    mem[_3633 + 128] = 5
                    if idx >= mem[_2777]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2777 + 32] = _3633
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3655 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3655] = stor7[idx].field_1280
                mem[_3655 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3655 + 64] = stor7[idx].field_0
                mem[_3655 + 96] = 300
                mem[_3655 + 128] = 5
                if idx >= mem[_2777]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2777 + 32] = _3655
            else:
                if address(s) != stor7[idx].field_1536:
                    _3656 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3656] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3656 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3656 + 64] = stor7[idx].field_0
                    mem[_3656 + 96] = 300
                    mem[_3656 + 128] = 5
                    if idx >= mem[_2777]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2777 + 32] = _3656
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3692 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3692] = stor7[idx].field_1280
                mem[_3692 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3692 + 64] = stor7[idx].field_0
                mem[_3692 + 96] = 300
                mem[_3692 + 128] = 5
                if idx >= mem[_2777]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2777 + 32] = _3692
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _3618 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3728 = mem[_2777]
        mem[mem[64] + 96] = mem[_2777]
        idx = 0
        s = _2777 + 32
        t = mem[64] + 128
        while idx < _3728:
            _3768 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3768 + 44 len 20]
            mem[t + 64] = mem[_3768 + 76 len 20]
            mem[t + 96] = mem[_3768 + 96]
            mem[t + 128] = mem[_3768 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _3618 + (160 * _3728) + -mem[64] + 128
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    if address(stor7.field_256) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(stor7.field_256) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor7.length > test266151307():
                revert with 'NH{q', 65
            _2789 = mem[64]
            mem[mem[64]] = stor7.length
            mem[64] = mem[64] + (32 * stor7.length) + 32
            if not stor7.length:
                idx = 0
                s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                while idx < stor7.length:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    if address(s) != stor7[idx].field_1280:
                        if address(s) != stor7[idx].field_1536:
                            _3129 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3129] = 0
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[_3129 + 32] = stor7[idx].field_256
                            mem[0] = 7
                            mem[_3129 + 64] = stor7[idx].field_0
                            mem[_3129 + 96] = 300
                            mem[_3129 + 128] = 5
                            if idx >= mem[_2789]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2789 + 32] = _3129
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _3155 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3155] = stor7[idx].field_1280
                        mem[_3155 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3155 + 64] = stor7[idx].field_0
                        mem[_3155 + 96] = 300
                        mem[_3155 + 128] = 5
                        if idx >= mem[_2789]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2789 + 32] = _3155
                    else:
                        if address(s) != stor7[idx].field_1536:
                            _3156 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3156] = stor7[idx].field_1536
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[_3156 + 32] = stor7[idx].field_256
                            mem[0] = 7
                            mem[_3156 + 64] = stor7[idx].field_0
                            mem[_3156 + 96] = 300
                            mem[_3156 + 128] = 5
                            if idx >= mem[_2789]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2789 + 32] = _3156
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor7[idx].field_1536
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _3204 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3204] = stor7[idx].field_1280
                        mem[_3204 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3204 + 64] = stor7[idx].field_0
                        mem[_3204 + 96] = 300
                        mem[_3204 + 128] = 5
                        if idx >= mem[_2789]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2789 + 32] = _3204
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                _3114 = mem[64]
                mem[mem[64]] = stor4
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _3331 = mem[_2789]
                mem[mem[64] + 96] = mem[_2789]
                idx = 0
                s = _2789 + 32
                t = mem[64] + 128
                while idx < _3331:
                    _3424 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_3424 + 44 len 20]
                    mem[t + 64] = mem[_3424 + 76 len 20]
                    mem[t + 96] = mem[_3424 + 96]
                    mem[t + 128] = mem[_3424 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                return memory
                  from mem[64]
                   len _3114 + (160 * _3331) + -mem[64] + 128
            mem[64] = _2789 + (32 * stor7.length) + 192
            mem[_2789 + (32 * stor7.length) + 32] = 0
            mem[_2789 + (32 * stor7.length) + 64] = 0
            mem[_2789 + (32 * stor7.length) + 96] = 0
            mem[_2789 + (32 * stor7.length) + 128] = 0
            mem[_2789 + (32 * stor7.length) + 160] = 0
            mem[var135001] = _2789 + (32 * stor7.length) + 32
            s = var135001
            idx = var135002
            while idx - 1:
                mem[64] = mem[64] + 160
                mem[_2789 + (32 * stor7.length) + 32] = 0
                mem[_2789 + (32 * stor7.length) + 64] = 0
                mem[_2789 + (32 * stor7.length) + 96] = 0
                mem[_2789 + (32 * stor7.length) + 128] = 0
                mem[_2789 + (32 * stor7.length) + 160] = 0
                mem[s + 32] = _2789 + (32 * stor7.length) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _3634 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3634] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3634 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3634 + 64] = stor7[idx].field_0
                        mem[_3634 + 96] = 300
                        mem[_3634 + 128] = 5
                        if idx >= mem[_2789]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2789 + 32] = _3634
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3659 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3659] = stor7[idx].field_1280
                    mem[_3659 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3659 + 64] = stor7[idx].field_0
                    mem[_3659 + 96] = 300
                    mem[_3659 + 128] = 5
                    if idx >= mem[_2789]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2789 + 32] = _3659
                else:
                    if address(s) != stor7[idx].field_1536:
                        _3660 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3660] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3660 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3660 + 64] = stor7[idx].field_0
                        mem[_3660 + 96] = 300
                        mem[_3660 + 128] = 5
                        if idx >= mem[_2789]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2789 + 32] = _3660
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3697 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3697] = stor7[idx].field_1280
                    mem[_3697 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3697 + 64] = stor7[idx].field_0
                    mem[_3697 + 96] = 300
                    mem[_3697 + 128] = 5
                    if idx >= mem[_2789]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2789 + 32] = _3697
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _3619 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3729 = mem[_2789]
            mem[mem[64] + 96] = mem[_2789]
            idx = 0
            s = _2789 + 32
            t = mem[64] + 128
            while idx < _3729:
                _3769 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3769 + 44 len 20]
                mem[t + 64] = mem[_3769 + 76 len 20]
                mem[t + 96] = mem[_3769 + 96]
                mem[t + 128] = mem[_3769 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _3619 + (160 * _3729) + -mem[64] + 128
        if 1 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require address(stor7.field_2048) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        _2799 = mem[64]
        mem[mem[64]] = stor7.length
        mem[64] = mem[64] + (32 * stor7.length) + 32
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _3130 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3130] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3130 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3130 + 64] = stor7[idx].field_0
                        mem[_3130 + 96] = 300
                        mem[_3130 + 128] = 5
                        if idx >= mem[_2799]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2799 + 32] = _3130
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3160 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3160] = stor7[idx].field_1280
                    mem[_3160 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3160 + 64] = stor7[idx].field_0
                    mem[_3160 + 96] = 300
                    mem[_3160 + 128] = 5
                    if idx >= mem[_2799]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2799 + 32] = _3160
                else:
                    if address(s) != stor7[idx].field_1536:
                        _3161 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3161] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3161 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3161 + 64] = stor7[idx].field_0
                        mem[_3161 + 96] = 300
                        mem[_3161 + 128] = 5
                        if idx >= mem[_2799]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2799 + 32] = _3161
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3211 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3211] = stor7[idx].field_1280
                    mem[_3211 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3211 + 64] = stor7[idx].field_0
                    mem[_3211 + 96] = 300
                    mem[_3211 + 128] = 5
                    if idx >= mem[_2799]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2799 + 32] = _3211
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _3115 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3334 = mem[_2799]
            mem[mem[64] + 96] = mem[_2799]
            idx = 0
            s = _2799 + 32
            t = mem[64] + 128
            while idx < _3334:
                _3425 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3425 + 44 len 20]
                mem[t + 64] = mem[_3425 + 76 len 20]
                mem[t + 96] = mem[_3425 + 96]
                mem[t + 128] = mem[_3425 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _3115 + (160 * _3334) + -mem[64] + 128
        mem[64] = _2799 + (32 * stor7.length) + 192
        mem[_2799 + (32 * stor7.length) + 32] = 0
        mem[_2799 + (32 * stor7.length) + 64] = 0
        mem[_2799 + (32 * stor7.length) + 96] = 0
        mem[_2799 + (32 * stor7.length) + 128] = 0
        mem[_2799 + (32 * stor7.length) + 160] = 0
        mem[var137001] = _2799 + (32 * stor7.length) + 32
        s = var137001
        idx = var137002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_2799 + (32 * stor7.length) + 32] = 0
            mem[_2799 + (32 * stor7.length) + 64] = 0
            mem[_2799 + (32 * stor7.length) + 96] = 0
            mem[_2799 + (32 * stor7.length) + 128] = 0
            mem[_2799 + (32 * stor7.length) + 160] = 0
            mem[s + 32] = _2799 + (32 * stor7.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _3635 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3635] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3635 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3635 + 64] = stor7[idx].field_0
                    mem[_3635 + 96] = 300
                    mem[_3635 + 128] = 5
                    if idx >= mem[_2799]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2799 + 32] = _3635
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3663 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3663] = stor7[idx].field_1280
                mem[_3663 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3663 + 64] = stor7[idx].field_0
                mem[_3663 + 96] = 300
                mem[_3663 + 128] = 5
                if idx >= mem[_2799]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2799 + 32] = _3663
            else:
                if address(s) != stor7[idx].field_1536:
                    _3664 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3664] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3664 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3664 + 64] = stor7[idx].field_0
                    mem[_3664 + 96] = 300
                    mem[_3664 + 128] = 5
                    if idx >= mem[_2799]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2799 + 32] = _3664
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3702 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3702] = stor7[idx].field_1280
                mem[_3702 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3702 + 64] = stor7[idx].field_0
                mem[_3702 + 96] = 300
                mem[_3702 + 128] = 5
                if idx >= mem[_2799]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2799 + 32] = _3702
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _3620 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3730 = mem[_2799]
        mem[mem[64] + 96] = mem[_2799]
        idx = 0
        s = _2799 + 32
        t = mem[64] + 128
        while idx < _3730:
            _3770 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3770 + 44 len 20]
            mem[t + 64] = mem[_3770 + 76 len 20]
            mem[t + 96] = mem[_3770 + 96]
            mem[t + 128] = mem[_3770 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _3620 + (160 * _3730) + -mem[64] + 128
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    require address(stor7.field_2048) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    if address(stor7.field_256) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        _2800 = mem[64]
        mem[mem[64]] = stor7.length
        mem[64] = mem[64] + (32 * stor7.length) + 32
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1280:
                    if address(s) != stor7[idx].field_1536:
                        _3131 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3131] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3131 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3131 + 64] = stor7[idx].field_0
                        mem[_3131 + 96] = 300
                        mem[_3131 + 128] = 5
                        if idx >= mem[_2800]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2800 + 32] = _3131
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3165 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3165] = stor7[idx].field_1280
                    mem[_3165 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3165 + 64] = stor7[idx].field_0
                    mem[_3165 + 96] = 300
                    mem[_3165 + 128] = 5
                    if idx >= mem[_2800]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2800 + 32] = _3165
                else:
                    if address(s) != stor7[idx].field_1536:
                        _3166 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3166] = stor7[idx].field_1536
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[_3166 + 32] = stor7[idx].field_256
                        mem[0] = 7
                        mem[_3166 + 64] = stor7[idx].field_0
                        mem[_3166 + 96] = 300
                        mem[_3166 + 128] = 5
                        if idx >= mem[_2800]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2800 + 32] = _3166
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1536
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3218 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3218] = stor7[idx].field_1280
                    mem[_3218 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3218 + 64] = stor7[idx].field_0
                    mem[_3218 + 96] = 300
                    mem[_3218 + 128] = 5
                    if idx >= mem[_2800]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2800 + 32] = _3218
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            _3116 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3337 = mem[_2800]
            mem[mem[64] + 96] = mem[_2800]
            idx = 0
            s = _2800 + 32
            t = mem[64] + 128
            while idx < _3337:
                _3426 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3426 + 44 len 20]
                mem[t + 64] = mem[_3426 + 76 len 20]
                mem[t + 96] = mem[_3426 + 96]
                mem[t + 128] = mem[_3426 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _3116 + (160 * _3337) + -mem[64] + 128
        mem[64] = _2800 + (32 * stor7.length) + 192
        mem[_2800 + (32 * stor7.length) + 32] = 0
        mem[_2800 + (32 * stor7.length) + 64] = 0
        mem[_2800 + (32 * stor7.length) + 96] = 0
        mem[_2800 + (32 * stor7.length) + 128] = 0
        mem[_2800 + (32 * stor7.length) + 160] = 0
        mem[var137001] = _2800 + (32 * stor7.length) + 32
        s = var137001
        idx = var137002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_2800 + (32 * stor7.length) + 32] = 0
            mem[_2800 + (32 * stor7.length) + 64] = 0
            mem[_2800 + (32 * stor7.length) + 96] = 0
            mem[_2800 + (32 * stor7.length) + 128] = 0
            mem[_2800 + (32 * stor7.length) + 160] = 0
            mem[s + 32] = _2800 + (32 * stor7.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _3636 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3636] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3636 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3636 + 64] = stor7[idx].field_0
                    mem[_3636 + 96] = 300
                    mem[_3636 + 128] = 5
                    if idx >= mem[_2800]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2800 + 32] = _3636
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3667 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3667] = stor7[idx].field_1280
                mem[_3667 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3667 + 64] = stor7[idx].field_0
                mem[_3667 + 96] = 300
                mem[_3667 + 128] = 5
                if idx >= mem[_2800]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2800 + 32] = _3667
            else:
                if address(s) != stor7[idx].field_1536:
                    _3668 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3668] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3668 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3668 + 64] = stor7[idx].field_0
                    mem[_3668 + 96] = 300
                    mem[_3668 + 128] = 5
                    if idx >= mem[_2800]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2800 + 32] = _3668
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3707 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3707] = stor7[idx].field_1280
                mem[_3707 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3707 + 64] = stor7[idx].field_0
                mem[_3707 + 96] = 300
                mem[_3707 + 128] = 5
                if idx >= mem[_2800]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2800 + 32] = _3707
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _3621 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3731 = mem[_2800]
        mem[mem[64] + 96] = mem[_2800]
        idx = 0
        s = _2800 + 32
        t = mem[64] + 128
        while idx < _3731:
            _3771 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3771 + 44 len 20]
            mem[t + 64] = mem[_3771 + 76 len 20]
            mem[t + 96] = mem[_3771 + 96]
            mem[t + 128] = mem[_3771 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _3621 + (160 * _3731) + -mem[64] + 128
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    require address(stor7.field_2048) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor7.length > test266151307():
        revert with 'NH{q', 65
    _2814 = mem[64]
    mem[mem[64]] = stor7.length
    mem[64] = mem[64] + (32 * stor7.length) + 32
    if not stor7.length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1280:
                if address(s) != stor7[idx].field_1536:
                    _3132 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3132] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3132 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3132 + 64] = stor7[idx].field_0
                    mem[_3132 + 96] = 300
                    mem[_3132 + 128] = 5
                    if idx >= mem[_2814]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2814 + 32] = _3132
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3170 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3170] = stor7[idx].field_1280
                mem[_3170 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3170 + 64] = stor7[idx].field_0
                mem[_3170 + 96] = 300
                mem[_3170 + 128] = 5
                if idx >= mem[_2814]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2814 + 32] = _3170
            else:
                if address(s) != stor7[idx].field_1536:
                    _3171 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3171] = stor7[idx].field_1536
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[_3171 + 32] = stor7[idx].field_256
                    mem[0] = 7
                    mem[_3171 + 64] = stor7[idx].field_0
                    mem[_3171 + 96] = 300
                    mem[_3171 + 128] = 5
                    if idx >= mem[_2814]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2814 + 32] = _3171
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1536
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3225 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3225] = stor7[idx].field_1280
                mem[_3225 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3225 + 64] = stor7[idx].field_0
                mem[_3225 + 96] = 300
                mem[_3225 + 128] = 5
                if idx >= mem[_2814]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2814 + 32] = _3225
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1280
            continue 
        _3117 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3340 = mem[_2814]
        mem[mem[64] + 96] = mem[_2814]
        idx = 0
        s = _2814 + 32
        t = mem[64] + 128
        while idx < _3340:
            _3427 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3427 + 44 len 20]
            mem[t + 64] = mem[_3427 + 76 len 20]
            mem[t + 96] = mem[_3427 + 96]
            mem[t + 128] = mem[_3427 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _3117 + (160 * _3340) + -mem[64] + 128
    mem[64] = _2814 + (32 * stor7.length) + 192
    mem[_2814 + (32 * stor7.length) + 32] = 0
    mem[_2814 + (32 * stor7.length) + 64] = 0
    mem[_2814 + (32 * stor7.length) + 96] = 0
    mem[_2814 + (32 * stor7.length) + 128] = 0
    mem[_2814 + (32 * stor7.length) + 160] = 0
    mem[var139001] = _2814 + (32 * stor7.length) + 32
    s = var139001
    idx = var139002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_2814 + (32 * stor7.length) + 32] = 0
        mem[_2814 + (32 * stor7.length) + 64] = 0
        mem[_2814 + (32 * stor7.length) + 96] = 0
        mem[_2814 + (32 * stor7.length) + 128] = 0
        mem[_2814 + (32 * stor7.length) + 160] = 0
        mem[s + 32] = _2814 + (32 * stor7.length) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    while idx < stor7.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(s) != stor7[idx].field_1280:
            if address(s) != stor7[idx].field_1536:
                _3637 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3637] = 0
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[_3637 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3637 + 64] = stor7[idx].field_0
                mem[_3637 + 96] = 300
                mem[_3637 + 128] = 5
                if idx >= mem[_2814]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2814 + 32] = _3637
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                continue 
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _3671 = mem[64]
            mem[64] = mem[64] + 160
            mem[_3671] = stor7[idx].field_1280
            mem[_3671 + 32] = stor7[idx].field_256
            mem[0] = 7
            mem[_3671 + 64] = stor7[idx].field_0
            mem[_3671 + 96] = 300
            mem[_3671 + 128] = 5
            if idx >= mem[_2814]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _2814 + 32] = _3671
        else:
            if address(s) != stor7[idx].field_1536:
                _3672 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3672] = stor7[idx].field_1536
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[_3672 + 32] = stor7[idx].field_256
                mem[0] = 7
                mem[_3672 + 64] = stor7[idx].field_0
                mem[_3672 + 96] = 300
                mem[_3672 + 128] = 5
                if idx >= mem[_2814]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2814 + 32] = _3672
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1536
                continue 
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _3712 = mem[64]
            mem[64] = mem[64] + 160
            mem[_3712] = stor7[idx].field_1280
            mem[_3712 + 32] = stor7[idx].field_256
            mem[0] = 7
            mem[_3712 + 64] = stor7[idx].field_0
            mem[_3712 + 96] = 300
            mem[_3712 + 128] = 5
            if idx >= mem[_2814]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _2814 + 32] = _3712
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor7[idx].field_1280
        continue 
    _3622 = mem[64]
    mem[mem[64]] = stor4
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _3732 = mem[_2814]
    mem[mem[64] + 96] = mem[_2814]
    idx = 0
    s = _2814 + 32
    t = mem[64] + 128
    while idx < _3732:
        _3772 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_3772 + 44 len 20]
        mem[t + 64] = mem[_3772 + 76 len 20]
        mem[t + 96] = mem[_3772 + 96]
        mem[t + 128] = mem[_3772 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _3622 + (160 * _3732) + -mem[64] + 128
}



}
