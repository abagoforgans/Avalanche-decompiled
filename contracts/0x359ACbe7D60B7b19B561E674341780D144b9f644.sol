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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg3.length) + 192, arg3.length, mem[floor32(arg3.length) + 549 len (32 * arg3.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _266 = mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg3.length) + return_data.size + 353
    _267 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg3.length) + ceil32(return_data.size) + 353] = _267
    require _266 + (32 * _267) + 32 <= return_data.size
    idx = 0
    s = floor32(arg3.length) + _266 + 385
    t = floor32(arg3.length) + ceil32(return_data.size) + 385
    while idx < _267:
        _348 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_266 + -mem[s] - 32 >= 128
        _352 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg3.length) + _266 + _348 + 385] == mem[floor32(arg3.length) + _266 + _348 + 385]
        mem[_352] = mem[floor32(arg3.length) + _266 + _348 + 385]
        require mem[floor32(arg3.length) + _266 + _348 + 417] == mem[floor32(arg3.length) + _266 + _348 + 417]
        mem[_352 + 32] = mem[floor32(arg3.length) + _266 + _348 + 417]
        require mem[floor32(arg3.length) + _266 + _348 + 449] == mem[floor32(arg3.length) + _266 + _348 + 449]
        mem[_352 + 64] = mem[floor32(arg3.length) + _266 + _348 + 449]
        _409 = mem[floor32(arg3.length) + _266 + _348 + 481]
        require mem[floor32(arg3.length) + _266 + _348 + 481] <= test266151307()
        require floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 416 < floor32(arg3.length) + return_data.size + 353
        _411 = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        if mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _414 = mem[64]
        if mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]) + 1
        mem[_414] = mem[floor32(arg3.length) + _266 + _348 + mem[floor32(arg3.length) + _266 + _348 + 481] + 385]
        require _266 + _348 + _409 + (192 * _411) + 64 <= return_data.size
        u = 0
        v = floor32(arg3.length) + _266 + _348 + _409 + 417
        w = _414 + 32
        while u < _411:
            require floor32(arg3.length) + return_data.size + -v + 353 >= 192
            _450 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_450] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_450 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_450 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_450 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_450 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_450 + 160] = mem[v + 160]
            mem[w] = _450
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_352 + 96] = _414
        mem[t] = _352
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg3.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg3.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _430 = mem[floor32(arg3.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 64]
    _499 = mem[mem[mem[floor32(arg3.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _499:
        _502 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 32] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 32]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 64] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 64]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 96] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 96]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 128] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_430 + 96]]:
            revert with 'NH{q', 50
        mem[_502 + 160] = mem[mem[(32 * idx) + mem[_430 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_502 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_502 + 32]
        stor7[stor7.length].field_512 = mem[_502 + 64]
        stor7[stor7.length].field_768 = mem[_502 + 96]
        stor7[stor7.length].field_1024 = mem[_502 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_502 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _499 = mem[mem[_430 + 96]]
        idx = idx + 1
        continue 
    _500 = mem[64]
    mem[64] = mem[64] + 128
    mem[_500] = stor4
    mem[_500 + 32] = stor5
    mem[_500 + 64] = stor6
    _501 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_501] = stor7.length
    s = _501 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _551 = mem[64]
        mem[64] = mem[64] + 192
        mem[_551] = stor7[idx].field_0
        mem[_551 + 32] = stor7[idx].field_256
        mem[_551 + 64] = stor7[idx].field_512
        mem[_551 + 96] = stor7[idx].field_768
        mem[_551 + 128] = stor7[idx].field_1024
        mem[_551 + 160] = stor7[idx].field_1280
        mem[s] = _551
        s = s + 32
        idx = idx + 1
        continue 
    mem[_500 + 96] = _501
    _552 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_500]
    mem[mem[64] + 64] = mem[_500 + 32]
    mem[mem[64] + 96] = mem[_500 + 64]
    mem[mem[64] + 128] = 128
    _557 = mem[_501]
    mem[mem[64] + 160] = mem[_501]
    idx = 0
    s = _501 + 32
    t = mem[64] + 192
    while idx < _557:
        _566 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_566 + 32]
        mem[t + 64] = mem[_566 + 64]
        mem[t + 96] = mem[_566 + 96]
        mem[t + 128] = mem[_566 + 140 len 20]
        mem[t + 160] = mem[_566 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _552 + (192 * _557) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _267 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _268 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _267 + (32 * _268) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _267 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _268:
        _349 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_267 + -mem[s] - 32 >= 128
        _353 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _267 + _349 + 385] == mem[floor32(arg2.length) + _267 + _349 + 385]
        mem[_353] = mem[floor32(arg2.length) + _267 + _349 + 385]
        require mem[floor32(arg2.length) + _267 + _349 + 417] == mem[floor32(arg2.length) + _267 + _349 + 417]
        mem[_353 + 32] = mem[floor32(arg2.length) + _267 + _349 + 417]
        require mem[floor32(arg2.length) + _267 + _349 + 449] == mem[floor32(arg2.length) + _267 + _349 + 449]
        mem[_353 + 64] = mem[floor32(arg2.length) + _267 + _349 + 449]
        _410 = mem[floor32(arg2.length) + _267 + _349 + 481]
        require mem[floor32(arg2.length) + _267 + _349 + 481] <= test266151307()
        require floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _412 = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        if mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _415 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1
        mem[_415] = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        require _267 + _349 + _410 + (192 * _412) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _267 + _349 + _410 + 417
        w = _415 + 32
        while u < _412:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 192
            _451 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_451] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_451 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_451 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_451 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_451 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_451 + 160] = mem[v + 160]
            mem[w] = _451
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_353 + 96] = _415
        mem[t] = _353
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _431 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _500 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _500:
        _503 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 32] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 32]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 64] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 64]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 96] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 96]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 128] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 160] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_503 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_503 + 32]
        stor7[stor7.length].field_512 = mem[_503 + 64]
        stor7[stor7.length].field_768 = mem[_503 + 96]
        stor7[stor7.length].field_1024 = mem[_503 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_503 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _500 = mem[mem[_431 + 96]]
        idx = idx + 1
        continue 
    _501 = mem[64]
    mem[64] = mem[64] + 128
    mem[_501] = stor4
    mem[_501 + 32] = stor5
    mem[_501 + 64] = stor6
    _502 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_502] = stor7.length
    s = _502 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _552 = mem[64]
        mem[64] = mem[64] + 192
        mem[_552] = stor7[idx].field_0
        mem[_552 + 32] = stor7[idx].field_256
        mem[_552 + 64] = stor7[idx].field_512
        mem[_552 + 96] = stor7[idx].field_768
        mem[_552 + 128] = stor7[idx].field_1024
        mem[_552 + 160] = stor7[idx].field_1280
        mem[s] = _552
        s = s + 32
        idx = idx + 1
        continue 
    mem[_501 + 96] = _502
    _553 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_501]
    mem[mem[64] + 64] = mem[_501 + 32]
    mem[mem[64] + 96] = mem[_501 + 64]
    mem[mem[64] + 128] = 128
    _558 = mem[_502]
    mem[mem[64] + 160] = mem[_502]
    idx = 0
    s = _502 + 32
    t = mem[64] + 192
    while idx < _558:
        _567 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_567 + 32]
        mem[t + 64] = mem[_567 + 64]
        mem[t + 96] = mem[_567 + 96]
        mem[t + 128] = mem[_567 + 140 len 20]
        mem[t + 160] = mem[_567 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _553 + (192 * _558) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _267 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _268 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _267 + (32 * _268) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _267 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _268:
        _349 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_267 + -mem[s] - 32 >= 128
        _353 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _267 + _349 + 385] == mem[floor32(arg2.length) + _267 + _349 + 385]
        mem[_353] = mem[floor32(arg2.length) + _267 + _349 + 385]
        require mem[floor32(arg2.length) + _267 + _349 + 417] == mem[floor32(arg2.length) + _267 + _349 + 417]
        mem[_353 + 32] = mem[floor32(arg2.length) + _267 + _349 + 417]
        require mem[floor32(arg2.length) + _267 + _349 + 449] == mem[floor32(arg2.length) + _267 + _349 + 449]
        mem[_353 + 64] = mem[floor32(arg2.length) + _267 + _349 + 449]
        _410 = mem[floor32(arg2.length) + _267 + _349 + 481]
        require mem[floor32(arg2.length) + _267 + _349 + 481] <= test266151307()
        require floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _412 = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        if mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _415 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1
        mem[_415] = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        require _267 + _349 + _410 + (192 * _412) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _267 + _349 + _410 + 417
        w = _415 + 32
        while u < _412:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 192
            _451 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_451] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_451 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_451 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_451 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_451 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_451 + 160] = mem[v + 160]
            mem[w] = _451
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_353 + 96] = _415
        mem[t] = _353
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _431 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _500 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _500:
        _503 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 32] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 32]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 64] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 64]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 96] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 96]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 128] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 160] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_503 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_503 + 32]
        stor7[stor7.length].field_512 = mem[_503 + 64]
        stor7[stor7.length].field_768 = mem[_503 + 96]
        stor7[stor7.length].field_1024 = mem[_503 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_503 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _500 = mem[mem[_431 + 96]]
        idx = idx + 1
        continue 
    _501 = mem[64]
    mem[64] = mem[64] + 128
    mem[_501] = stor4
    mem[_501 + 32] = stor5
    mem[_501 + 64] = stor6
    _502 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_502] = stor7.length
    s = _502 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _552 = mem[64]
        mem[64] = mem[64] + 192
        mem[_552] = stor7[idx].field_0
        mem[_552 + 32] = stor7[idx].field_256
        mem[_552 + 64] = stor7[idx].field_512
        mem[_552 + 96] = stor7[idx].field_768
        mem[_552 + 128] = stor7[idx].field_1024
        mem[_552 + 160] = stor7[idx].field_1280
        mem[s] = _552
        s = s + 32
        idx = idx + 1
        continue 
    mem[_501 + 96] = _502
    _553 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_501]
    mem[mem[64] + 64] = mem[_501 + 32]
    mem[mem[64] + 96] = mem[_501 + 64]
    mem[mem[64] + 128] = 128
    _558 = mem[_502]
    mem[mem[64] + 160] = mem[_502]
    idx = 0
    s = _502 + 32
    t = mem[64] + 192
    while idx < _558:
        _567 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_567 + 32]
        mem[t + 64] = mem[_567 + 64]
        mem[t + 96] = mem[_567 + 96]
        mem[t + 128] = mem[_567 + 140 len 20]
        mem[t + 160] = mem[_567 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _553 + (192 * _558) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _267 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _268 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _267 + (32 * _268) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _267 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _268:
        _349 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_267 + -mem[s] - 32 >= 128
        _353 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _267 + _349 + 385] == mem[floor32(arg2.length) + _267 + _349 + 385]
        mem[_353] = mem[floor32(arg2.length) + _267 + _349 + 385]
        require mem[floor32(arg2.length) + _267 + _349 + 417] == mem[floor32(arg2.length) + _267 + _349 + 417]
        mem[_353 + 32] = mem[floor32(arg2.length) + _267 + _349 + 417]
        require mem[floor32(arg2.length) + _267 + _349 + 449] == mem[floor32(arg2.length) + _267 + _349 + 449]
        mem[_353 + 64] = mem[floor32(arg2.length) + _267 + _349 + 449]
        _410 = mem[floor32(arg2.length) + _267 + _349 + 481]
        require mem[floor32(arg2.length) + _267 + _349 + 481] <= test266151307()
        require floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _412 = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        if mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _415 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1
        mem[_415] = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        require _267 + _349 + _410 + (192 * _412) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _267 + _349 + _410 + 417
        w = _415 + 32
        while u < _412:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 192
            _451 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_451] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_451 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_451 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_451 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_451 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_451 + 160] = mem[v + 160]
            mem[w] = _451
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_353 + 96] = _415
        mem[t] = _353
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _431 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _500 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _500:
        _503 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 32] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 32]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 64] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 64]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 96] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 96]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 128] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 160] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_503 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_503 + 32]
        stor7[stor7.length].field_512 = mem[_503 + 64]
        stor7[stor7.length].field_768 = mem[_503 + 96]
        stor7[stor7.length].field_1024 = mem[_503 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_503 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _500 = mem[mem[_431 + 96]]
        idx = idx + 1
        continue 
    _501 = mem[64]
    mem[64] = mem[64] + 128
    mem[_501] = stor4
    mem[_501 + 32] = stor5
    mem[_501 + 64] = stor6
    _502 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_502] = stor7.length
    s = _502 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _552 = mem[64]
        mem[64] = mem[64] + 192
        mem[_552] = stor7[idx].field_0
        mem[_552 + 32] = stor7[idx].field_256
        mem[_552 + 64] = stor7[idx].field_512
        mem[_552 + 96] = stor7[idx].field_768
        mem[_552 + 128] = stor7[idx].field_1024
        mem[_552 + 160] = stor7[idx].field_1280
        mem[s] = _552
        s = s + 32
        idx = idx + 1
        continue 
    mem[_501 + 96] = _502
    _553 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_501]
    mem[mem[64] + 64] = mem[_501 + 32]
    mem[mem[64] + 96] = mem[_501 + 64]
    mem[mem[64] + 128] = 128
    _558 = mem[_502]
    mem[mem[64] + 160] = mem[_502]
    idx = 0
    s = _502 + 32
    t = mem[64] + 192
    while idx < _558:
        _567 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_567 + 32]
        mem[t + 64] = mem[_567 + 64]
        mem[t + 96] = mem[_567 + 96]
        mem[t + 128] = mem[_567 + 140 len 20]
        mem[t + 160] = mem[_567 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _553 + (192 * _558) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _267 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _268 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _267 + (32 * _268) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _267 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _268:
        _349 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_267 + -mem[s] - 32 >= 128
        _353 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _267 + _349 + 385] == mem[floor32(arg2.length) + _267 + _349 + 385]
        mem[_353] = mem[floor32(arg2.length) + _267 + _349 + 385]
        require mem[floor32(arg2.length) + _267 + _349 + 417] == mem[floor32(arg2.length) + _267 + _349 + 417]
        mem[_353 + 32] = mem[floor32(arg2.length) + _267 + _349 + 417]
        require mem[floor32(arg2.length) + _267 + _349 + 449] == mem[floor32(arg2.length) + _267 + _349 + 449]
        mem[_353 + 64] = mem[floor32(arg2.length) + _267 + _349 + 449]
        _410 = mem[floor32(arg2.length) + _267 + _349 + 481]
        require mem[floor32(arg2.length) + _267 + _349 + 481] <= test266151307()
        require floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _412 = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        if mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _415 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1
        mem[_415] = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        require _267 + _349 + _410 + (192 * _412) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _267 + _349 + _410 + 417
        w = _415 + 32
        while u < _412:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 192
            _451 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_451] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_451 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_451 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_451 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_451 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_451 + 160] = mem[v + 160]
            mem[w] = _451
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_353 + 96] = _415
        mem[t] = _353
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _431 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _500 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _500:
        _503 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 32] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 32]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 64] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 64]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 96] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 96]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 128] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 160] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_503 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_503 + 32]
        stor7[stor7.length].field_512 = mem[_503 + 64]
        stor7[stor7.length].field_768 = mem[_503 + 96]
        stor7[stor7.length].field_1024 = mem[_503 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_503 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _500 = mem[mem[_431 + 96]]
        idx = idx + 1
        continue 
    _501 = mem[64]
    mem[64] = mem[64] + 128
    mem[_501] = stor4
    mem[_501 + 32] = stor5
    mem[_501 + 64] = stor6
    _502 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_502] = stor7.length
    s = _502 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _552 = mem[64]
        mem[64] = mem[64] + 192
        mem[_552] = stor7[idx].field_0
        mem[_552 + 32] = stor7[idx].field_256
        mem[_552 + 64] = stor7[idx].field_512
        mem[_552 + 96] = stor7[idx].field_768
        mem[_552 + 128] = stor7[idx].field_1024
        mem[_552 + 160] = stor7[idx].field_1280
        mem[s] = _552
        s = s + 32
        idx = idx + 1
        continue 
    mem[_501 + 96] = _502
    _553 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_501]
    mem[mem[64] + 64] = mem[_501 + 32]
    mem[mem[64] + 96] = mem[_501 + 64]
    mem[mem[64] + 128] = 128
    _558 = mem[_502]
    mem[mem[64] + 160] = mem[_502]
    idx = 0
    s = _502 + 32
    t = mem[64] + 192
    while idx < _558:
        _567 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_567 + 32]
        mem[t + 64] = mem[_567 + 64]
        mem[t + 96] = mem[_567 + 96]
        mem[t + 128] = mem[_567 + 140 len 20]
        mem[t + 160] = mem[_567 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _553 + (192 * _558) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _267 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _268 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _267 + (32 * _268) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _267 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _268:
        _349 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_267 + -mem[s] - 32 >= 128
        _353 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _267 + _349 + 385] == mem[floor32(arg2.length) + _267 + _349 + 385]
        mem[_353] = mem[floor32(arg2.length) + _267 + _349 + 385]
        require mem[floor32(arg2.length) + _267 + _349 + 417] == mem[floor32(arg2.length) + _267 + _349 + 417]
        mem[_353 + 32] = mem[floor32(arg2.length) + _267 + _349 + 417]
        require mem[floor32(arg2.length) + _267 + _349 + 449] == mem[floor32(arg2.length) + _267 + _349 + 449]
        mem[_353 + 64] = mem[floor32(arg2.length) + _267 + _349 + 449]
        _410 = mem[floor32(arg2.length) + _267 + _349 + 481]
        require mem[floor32(arg2.length) + _267 + _349 + 481] <= test266151307()
        require floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _412 = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        if mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _415 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1
        mem[_415] = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        require _267 + _349 + _410 + (192 * _412) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _267 + _349 + _410 + 417
        w = _415 + 32
        while u < _412:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 192
            _451 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_451] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_451 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_451 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_451 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_451 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_451 + 160] = mem[v + 160]
            mem[w] = _451
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_353 + 96] = _415
        mem[t] = _353
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _431 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _500 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _500:
        _503 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 32] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 32]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 64] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 64]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 96] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 96]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 128] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 160] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_503 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_503 + 32]
        stor7[stor7.length].field_512 = mem[_503 + 64]
        stor7[stor7.length].field_768 = mem[_503 + 96]
        stor7[stor7.length].field_1024 = mem[_503 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_503 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _500 = mem[mem[_431 + 96]]
        idx = idx + 1
        continue 
    _501 = mem[64]
    mem[64] = mem[64] + 128
    mem[_501] = stor4
    mem[_501 + 32] = stor5
    mem[_501 + 64] = stor6
    _502 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_502] = stor7.length
    s = _502 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _552 = mem[64]
        mem[64] = mem[64] + 192
        mem[_552] = stor7[idx].field_0
        mem[_552 + 32] = stor7[idx].field_256
        mem[_552 + 64] = stor7[idx].field_512
        mem[_552 + 96] = stor7[idx].field_768
        mem[_552 + 128] = stor7[idx].field_1024
        mem[_552 + 160] = stor7[idx].field_1280
        mem[s] = _552
        s = s + 32
        idx = idx + 1
        continue 
    mem[_501 + 96] = _502
    _553 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_501]
    mem[mem[64] + 64] = mem[_501 + 32]
    mem[mem[64] + 96] = mem[_501 + 64]
    mem[mem[64] + 128] = 128
    _558 = mem[_502]
    mem[mem[64] + 160] = mem[_502]
    idx = 0
    s = _502 + 32
    t = mem[64] + 192
    while idx < _558:
        _567 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_567 + 32]
        mem[t + 64] = mem[_567 + 64]
        mem[t + 96] = mem[_567 + 96]
        mem[t + 128] = mem[_567 + 140 len 20]
        mem[t + 160] = mem[_567 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _553 + (192 * _558) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * arg2.length) + 192, arg2.length, mem[floor32(arg2.length) + 549 len (32 * arg2.length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _267 = mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(arg2.length) + return_data.size + 353
    _268 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(arg2.length) + ceil32(return_data.size) + 353] = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 353 len 4], Mask(224, 0, stor2) + 353]
    require _267 + (32 * _268) + 32 <= return_data.size
    idx = 0
    s = floor32(arg2.length) + _267 + 385
    t = floor32(arg2.length) + ceil32(return_data.size) + 385
    while idx < _268:
        _349 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_267 + -mem[s] - 32 >= 128
        _353 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(arg2.length) + _267 + _349 + 385] == mem[floor32(arg2.length) + _267 + _349 + 385]
        mem[_353] = mem[floor32(arg2.length) + _267 + _349 + 385]
        require mem[floor32(arg2.length) + _267 + _349 + 417] == mem[floor32(arg2.length) + _267 + _349 + 417]
        mem[_353 + 32] = mem[floor32(arg2.length) + _267 + _349 + 417]
        require mem[floor32(arg2.length) + _267 + _349 + 449] == mem[floor32(arg2.length) + _267 + _349 + 449]
        mem[_353 + 64] = mem[floor32(arg2.length) + _267 + _349 + 449]
        _410 = mem[floor32(arg2.length) + _267 + _349 + 481]
        require mem[floor32(arg2.length) + _267 + _349 + 481] <= test266151307()
        require floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 416 < floor32(arg2.length) + return_data.size + 353
        _412 = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        if mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _415 = mem[64]
        if mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]) + 1
        mem[_415] = mem[floor32(arg2.length) + _267 + _349 + mem[floor32(arg2.length) + _267 + _349 + 481] + 385]
        require _267 + _349 + _410 + (192 * _412) + 64 <= return_data.size
        u = 0
        v = floor32(arg2.length) + _267 + _349 + _410 + 417
        w = _415 + 32
        while u < _412:
            require floor32(arg2.length) + return_data.size + -v + 353 >= 192
            _451 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_451] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_451 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_451 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_451 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_451 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_451 + 160] = mem[v + 160]
            mem[w] = _451
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_353 + 96] = _415
        mem[t] = _353
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(arg2.length) + ceil32(return_data.size) + 385] + 64] > 0:
            if idx >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(arg2.length) + ceil32(return_data.size) + 353]:
        revert with 'NH{q', 50
    _431 = mem[floor32(arg2.length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 64]
    _500 = mem[mem[mem[floor32(arg2.length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _500:
        _503 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 32] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 32]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 64] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 64]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 96] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 96]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 128] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_431 + 96]]:
            revert with 'NH{q', 50
        mem[_503 + 160] = mem[mem[(32 * idx) + mem[_431 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_503 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_503 + 32]
        stor7[stor7.length].field_512 = mem[_503 + 64]
        stor7[stor7.length].field_768 = mem[_503 + 96]
        stor7[stor7.length].field_1024 = mem[_503 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_503 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _500 = mem[mem[_431 + 96]]
        idx = idx + 1
        continue 
    _501 = mem[64]
    mem[64] = mem[64] + 128
    mem[_501] = stor4
    mem[_501 + 32] = stor5
    mem[_501 + 64] = stor6
    _502 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_502] = stor7.length
    s = _502 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _552 = mem[64]
        mem[64] = mem[64] + 192
        mem[_552] = stor7[idx].field_0
        mem[_552 + 32] = stor7[idx].field_256
        mem[_552 + 64] = stor7[idx].field_512
        mem[_552 + 96] = stor7[idx].field_768
        mem[_552 + 128] = stor7[idx].field_1024
        mem[_552 + 160] = stor7[idx].field_1280
        mem[s] = _552
        s = s + 32
        idx = idx + 1
        continue 
    mem[_501 + 96] = _502
    _553 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_501]
    mem[mem[64] + 64] = mem[_501 + 32]
    mem[mem[64] + 96] = mem[_501 + 64]
    mem[mem[64] + 128] = 128
    _558 = mem[_502]
    mem[mem[64] + 160] = mem[_502]
    idx = 0
    s = _502 + 32
    t = mem[64] + 192
    while idx < _558:
        _567 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_567 + 32]
        mem[t + 64] = mem[_567 + 64]
        mem[t + 96] = mem[_567 + 96]
        mem[t + 128] = mem[_567 + 140 len 20]
        mem[t + 160] = mem[_567 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _553 + (192 * _558) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 421 len (32 * ('cd', 4).length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 225
    require return_data.size >= 32
    _268 = mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2)
    require mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 256 < floor32(('cd', 4).length) + return_data.size + 225
    _269 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] = _269
    require _268 + (32 * _269) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _268 + 257
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 257
    while idx < _269:
        _350 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_268 + -mem[s] - 32 >= 128
        _354 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _268 + _350 + 257] == mem[floor32(('cd', 4).length) + _268 + _350 + 257]
        mem[_354] = mem[floor32(('cd', 4).length) + _268 + _350 + 257]
        require mem[floor32(('cd', 4).length) + _268 + _350 + 289] == mem[floor32(('cd', 4).length) + _268 + _350 + 289]
        mem[_354 + 32] = mem[floor32(('cd', 4).length) + _268 + _350 + 289]
        require mem[floor32(('cd', 4).length) + _268 + _350 + 321] == mem[floor32(('cd', 4).length) + _268 + _350 + 321]
        mem[_354 + 64] = mem[floor32(('cd', 4).length) + _268 + _350 + 321]
        _411 = mem[floor32(('cd', 4).length) + _268 + _350 + 353]
        require mem[floor32(('cd', 4).length) + _268 + _350 + 353] <= test266151307()
        require floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 288 < floor32(('cd', 4).length) + return_data.size + 225
        _414 = mem[floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 257]
        if mem[floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 257] > test266151307():
            revert with 'NH{q', 65
        _417 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 257]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 257]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 257]) + 1
        mem[_417] = mem[floor32(('cd', 4).length) + _268 + _350 + mem[floor32(('cd', 4).length) + _268 + _350 + 353] + 257]
        require _268 + _350 + _411 + (192 * _414) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _268 + _350 + _411 + 289
        w = _417 + 32
        while u < _414:
            require floor32(('cd', 4).length) + return_data.size + -v + 225 >= 192
            _452 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_452] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_452 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_452 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_452 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_452 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_452 + 160] = mem[v + 160]
            mem[w] = _452
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_354 + 96] = _417
        mem[t] = _354
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64] > 0:
            if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
                revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        revert with 'NH{q', 50
    _432 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 32]
    stor6 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64]
    _501 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 96]]
    idx = 0
    while idx < _501:
        _504 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_432 + 96]]:
            revert with 'NH{q', 50
        mem[_504] = mem[mem[(32 * idx) + mem[_432 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_432 + 96]]:
            revert with 'NH{q', 50
        mem[_504 + 32] = mem[mem[(32 * idx) + mem[_432 + 96] + 32] + 32]
        if idx >= mem[mem[_432 + 96]]:
            revert with 'NH{q', 50
        mem[_504 + 64] = mem[mem[(32 * idx) + mem[_432 + 96] + 32] + 64]
        if idx >= mem[mem[_432 + 96]]:
            revert with 'NH{q', 50
        mem[_504 + 96] = mem[mem[(32 * idx) + mem[_432 + 96] + 32] + 96]
        if idx >= mem[mem[_432 + 96]]:
            revert with 'NH{q', 50
        mem[_504 + 128] = mem[mem[(32 * idx) + mem[_432 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_432 + 96]]:
            revert with 'NH{q', 50
        mem[_504 + 160] = mem[mem[(32 * idx) + mem[_432 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_504 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_504 + 32]
        stor7[stor7.length].field_512 = mem[_504 + 64]
        stor7[stor7.length].field_768 = mem[_504 + 96]
        stor7[stor7.length].field_1024 = mem[_504 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_504 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _501 = mem[mem[_432 + 96]]
        idx = idx + 1
        continue 
    _502 = mem[64]
    mem[64] = mem[64] + 128
    mem[_502] = stor4
    mem[_502 + 32] = stor5
    mem[_502 + 64] = stor6
    _503 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_503] = stor7.length
    s = _503 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _553 = mem[64]
        mem[64] = mem[64] + 192
        mem[_553] = stor7[idx].field_0
        mem[_553 + 32] = stor7[idx].field_256
        mem[_553 + 64] = stor7[idx].field_512
        mem[_553 + 96] = stor7[idx].field_768
        mem[_553 + 128] = stor7[idx].field_1024
        mem[_553 + 160] = stor7[idx].field_1280
        mem[s] = _553
        s = s + 32
        idx = idx + 1
        continue 
    mem[_502 + 96] = _503
    _554 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_502]
    mem[mem[64] + 64] = mem[_502 + 32]
    mem[mem[64] + 96] = mem[_502 + 64]
    mem[mem[64] + 128] = 128
    _559 = mem[_503]
    mem[mem[64] + 160] = mem[_503]
    idx = 0
    s = _503 + 32
    t = mem[64] + 192
    while idx < _559:
        _568 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_568 + 32]
        mem[t + 64] = mem[_568 + 64]
        mem[t + 96] = mem[_568 + 96]
        mem[t + 128] = mem[_568 + 140 len 20]
        mem[t + 160] = mem[_568 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _554 + (192 * _559) + -mem[64] + 192
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 549 len (32 * ('cd', 4).length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    _269 = mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2)
    require mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 384 < floor32(('cd', 4).length) + return_data.size + 353
    _270 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 353 len 4], Mask(224, 0, stor2) + 353]) + 354
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 353] = _270
    require _269 + (32 * _270) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _269 + 385
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 385
    while idx < _270:
        _351 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_269 + -mem[s] - 32 >= 128
        _355 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _269 + _351 + 385] == mem[floor32(('cd', 4).length) + _269 + _351 + 385]
        mem[_355] = mem[floor32(('cd', 4).length) + _269 + _351 + 385]
        require mem[floor32(('cd', 4).length) + _269 + _351 + 417] == mem[floor32(('cd', 4).length) + _269 + _351 + 417]
        mem[_355 + 32] = mem[floor32(('cd', 4).length) + _269 + _351 + 417]
        require mem[floor32(('cd', 4).length) + _269 + _351 + 449] == mem[floor32(('cd', 4).length) + _269 + _351 + 449]
        mem[_355 + 64] = mem[floor32(('cd', 4).length) + _269 + _351 + 449]
        _412 = mem[floor32(('cd', 4).length) + _269 + _351 + 481]
        require mem[floor32(('cd', 4).length) + _269 + _351 + 481] <= test266151307()
        require floor32(('cd', 4).length) + _269 + _351 + mem[floor32(('cd', 4).length) + _269 + _351 + 481] + 416 < floor32(('cd', 4).length) + return_data.size + 353
        _414 = mem[floor32(('cd', 4).length) + _269 + _351 + mem[floor32(('cd', 4).length) + _269 + _351 + 481] + 385]
        if mem[floor32(('cd', 4).length) + _269 + _351 + mem[floor32(('cd', 4).length) + _269 + _351 + 481] + 385] > test266151307():
            revert with 'NH{q', 65
        _417 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _269 + _351 + mem[floor32(('cd', 4).length) + _269 + _351 + 481] + 385]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _269 + _351 + mem[floor32(('cd', 4).length) + _269 + _351 + 481] + 385]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _269 + _351 + mem[floor32(('cd', 4).length) + _269 + _351 + 481] + 385]) + 1
        mem[_417] = _414
        require _269 + _351 + _412 + (192 * _414) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _269 + _351 + _412 + 417
        w = _417 + 32
        while u < _414:
            require floor32(('cd', 4).length) + return_data.size + -v + 353 >= 192
            _453 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_453] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_453 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_453 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_453 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_453 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_453 + 160] = mem[v + 160]
            mem[w] = _453
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_355 + 96] = _417
        mem[t] = _355
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
    _433 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385]]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 32]
    stor6 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 64]
    _502 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 385] + 96]]
    idx = 0
    while idx < _502:
        _505 = mem[64]
        mem[64] = mem[64] + 192
        if idx >= mem[mem[_433 + 96]]:
            revert with 'NH{q', 50
        mem[_505] = mem[mem[(32 * idx) + mem[_433 + 96] + 32] + 12 len 20]
        if idx >= mem[mem[_433 + 96]]:
            revert with 'NH{q', 50
        mem[_505 + 32] = mem[mem[(32 * idx) + mem[_433 + 96] + 32] + 32]
        if idx >= mem[mem[_433 + 96]]:
            revert with 'NH{q', 50
        mem[_505 + 64] = mem[mem[(32 * idx) + mem[_433 + 96] + 32] + 64]
        if idx >= mem[mem[_433 + 96]]:
            revert with 'NH{q', 50
        mem[_505 + 96] = mem[mem[(32 * idx) + mem[_433 + 96] + 32] + 96]
        if idx >= mem[mem[_433 + 96]]:
            revert with 'NH{q', 50
        mem[_505 + 128] = mem[mem[(32 * idx) + mem[_433 + 96] + 32] + 140 len 20]
        if idx >= mem[mem[_433 + 96]]:
            revert with 'NH{q', 50
        mem[_505 + 160] = mem[mem[(32 * idx) + mem[_433 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_505 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_505 + 32]
        stor7[stor7.length].field_512 = mem[_505 + 64]
        stor7[stor7.length].field_768 = mem[_505 + 96]
        stor7[stor7.length].field_1024 = mem[_505 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_505 + 172 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        _502 = mem[mem[_433 + 96]]
        idx = idx + 1
        continue 
    _503 = mem[64]
    mem[64] = mem[64] + 128
    mem[_503] = stor4
    mem[_503 + 32] = stor5
    mem[_503 + 64] = stor6
    _504 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_504] = stor7.length
    s = _504 + 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _554 = mem[64]
        mem[64] = mem[64] + 192
        mem[_554] = stor7[idx].field_0
        mem[_554 + 32] = stor7[idx].field_256
        mem[_554 + 64] = stor7[idx].field_512
        mem[_554 + 96] = stor7[idx].field_768
        mem[_554 + 128] = stor7[idx].field_1024
        mem[_554 + 160] = stor7[idx].field_1280
        mem[s] = _554
        s = s + 32
        idx = idx + 1
        continue 
    mem[_503 + 96] = _504
    _555 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_503]
    mem[mem[64] + 64] = mem[_503 + 32]
    mem[mem[64] + 96] = mem[_503 + 64]
    mem[mem[64] + 128] = 128
    _560 = mem[_504]
    mem[mem[64] + 160] = mem[_504]
    idx = 0
    s = _504 + 32
    t = mem[64] + 192
    while idx < _560:
        _569 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_569 + 32]
        mem[t + 64] = mem[_569 + 64]
        mem[t + 96] = mem[_569 + 96]
        mem[t + 128] = mem[_569 + 140 len 20]
        mem[t + 160] = mem[_569 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _555 + (192 * _560) + -mem[64] + 192
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
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _302 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_302] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_302 + 32] = stor7[idx].field_0
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
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _327 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_327] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_327 + 32] = stor7[idx].field_0
                    mem[_327 + 64] = 300
                    mem[_327 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _327
                else:
                    if address(s) != stor7[idx].field_1280:
                        _328 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_328] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_328 + 32] = stor7[idx].field_0
                        mem[_328 + 64] = 300
                        mem[_328 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _328
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _372 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_372] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_372 + 32] = stor7[idx].field_0
                    mem[_372 + 64] = 300
                    mem[_372 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _372
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _282 = mem[64]
            mem[mem[64]] = stor4
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
        mem[64] = (32 * stor7.length) + 256
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[var10001] = (32 * stor7.length) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
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
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _727 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_727] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_727 + 32] = stor7[idx].field_0
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
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _752 = mem[64]
                mem[64] = mem[64] + 128
                mem[_752] = stor7[idx].field_1024
                mem[0] = 7
                mem[_752 + 32] = stor7[idx].field_0
                mem[_752 + 64] = 300
                mem[_752 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _752
            else:
                if address(s) != stor7[idx].field_1280:
                    _753 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_753] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_753 + 32] = stor7[idx].field_0
                    mem[_753 + 64] = 300
                    mem[_753 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _753
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _787 = mem[64]
                mem[64] = mem[64] + 128
                mem[_787] = stor7[idx].field_1024
                mem[0] = 7
                mem[_787 + 32] = stor7[idx].field_0
                mem[_787 + 64] = 300
                mem[_787 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _787
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _707 = mem[64]
        mem[mem[64]] = stor4
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
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    if address(stor7.field_0) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(stor7.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
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
                    if address(s) != stor7[idx].field_1024:
                        if address(s) != stor7[idx].field_1280:
                            _303 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_303] = 0
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[0] = 7
                            mem[_303 + 32] = stor7[idx].field_0
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
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _331 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_331] = stor7[idx].field_1024
                        mem[0] = 7
                        mem[_331 + 32] = stor7[idx].field_0
                        mem[_331 + 64] = 300
                        mem[_331 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _331
                    else:
                        if address(s) != stor7[idx].field_1280:
                            _332 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_332] = stor7[idx].field_1280
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[0] = 7
                            mem[_332 + 32] = stor7[idx].field_0
                            mem[_332 + 64] = 300
                            mem[_332 + 96] = 1
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _332
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor7[idx].field_1280
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _375 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_375] = stor7[idx].field_1024
                        mem[0] = 7
                        mem[_375 + 32] = stor7[idx].field_0
                        mem[_375 + 64] = 300
                        mem[_375 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _375
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1024
                    continue 
                _284 = mem[64]
                mem[mem[64]] = stor4
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
            mem[64] = (32 * stor7.length) + 256
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
            mem[var17001] = (32 * stor7.length) + 128
            s = var17001
            idx = var17002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[(32 * stor7.length) + 128] = 0
                mem[(32 * stor7.length) + 160] = 0
                mem[(32 * stor7.length) + 192] = 0
                mem[(32 * stor7.length) + 224] = 0
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
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _728 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_728] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_728 + 32] = stor7[idx].field_0
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
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _754 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_754] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_754 + 32] = stor7[idx].field_0
                    mem[_754 + 64] = 300
                    mem[_754 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _754
                else:
                    if address(s) != stor7[idx].field_1280:
                        _755 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_755] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_755 + 32] = stor7[idx].field_0
                        mem[_755 + 64] = 300
                        mem[_755 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _755
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _788 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_788] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_788 + 32] = stor7[idx].field_0
                    mem[_788 + 64] = 300
                    mem[_788 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _788
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _709 = mem[64]
            mem[mem[64]] = stor4
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
        if 1 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require address(stor7.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
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
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _304 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_304] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_304 + 32] = stor7[idx].field_0
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
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _335 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_335] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_335 + 32] = stor7[idx].field_0
                    mem[_335 + 64] = 300
                    mem[_335 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _335
                else:
                    if address(s) != stor7[idx].field_1280:
                        _336 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_336] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_336 + 32] = stor7[idx].field_0
                        mem[_336 + 64] = 300
                        mem[_336 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _336
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _378 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_378] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_378 + 32] = stor7[idx].field_0
                    mem[_378 + 64] = 300
                    mem[_378 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _378
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _286 = mem[64]
            mem[mem[64]] = stor4
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
        mem[64] = (32 * stor7.length) + 256
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[var19001] = (32 * stor7.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
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
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _729 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_729] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_729 + 32] = stor7[idx].field_0
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
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _756 = mem[64]
                mem[64] = mem[64] + 128
                mem[_756] = stor7[idx].field_1024
                mem[0] = 7
                mem[_756 + 32] = stor7[idx].field_0
                mem[_756 + 64] = 300
                mem[_756 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _756
            else:
                if address(s) != stor7[idx].field_1280:
                    _757 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_757] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_757 + 32] = stor7[idx].field_0
                    mem[_757 + 64] = 300
                    mem[_757 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _757
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _789 = mem[64]
                mem[64] = mem[64] + 128
                mem[_789] = stor7[idx].field_1024
                mem[0] = 7
                mem[_789 + 32] = stor7[idx].field_0
                mem[_789 + 64] = 300
                mem[_789 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _789
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _711 = mem[64]
        mem[mem[64]] = stor4
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
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    require address(stor7.field_1536) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    if address(stor7.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
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
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _305 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_305] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_305 + 32] = stor7[idx].field_0
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
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _339 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_339] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_339 + 32] = stor7[idx].field_0
                    mem[_339 + 64] = 300
                    mem[_339 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _339
                else:
                    if address(s) != stor7[idx].field_1280:
                        _340 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_340] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_340 + 32] = stor7[idx].field_0
                        mem[_340 + 64] = 300
                        mem[_340 + 96] = 1
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _340
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _381 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_381] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_381 + 32] = stor7[idx].field_0
                    mem[_381 + 64] = 300
                    mem[_381 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _381
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _288 = mem[64]
            mem[mem[64]] = stor4
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
        mem[64] = (32 * stor7.length) + 256
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
        mem[var19001] = (32 * stor7.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 0
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
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _730 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_730] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_730 + 32] = stor7[idx].field_0
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
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _758 = mem[64]
                mem[64] = mem[64] + 128
                mem[_758] = stor7[idx].field_1024
                mem[0] = 7
                mem[_758 + 32] = stor7[idx].field_0
                mem[_758 + 64] = 300
                mem[_758 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _758
            else:
                if address(s) != stor7[idx].field_1280:
                    _759 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_759] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_759 + 32] = stor7[idx].field_0
                    mem[_759 + 64] = 300
                    mem[_759 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _759
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _790 = mem[64]
                mem[64] = mem[64] + 128
                mem[_790] = stor7[idx].field_1024
                mem[0] = 7
                mem[_790 + 32] = stor7[idx].field_0
                mem[_790 + 64] = 300
                mem[_790 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _790
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _713 = mem[64]
        mem[mem[64]] = stor4
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
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    require address(stor7.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
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
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _306 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_306] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_306 + 32] = stor7[idx].field_0
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
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _343 = mem[64]
                mem[64] = mem[64] + 128
                mem[_343] = stor7[idx].field_1024
                mem[0] = 7
                mem[_343 + 32] = stor7[idx].field_0
                mem[_343 + 64] = 300
                mem[_343 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _343
            else:
                if address(s) != stor7[idx].field_1280:
                    _344 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_344] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_344 + 32] = stor7[idx].field_0
                    mem[_344 + 64] = 300
                    mem[_344 + 96] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _344
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _384 = mem[64]
                mem[64] = mem[64] + 128
                mem[_384] = stor7[idx].field_1024
                mem[0] = 7
                mem[_384 + 32] = stor7[idx].field_0
                mem[_384 + 64] = 300
                mem[_384 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _384
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _290 = mem[64]
        mem[mem[64]] = stor4
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
    mem[64] = (32 * stor7.length) + 256
    mem[(32 * stor7.length) + 128] = 0
    mem[(32 * stor7.length) + 160] = 0
    mem[(32 * stor7.length) + 192] = 0
    mem[(32 * stor7.length) + 224] = 0
    mem[var21001] = (32 * stor7.length) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 0
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
        if address(s) != stor7[idx].field_1024:
            if address(s) != stor7[idx].field_1280:
                _731 = mem[64]
                mem[64] = mem[64] + 128
                mem[_731] = 0
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[_731 + 32] = stor7[idx].field_0
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
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _760 = mem[64]
            mem[64] = mem[64] + 128
            mem[_760] = stor7[idx].field_1024
            mem[0] = 7
            mem[_760 + 32] = stor7[idx].field_0
            mem[_760 + 64] = 300
            mem[_760 + 96] = 1
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _760
        else:
            if address(s) != stor7[idx].field_1280:
                _761 = mem[64]
                mem[64] = mem[64] + 128
                mem[_761] = stor7[idx].field_1280
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[_761 + 32] = stor7[idx].field_0
                mem[_761 + 64] = 300
                mem[_761 + 96] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _761
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1280
                continue 
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _791 = mem[64]
            mem[64] = mem[64] + 128
            mem[_791] = stor7[idx].field_1024
            mem[0] = 7
            mem[_791 + 32] = stor7[idx].field_0
            mem[_791 + 64] = 300
            mem[_791 + 96] = 1
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _791
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor7[idx].field_1024
        continue 
    _715 = mem[64]
    mem[mem[64]] = stor4
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
    require ext_code.size(0x6ffb1bb6811b07aa326eecd1320a5a3297371de2)
    staticcall 0x6ffb1bb6811b07aa326eecd1320a5a3297371de2.0xaef022b8 with:
            gas gas_remaining wei
           args address(stor2), 160, 0, 0, (32 * ('cd', 4).length) + 192, ('cd', 4).length, mem[floor32(('cd', 4).length) + 421 len (32 * ('cd', 4).length) + (32 * stor1.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 225
    require return_data.size >= 32
    _1053 = mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2)
    require mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 256 < floor32(('cd', 4).length) + return_data.size + 225
    _1054 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 225 len 4], Mask(224, 0, stor2) + 225]) + 226
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225] = _1054
    require _1053 + (32 * _1054) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _1053 + 257
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 257
    while idx < _1054:
        _1397 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_1053 + -mem[s] - 32 >= 128
        _1401 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[floor32(('cd', 4).length) + _1053 + _1397 + 257] == mem[floor32(('cd', 4).length) + _1053 + _1397 + 257]
        mem[_1401] = mem[floor32(('cd', 4).length) + _1053 + _1397 + 257]
        require mem[floor32(('cd', 4).length) + _1053 + _1397 + 289] == mem[floor32(('cd', 4).length) + _1053 + _1397 + 289]
        mem[_1401 + 32] = mem[floor32(('cd', 4).length) + _1053 + _1397 + 289]
        require mem[floor32(('cd', 4).length) + _1053 + _1397 + 321] == mem[floor32(('cd', 4).length) + _1053 + _1397 + 321]
        mem[_1401 + 64] = mem[floor32(('cd', 4).length) + _1053 + _1397 + 321]
        _1557 = mem[floor32(('cd', 4).length) + _1053 + _1397 + 353]
        require mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] <= test266151307()
        require floor32(('cd', 4).length) + _1053 + _1397 + mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] + 288 < floor32(('cd', 4).length) + return_data.size + 225
        _1604 = mem[floor32(('cd', 4).length) + _1053 + _1397 + mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] + 257]
        if mem[floor32(('cd', 4).length) + _1053 + _1397 + mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] + 257] > test266151307():
            revert with 'NH{q', 65
        _1666 = mem[64]
        if mem[64] + floor32(mem[floor32(('cd', 4).length) + _1053 + _1397 + mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] + 257]) + 1 > test266151307() or mem[64] + floor32(mem[floor32(('cd', 4).length) + _1053 + _1397 + mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] + 257]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(mem[floor32(('cd', 4).length) + _1053 + _1397 + mem[floor32(('cd', 4).length) + _1053 + _1397 + 353] + 257]) + 1
        mem[_1666] = _1604
        require _1053 + _1397 + _1557 + (192 * _1604) + 64 <= return_data.size
        u = 0
        v = floor32(('cd', 4).length) + _1053 + _1397 + _1557 + 289
        w = _1666 + 32
        while u < _1604:
            require floor32(('cd', 4).length) + return_data.size + -v + 225 >= 192
            _1761 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[v] == mem[v + 12 len 20]
            mem[_1761] = mem[v]
            require mem[v + 32] == mem[v + 32]
            mem[_1761 + 32] = mem[v + 32]
            require mem[v + 64] == mem[v + 64]
            mem[_1761 + 64] = mem[v + 64]
            require mem[v + 96] == mem[v + 96]
            mem[_1761 + 96] = mem[v + 96]
            require mem[v + 128] == mem[v + 140 len 20]
            mem[_1761 + 128] = mem[v + 128]
            require mem[v + 160] == mem[v + 172 len 20]
            mem[_1761 + 160] = mem[v + 160]
            mem[w] = _1761
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_1401 + 96] = _1666
        mem[t] = _1401
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    t = 0
    while t < mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        if t >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
            revert with 'NH{q', 50
        if mem[mem[(32 * t) + floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64] > 0:
            if t >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
                revert with 'NH{q', 50
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        continue 
    if 0 >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 225]:
        revert with 'NH{q', 50
    _1741 = mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]
    stor4 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257]]
    stor5 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 32]
    stor6 = mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 64]
    _2072 = mem[mem[mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 257] + 96]]
    t = 0
    while t < _2072:
        _2075 = mem[64]
        mem[64] = mem[64] + 192
        if t >= mem[mem[_1741 + 96]]:
            revert with 'NH{q', 50
        mem[_2075] = mem[mem[(32 * t) + mem[_1741 + 96] + 32] + 12 len 20]
        if t >= mem[mem[_1741 + 96]]:
            revert with 'NH{q', 50
        mem[_2075 + 32] = mem[mem[(32 * t) + mem[_1741 + 96] + 32] + 32]
        if t >= mem[mem[_1741 + 96]]:
            revert with 'NH{q', 50
        mem[_2075 + 64] = mem[mem[(32 * t) + mem[_1741 + 96] + 32] + 64]
        if t >= mem[mem[_1741 + 96]]:
            revert with 'NH{q', 50
        mem[_2075 + 96] = mem[mem[(32 * t) + mem[_1741 + 96] + 32] + 96]
        if t >= mem[mem[_1741 + 96]]:
            revert with 'NH{q', 50
        mem[_2075 + 128] = mem[mem[(32 * t) + mem[_1741 + 96] + 32] + 140 len 20]
        if t >= mem[mem[_1741 + 96]]:
            revert with 'NH{q', 50
        mem[_2075 + 160] = mem[mem[(32 * t) + mem[_1741 + 96] + 32] + 172 len 20]
        stor7.length++
        mem[0] = 7
        stor7[stor7.length].field_0 = mem[_2075 + 12 len 20]
        stor7[stor7.length].field_256 = mem[_2075 + 32]
        stor7[stor7.length].field_512 = mem[_2075 + 64]
        stor7[stor7.length].field_768 = mem[_2075 + 96]
        stor7[stor7.length].field_1024 = mem[_2075 + 140 len 20]
        stor7[stor7.length].field_1280 = mem[_2075 + 172 len 20]
        if t == -1:
            revert with 'NH{q', 17
        _2072 = mem[mem[_1741 + 96]]
        t = t + 1
        continue 
    _2073 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2073] = stor4
    mem[_2073 + 32] = stor5
    mem[_2073 + 64] = stor6
    _2074 = mem[64]
    mem[64] = mem[64] + (32 * stor7.length) + 32
    mem[_2074] = stor7.length
    u = _2074 + 32
    t = 0
    while t < stor7.length:
        mem[0] = 7
        _2386 = mem[64]
        mem[64] = mem[64] + 192
        mem[_2386] = stor7[t].field_0
        mem[_2386 + 32] = stor7[t].field_256
        mem[_2386 + 64] = stor7[t].field_512
        mem[_2386 + 96] = stor7[t].field_768
        mem[_2386 + 128] = stor7[t].field_1024
        mem[_2386 + 160] = stor7[t].field_1280
        mem[u] = _2386
        u = u + 32
        t = t + 1
        continue 
    mem[_2073 + 96] = _2074
    require stor6 >= stor3
    if stor7.length != 2:
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        _2387 = mem[64]
        mem[mem[64]] = stor7.length
        mem[64] = mem[64] + (32 * stor7.length) + 32
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _2688 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2688] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_2688 + 32] = stor7[idx].field_0
                        mem[_2688 + 64] = 300
                        mem[_2688 + 96] = 1
                        if idx >= mem[_2387]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2387 + 32] = _2688
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _2713 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2713] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_2713 + 32] = stor7[idx].field_0
                    mem[_2713 + 64] = 300
                    mem[_2713 + 96] = 1
                    if idx >= mem[_2387]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2387 + 32] = _2713
                else:
                    if address(s) != stor7[idx].field_1280:
                        _2714 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2714] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_2714 + 32] = stor7[idx].field_0
                        mem[_2714 + 64] = 300
                        mem[_2714 + 96] = 1
                        if idx >= mem[_2387]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2387 + 32] = _2714
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _2758 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2758] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_2758 + 32] = stor7[idx].field_0
                    mem[_2758 + 64] = 300
                    mem[_2758 + 96] = 1
                    if idx >= mem[_2387]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2387 + 32] = _2758
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _2673 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2858 = mem[_2387]
            mem[mem[64] + 96] = mem[_2387]
            idx = 0
            s = _2387 + 32
            t = mem[64] + 128
            while idx < _2858:
                _2933 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2933 + 44 len 20]
                mem[t + 64] = mem[_2933 + 64]
                mem[t + 96] = mem[_2933 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2673 + (128 * _2858) + -mem[64] + 128
        mem[64] = _2387 + (32 * stor7.length) + 160
        mem[_2387 + (32 * stor7.length) + 32] = 0
        mem[_2387 + (32 * stor7.length) + 64] = 0
        mem[_2387 + (32 * stor7.length) + 96] = 0
        mem[_2387 + (32 * stor7.length) + 128] = 0
        mem[var128001] = _2387 + (32 * stor7.length) + 32
        s = var128001
        idx = var128002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2387 + (32 * stor7.length) + 32] = 0
            mem[_2387 + (32 * stor7.length) + 64] = 0
            mem[_2387 + (32 * stor7.length) + 96] = 0
            mem[_2387 + (32 * stor7.length) + 128] = 0
            mem[s + 32] = _2387 + (32 * stor7.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _3113 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3113] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_3113 + 32] = stor7[idx].field_0
                    mem[_3113 + 64] = 300
                    mem[_3113 + 96] = 1
                    if idx >= mem[_2387]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2387 + 32] = _3113
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3138 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3138] = stor7[idx].field_1024
                mem[0] = 7
                mem[_3138 + 32] = stor7[idx].field_0
                mem[_3138 + 64] = 300
                mem[_3138 + 96] = 1
                if idx >= mem[_2387]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2387 + 32] = _3138
            else:
                if address(s) != stor7[idx].field_1280:
                    _3139 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3139] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_3139 + 32] = stor7[idx].field_0
                    mem[_3139 + 64] = 300
                    mem[_3139 + 96] = 1
                    if idx >= mem[_2387]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2387 + 32] = _3139
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3173 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3173] = stor7[idx].field_1024
                mem[0] = 7
                mem[_3173 + 32] = stor7[idx].field_0
                mem[_3173 + 64] = 300
                mem[_3173 + 96] = 1
                if idx >= mem[_2387]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2387 + 32] = _3173
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _3098 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3188 = mem[_2387]
        mem[mem[64] + 96] = mem[_2387]
        idx = 0
        s = _2387 + 32
        t = mem[64] + 128
        while idx < _3188:
            _3223 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3223 + 44 len 20]
            mem[t + 64] = mem[_3223 + 64]
            mem[t + 96] = mem[_3223 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3098 + (128 * _3188) + -mem[64] + 128
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    if address(stor7.field_0) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(stor7.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor7.length > test266151307():
                revert with 'NH{q', 65
            _2399 = mem[64]
            mem[mem[64]] = stor7.length
            mem[64] = mem[64] + (32 * stor7.length) + 32
            if not stor7.length:
                idx = 0
                s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                while idx < stor7.length:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    if address(s) != stor7[idx].field_1024:
                        if address(s) != stor7[idx].field_1280:
                            _2689 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2689] = 0
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[0] = 7
                            mem[_2689 + 32] = stor7[idx].field_0
                            mem[_2689 + 64] = 300
                            mem[_2689 + 96] = 1
                            if idx >= mem[_2399]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2399 + 32] = _2689
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _2716 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2716] = stor7[idx].field_1024
                        mem[0] = 7
                        mem[_2716 + 32] = stor7[idx].field_0
                        mem[_2716 + 64] = 300
                        mem[_2716 + 96] = 1
                        if idx >= mem[_2399]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2399 + 32] = _2716
                    else:
                        if address(s) != stor7[idx].field_1280:
                            _2717 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2717] = stor7[idx].field_1280
                            if idx >= stor7.length:
                                revert with 'NH{q', 50
                            mem[0] = 7
                            mem[_2717 + 32] = stor7[idx].field_0
                            mem[_2717 + 64] = 300
                            mem[_2717 + 96] = 1
                            if idx >= mem[_2399]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + _2399 + 32] = _2717
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor7[idx].field_1280
                            continue 
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        _2761 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2761] = stor7[idx].field_1024
                        mem[0] = 7
                        mem[_2761 + 32] = stor7[idx].field_0
                        mem[_2761 + 64] = 300
                        mem[_2761 + 96] = 1
                        if idx >= mem[_2399]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2399 + 32] = _2761
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1024
                    continue 
                _2674 = mem[64]
                mem[mem[64]] = stor4
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _2859 = mem[_2399]
                mem[mem[64] + 96] = mem[_2399]
                idx = 0
                s = _2399 + 32
                t = mem[64] + 128
                while idx < _2859:
                    _2934 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2934 + 44 len 20]
                    mem[t + 64] = mem[_2934 + 64]
                    mem[t + 96] = mem[_2934 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _2674 + (128 * _2859) + -mem[64] + 128
            mem[64] = _2399 + (32 * stor7.length) + 160
            mem[_2399 + (32 * stor7.length) + 32] = 0
            mem[_2399 + (32 * stor7.length) + 64] = 0
            mem[_2399 + (32 * stor7.length) + 96] = 0
            mem[_2399 + (32 * stor7.length) + 128] = 0
            mem[var135001] = _2399 + (32 * stor7.length) + 32
            s = var135001
            idx = var135002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[_2399 + (32 * stor7.length) + 32] = 0
                mem[_2399 + (32 * stor7.length) + 64] = 0
                mem[_2399 + (32 * stor7.length) + 96] = 0
                mem[_2399 + (32 * stor7.length) + 128] = 0
                mem[s + 32] = _2399 + (32 * stor7.length) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _3114 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3114] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_3114 + 32] = stor7[idx].field_0
                        mem[_3114 + 64] = 300
                        mem[_3114 + 96] = 1
                        if idx >= mem[_2399]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2399 + 32] = _3114
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3140 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3140] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_3140 + 32] = stor7[idx].field_0
                    mem[_3140 + 64] = 300
                    mem[_3140 + 96] = 1
                    if idx >= mem[_2399]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2399 + 32] = _3140
                else:
                    if address(s) != stor7[idx].field_1280:
                        _3141 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3141] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_3141 + 32] = stor7[idx].field_0
                        mem[_3141 + 64] = 300
                        mem[_3141 + 96] = 1
                        if idx >= mem[_2399]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2399 + 32] = _3141
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _3174 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3174] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_3174 + 32] = stor7[idx].field_0
                    mem[_3174 + 64] = 300
                    mem[_3174 + 96] = 1
                    if idx >= mem[_2399]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2399 + 32] = _3174
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _3099 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _3189 = mem[_2399]
            mem[mem[64] + 96] = mem[_2399]
            idx = 0
            s = _2399 + 32
            t = mem[64] + 128
            while idx < _3189:
                _3224 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3224 + 44 len 20]
                mem[t + 64] = mem[_3224 + 64]
                mem[t + 96] = mem[_3224 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _3099 + (128 * _3189) + -mem[64] + 128
        if 1 >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        require address(stor7.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        _2408 = mem[64]
        mem[mem[64]] = stor7.length
        mem[64] = mem[64] + (32 * stor7.length) + 32
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _2690 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2690] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_2690 + 32] = stor7[idx].field_0
                        mem[_2690 + 64] = 300
                        mem[_2690 + 96] = 1
                        if idx >= mem[_2408]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2408 + 32] = _2690
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _2719 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2719] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_2719 + 32] = stor7[idx].field_0
                    mem[_2719 + 64] = 300
                    mem[_2719 + 96] = 1
                    if idx >= mem[_2408]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2408 + 32] = _2719
                else:
                    if address(s) != stor7[idx].field_1280:
                        _2720 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2720] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_2720 + 32] = stor7[idx].field_0
                        mem[_2720 + 64] = 300
                        mem[_2720 + 96] = 1
                        if idx >= mem[_2408]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2408 + 32] = _2720
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _2764 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2764] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_2764 + 32] = stor7[idx].field_0
                    mem[_2764 + 64] = 300
                    mem[_2764 + 96] = 1
                    if idx >= mem[_2408]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2408 + 32] = _2764
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _2675 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2860 = mem[_2408]
            mem[mem[64] + 96] = mem[_2408]
            idx = 0
            s = _2408 + 32
            t = mem[64] + 128
            while idx < _2860:
                _2935 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2935 + 44 len 20]
                mem[t + 64] = mem[_2935 + 64]
                mem[t + 96] = mem[_2935 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2675 + (128 * _2860) + -mem[64] + 128
        mem[64] = _2408 + (32 * stor7.length) + 160
        mem[_2408 + (32 * stor7.length) + 32] = 0
        mem[_2408 + (32 * stor7.length) + 64] = 0
        mem[_2408 + (32 * stor7.length) + 96] = 0
        mem[_2408 + (32 * stor7.length) + 128] = 0
        mem[var137001] = _2408 + (32 * stor7.length) + 32
        s = var137001
        idx = var137002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2408 + (32 * stor7.length) + 32] = 0
            mem[_2408 + (32 * stor7.length) + 64] = 0
            mem[_2408 + (32 * stor7.length) + 96] = 0
            mem[_2408 + (32 * stor7.length) + 128] = 0
            mem[s + 32] = _2408 + (32 * stor7.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _3115 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3115] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_3115 + 32] = stor7[idx].field_0
                    mem[_3115 + 64] = 300
                    mem[_3115 + 96] = 1
                    if idx >= mem[_2408]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2408 + 32] = _3115
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3142 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3142] = stor7[idx].field_1024
                mem[0] = 7
                mem[_3142 + 32] = stor7[idx].field_0
                mem[_3142 + 64] = 300
                mem[_3142 + 96] = 1
                if idx >= mem[_2408]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2408 + 32] = _3142
            else:
                if address(s) != stor7[idx].field_1280:
                    _3143 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3143] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_3143 + 32] = stor7[idx].field_0
                    mem[_3143 + 64] = 300
                    mem[_3143 + 96] = 1
                    if idx >= mem[_2408]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2408 + 32] = _3143
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3175 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3175] = stor7[idx].field_1024
                mem[0] = 7
                mem[_3175 + 32] = stor7[idx].field_0
                mem[_3175 + 64] = 300
                mem[_3175 + 96] = 1
                if idx >= mem[_2408]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2408 + 32] = _3175
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _3100 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3190 = mem[_2408]
        mem[mem[64] + 96] = mem[_2408]
        idx = 0
        s = _2408 + 32
        t = mem[64] + 128
        while idx < _3190:
            _3225 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3225 + 44 len 20]
            mem[t + 64] = mem[_3225 + 64]
            mem[t + 96] = mem[_3225 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3100 + (128 * _3190) + -mem[64] + 128
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    require address(stor7.field_1536) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    if address(stor7.field_0) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor7.length > test266151307():
            revert with 'NH{q', 65
        _2409 = mem[64]
        mem[mem[64]] = stor7.length
        mem[64] = mem[64] + (32 * stor7.length) + 32
        if not stor7.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor7.length:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                if address(s) != stor7[idx].field_1024:
                    if address(s) != stor7[idx].field_1280:
                        _2691 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2691] = 0
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_2691 + 32] = stor7[idx].field_0
                        mem[_2691 + 64] = 300
                        mem[_2691 + 96] = 1
                        if idx >= mem[_2409]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2409 + 32] = _2691
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _2722 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2722] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_2722 + 32] = stor7[idx].field_0
                    mem[_2722 + 64] = 300
                    mem[_2722 + 96] = 1
                    if idx >= mem[_2409]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2409 + 32] = _2722
                else:
                    if address(s) != stor7[idx].field_1280:
                        _2723 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2723] = stor7[idx].field_1280
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        mem[_2723 + 32] = stor7[idx].field_0
                        mem[_2723 + 64] = 300
                        mem[_2723 + 96] = 1
                        if idx >= mem[_2409]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _2409 + 32] = _2723
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor7[idx].field_1280
                        continue 
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    _2767 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2767] = stor7[idx].field_1024
                    mem[0] = 7
                    mem[_2767 + 32] = stor7[idx].field_0
                    mem[_2767 + 64] = 300
                    mem[_2767 + 96] = 1
                    if idx >= mem[_2409]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2409 + 32] = _2767
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor7[idx].field_1024
                continue 
            _2676 = mem[64]
            mem[mem[64]] = stor4
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _2861 = mem[_2409]
            mem[mem[64] + 96] = mem[_2409]
            idx = 0
            s = _2409 + 32
            t = mem[64] + 128
            while idx < _2861:
                _2936 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2936 + 44 len 20]
                mem[t + 64] = mem[_2936 + 64]
                mem[t + 96] = mem[_2936 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2676 + (128 * _2861) + -mem[64] + 128
        mem[64] = _2409 + (32 * stor7.length) + 160
        mem[_2409 + (32 * stor7.length) + 32] = 0
        mem[_2409 + (32 * stor7.length) + 64] = 0
        mem[_2409 + (32 * stor7.length) + 96] = 0
        mem[_2409 + (32 * stor7.length) + 128] = 0
        mem[var137001] = _2409 + (32 * stor7.length) + 32
        s = var137001
        idx = var137002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_2409 + (32 * stor7.length) + 32] = 0
            mem[_2409 + (32 * stor7.length) + 64] = 0
            mem[_2409 + (32 * stor7.length) + 96] = 0
            mem[_2409 + (32 * stor7.length) + 128] = 0
            mem[s + 32] = _2409 + (32 * stor7.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _3116 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3116] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_3116 + 32] = stor7[idx].field_0
                    mem[_3116 + 64] = 300
                    mem[_3116 + 96] = 1
                    if idx >= mem[_2409]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2409 + 32] = _3116
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3144 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3144] = stor7[idx].field_1024
                mem[0] = 7
                mem[_3144 + 32] = stor7[idx].field_0
                mem[_3144 + 64] = 300
                mem[_3144 + 96] = 1
                if idx >= mem[_2409]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2409 + 32] = _3144
            else:
                if address(s) != stor7[idx].field_1280:
                    _3145 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3145] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_3145 + 32] = stor7[idx].field_0
                    mem[_3145 + 64] = 300
                    mem[_3145 + 96] = 1
                    if idx >= mem[_2409]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2409 + 32] = _3145
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _3176 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3176] = stor7[idx].field_1024
                mem[0] = 7
                mem[_3176 + 32] = stor7[idx].field_0
                mem[_3176 + 64] = 300
                mem[_3176 + 96] = 1
                if idx >= mem[_2409]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2409 + 32] = _3176
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _3101 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _3191 = mem[_2409]
        mem[mem[64] + 96] = mem[_2409]
        idx = 0
        s = _2409 + 32
        t = mem[64] + 128
        while idx < _3191:
            _3226 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3226 + 44 len 20]
            mem[t + 64] = mem[_3226 + 64]
            mem[t + 96] = mem[_3226 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _3101 + (128 * _3191) + -mem[64] + 128
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    require address(stor7.field_1536) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor7.length > test266151307():
        revert with 'NH{q', 65
    _2421 = mem[64]
    mem[mem[64]] = stor7.length
    mem[64] = mem[64] + (32 * stor7.length) + 32
    if not stor7.length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if address(s) != stor7[idx].field_1024:
                if address(s) != stor7[idx].field_1280:
                    _2692 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2692] = 0
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_2692 + 32] = stor7[idx].field_0
                    mem[_2692 + 64] = 300
                    mem[_2692 + 96] = 1
                    if idx >= mem[_2421]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2421 + 32] = _2692
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _2725 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2725] = stor7[idx].field_1024
                mem[0] = 7
                mem[_2725 + 32] = stor7[idx].field_0
                mem[_2725 + 64] = 300
                mem[_2725 + 96] = 1
                if idx >= mem[_2421]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2421 + 32] = _2725
            else:
                if address(s) != stor7[idx].field_1280:
                    _2726 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2726] = stor7[idx].field_1280
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = 7
                    mem[_2726 + 32] = stor7[idx].field_0
                    mem[_2726 + 64] = 300
                    mem[_2726 + 96] = 1
                    if idx >= mem[_2421]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _2421 + 32] = _2726
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor7[idx].field_1280
                    continue 
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                _2770 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2770] = stor7[idx].field_1024
                mem[0] = 7
                mem[_2770 + 32] = stor7[idx].field_0
                mem[_2770 + 64] = 300
                mem[_2770 + 96] = 1
                if idx >= mem[_2421]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _2421 + 32] = _2770
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor7[idx].field_1024
            continue 
        _2677 = mem[64]
        mem[mem[64]] = stor4
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _2862 = mem[_2421]
        mem[mem[64] + 96] = mem[_2421]
        idx = 0
        s = _2421 + 32
        t = mem[64] + 128
        while idx < _2862:
            _2937 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2937 + 44 len 20]
            mem[t + 64] = mem[_2937 + 64]
            mem[t + 96] = mem[_2937 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2677 + (128 * _2862) + -mem[64] + 128
    mem[64] = _2421 + (32 * stor7.length) + 160
    mem[_2421 + (32 * stor7.length) + 32] = 0
    mem[_2421 + (32 * stor7.length) + 64] = 0
    mem[_2421 + (32 * stor7.length) + 96] = 0
    mem[_2421 + (32 * stor7.length) + 128] = 0
    mem[var139001] = _2421 + (32 * stor7.length) + 32
    u = var139001
    t = var139002
    while t - 1:
        mem[64] = mem[64] + 128
        mem[_2421 + (32 * stor7.length) + 32] = 0
        mem[_2421 + (32 * stor7.length) + 64] = 0
        mem[_2421 + (32 * stor7.length) + 96] = 0
        mem[_2421 + (32 * stor7.length) + 128] = 0
        mem[u + 32] = _2421 + (32 * stor7.length) + 32
        u = u + 32
        t = t - 1
        continue 
    t = 0
    u = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    while t < stor7.length:
        if t >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if address(u) != stor7[t].field_1024:
            if address(u) != stor7[t].field_1280:
                _3117 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3117] = 0
                if t >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[_3117 + 32] = stor7[t].field_0
                mem[_3117 + 64] = 300
                mem[_3117 + 96] = 1
                if t >= mem[_2421]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _2421 + 32] = _3117
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = 0
                continue 
            if t >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _3146 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3146] = stor7[t].field_1024
            mem[0] = 7
            mem[_3146 + 32] = stor7[t].field_0
            mem[_3146 + 64] = 300
            mem[_3146 + 96] = 1
            if t >= mem[_2421]:
                revert with 'NH{q', 50
            mem[(32 * t) + _2421 + 32] = _3146
        else:
            if address(u) != stor7[t].field_1280:
                _3147 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3147] = stor7[t].field_1280
                if t >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = 7
                mem[_3147 + 32] = stor7[t].field_0
                mem[_3147 + 64] = 300
                mem[_3147 + 96] = 1
                if t >= mem[_2421]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _2421 + 32] = _3147
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor7[t].field_1280
                continue 
            if t >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            _3177 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3177] = stor7[t].field_1024
            mem[0] = 7
            mem[_3177 + 32] = stor7[t].field_0
            mem[_3177 + 64] = 300
            mem[_3177 + 96] = 1
            if t >= mem[_2421]:
                revert with 'NH{q', 50
            mem[(32 * t) + _2421 + 32] = _3177
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        u = stor7[t].field_1024
        continue 
    _3102 = mem[64]
    mem[mem[64]] = stor4
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _3192 = mem[_2421]
    mem[mem[64] + 96] = mem[_2421]
    idx = 0
    s = _2421 + 32
    t = mem[64] + 128
    while idx < _3192:
        _3227 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_3227 + 44 len 20]
        mem[t + 64] = mem[_3227 + 64]
        mem[t + 96] = mem[_3227 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _3102 + (128 * _3192) + -mem[64] + 128
}



}
