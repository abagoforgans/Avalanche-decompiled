contract main {




// =====================  Runtime code  =====================


address sub_26498753Address;

function sub_26498753(?) payable {
    return sub_26498753Address
}

function _fallback() payable {
    revert
}

function createNode(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(sub_26498753Address)
    call sub_26498753Address.0x12b8603f with:
         gas gas_remaining wei
        args address(arg1), 64, arg2.length, arg2[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c1c7597b(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _10 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_10] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_10 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_10 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _10
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    idx = 0
    while idx < cd[68]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _19 = mem[(32 * idx) + 128]
        _20 = mem[64]
        mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = 64
        _21 = mem[_19]
        mem[mem[64] + 68] = mem[_19]
        s = 0
        while s < _21:
            mem[mem[64] + s + 100] = mem[_19 + s + 32]
            s = s + 32
            continue 
        if ceil32(_21) > _21:
            mem[_20 + _21 + 100] = 0
        require ext_code.size(sub_26498753Address)
        call sub_26498753Address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _20 + ceil32(_21) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
