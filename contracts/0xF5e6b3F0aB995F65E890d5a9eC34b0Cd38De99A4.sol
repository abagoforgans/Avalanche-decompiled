contract main {




// =====================  Runtime code  =====================


#
#  - sub_61a3c740(?)
#  - sub_7c42eda3(?)
#
address owner;
mapping of uint256 stor1;
uint256 sub_88a7544d;

function sub_88a7544d(?) {
    return sub_88a7544d
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_6829a8b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 50
    if arg1 == 1:
        return 80
    if arg1 == 2:
        return 140
    if arg1 == 3:
        return 320
    if arg1 == 4:
        return 680
    if arg1 == 5:
        return 50
    if arg1 == 6:
        return 80
    if arg1 == 7:
        return 140
    if arg1 == 8:
        return 210
    if arg1 == 9:
        return 384
    if arg1 == 10:
        return 978
    if arg1 == 11:
        return 1078
    if arg1 != 12:
        return 0
    return 1278
}

function sub_65ff5e1e(?) {
    require calldata.size - 4 >= 96
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _701 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x9c4d7ad8 with:
                gas gas_remaining wei
               args _701
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _710 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _712 = mem[_710]
        require mem[_710] == mem[_710]
        if mem[_710] < 5:
            revert with 0, 'wrong troop type for soldiers'
        if mem[_710] > 12:
            revert with 0, 'wrong troop type for soldiers'
        mem[mem[64] + 4] = _701
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x6352211e with:
                gas gas_remaining wei
               args _701
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _723 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_723] == mem[_723 + 12 len 20]
        if mem[_723 + 12 len 20] != address(cd[68]):
            revert with 0, 'wrong owner'
        if not _712:
            if s > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 50
            continue 
        if _712 == 1:
            if s > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 80
            continue 
        if _712 == 2:
            if s > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 140
            continue 
        if _712 == 3:
            if s > -321:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 320
            continue 
        if _712 == 4:
            if s > -681:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 680
            continue 
        if _712 == 5:
            if s > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 50
            continue 
        if _712 == 6:
            if s > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 80
            continue 
        if _712 == 7:
            if s > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 140
            continue 
        if _712 == 8:
            if s > -211:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 210
            continue 
        if _712 == 9:
            if s > -385:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 384
            continue 
        if _712 == 10:
            if s > -979:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 978
            continue 
        if _712 == 11:
            if s > -1079:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1078
            continue 
        if _712 != 12:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -1279:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1278
        continue 
    _734 = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    t = s
    while idx < _734:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _737 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x9c4d7ad8 with:
                gas gas_remaining wei
               args _737
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _741 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _742 = mem[_741]
        require mem[_741] == mem[_741]
        if mem[_741] < 0:
            revert with 0, 'wrong troop type for spaceships'
        if mem[_741] > 4:
            revert with 0, 'wrong troop type for spaceships'
        mem[mem[64] + 4] = _737
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x6352211e with:
                gas gas_remaining wei
               args _737
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _748 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_748] == mem[_748 + 12 len 20]
        if mem[_748 + 12 len 20] != address(cd[68]):
            revert with 0, 'wrong owner2'
        if not _742:
            if t > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 50
            continue 
        if _742 == 1:
            if t > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 80
            continue 
        if _742 == 2:
            if t > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 140
            continue 
        if _742 == 3:
            if t > -321:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 320
            continue 
        if _742 == 4:
            if t > -681:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 680
            continue 
        if _742 == 5:
            if t > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 50
            continue 
        if _742 == 6:
            if t > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 80
            continue 
        if _742 == 7:
            if t > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 140
            continue 
        if _742 == 8:
            if t > -211:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 210
            continue 
        if _742 == 9:
            if t > -385:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 384
            continue 
        if _742 == 10:
            if t > -979:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 978
            continue 
        if _742 == 11:
            if t > -1079:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t + 1078
            continue 
        if _742 != 12:
            if t > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _734 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            t = t
            continue 
        if t > -1279:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _734 = mem[floor32(('cd', 4).length) + 97]
        idx = idx + 1
        t = t + 1278
        continue 
    return t
}

function sub_cee88f89(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = 32
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 4
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = 'game'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=4, data='game')
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 102] = cd[4]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
            gas gas_remaining wei
           args cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(cd[100]) != ext_call.return_data[12 len 20]:
        revert with 0, 'you are not the owner of this planet.'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _467 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x9c4d7ad8 with:
                gas gas_remaining wei
               args _467
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _477 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _479 = mem[_477]
        require mem[_477] == mem[_477]
        if mem[_477] < 5:
            revert with 0, 'wrong troop type for soldiers'
        if mem[_477] > 12:
            revert with 0, 'wrong troop type for soldiers'
        mem[mem[64] + 4] = _467
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x6352211e with:
                gas gas_remaining wei
               args _467
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _497 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_497] == mem[_497 + 12 len 20]
        if mem[_497 + 12 len 20] != address(cd[100]):
            revert with 0, 'wrong owner'
        if not _479:
            if s > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 50
            continue 
        if _479 == 1:
            if s > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 80
            continue 
        if _479 == 2:
            if s > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 140
            continue 
        if _479 == 3:
            if s > -321:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 320
            continue 
        if _479 == 4:
            if s > -681:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 680
            continue 
        if _479 == 5:
            if s > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 50
            continue 
        if _479 == 6:
            if s > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 80
            continue 
        if _479 == 7:
            if s > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 140
            continue 
        if _479 == 8:
            if s > -211:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 210
            continue 
        if _479 == 9:
            if s > -385:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 384
            continue 
        if _479 == 10:
            if s > -979:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 978
            continue 
        if _479 == 11:
            if s > -1079:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1078
            continue 
        if _479 != 12:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -1279:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1278
        continue 
    _548 = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    t = s
    while idx < _548:
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _551 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x9c4d7ad8 with:
                gas gas_remaining wei
               args _551
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _556 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _558 = mem[_556]
        require mem[_556] == mem[_556]
        if mem[_556] < 0:
            revert with 0, 'wrong troop type for spaceships'
        if mem[_556] > 4:
            revert with 0, 'wrong troop type for spaceships'
        mem[mem[64] + 4] = _551
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        staticcall 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.0x6352211e with:
                gas gas_remaining wei
               args _551
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _570 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_570] == mem[_570 + 12 len 20]
        if mem[_570 + 12 len 20] != address(cd[100]):
            revert with 0, 'wrong owner2'
        if not _558:
            if t > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 50
            continue 
        if _558 == 1:
            if t > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 80
            continue 
        if _558 == 2:
            if t > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 140
            continue 
        if _558 == 3:
            if t > -321:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 320
            continue 
        if _558 == 4:
            if t > -681:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 680
            continue 
        if _558 == 5:
            if t > -51:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 50
            continue 
        if _558 == 6:
            if t > -81:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 80
            continue 
        if _558 == 7:
            if t > -141:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 140
            continue 
        if _558 == 8:
            if t > -211:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 210
            continue 
        if _558 == 9:
            if t > -385:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 384
            continue 
        if _558 == 10:
            if t > -979:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 978
            continue 
        if _558 == 11:
            if t > -1079:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t + 1078
            continue 
        if _558 != 12:
            if t > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _548 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            t = t
            continue 
        if t > -1279:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _548 = mem[floor32(('cd', 36).length) + 97]
        idx = idx + 1
        t = t + 1278
        continue 
    _550 = mem[64]
    mem[64] = mem[64] + 64
    mem[_550] = 14
    mem[_550 + 32] = 'metadataSetter'
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = 14
    mem[mem[64] + 68] = 'metadataSetter'
    mem[mem[64] + 82] = 0
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'metadataSetter', 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _619 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _621 = mem[_619]
    require mem[_619] == mem[_619 + 12 len 20]
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 12
    mem[mem[64] + 100] = 'warzoneSolar'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[4], Array(len=12, data='warzoneSolar')
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _627 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _629 = mem[_627]
    require mem[_627] == mem[_627]
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 12
    mem[mem[64] + 100] = 'warzoneMetal'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[4], Array(len=12, data='warzoneMetal')
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _635 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _637 = mem[_635]
    require mem[_635] == mem[_635]
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 14
    mem[mem[64] + 100] = 'warzoneCrystal'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[4], Array(len=14, data='warzoneCrystal')
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _643 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _645 = mem[_643]
    require mem[_643] == mem[_643]
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 9
    mem[mem[64] + 100] = 'warzoneAP'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[4], Array(len=9, data='warzoneAP')
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _651 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_651] == mem[_651]
    if t > 0x2f394219248446baa23d2ec729af3d610607aa0167dd94ca:
        revert with 'NH{q', 17
    if _629 > (-100 * 10^18 * t) - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(_621))
    call address(_621).0x4e4f31ed with:
         gas gas_remaining wei
        args cd[4], Array(len=12, data='warzoneSolar'), _629 + (100 * 10^18 * t)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if t > 0x179ca10c9242235d511e976394d79eb08303d500b3eeca65:
        revert with 'NH{q', 17
    if _637 > (-200 * 10^18 * t) - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(_621))
    call address(_621).0x4e4f31ed with:
         gas gas_remaining wei
        args cd[4], Array(len=12, data='warzoneMetal'), _637 + (200 * 10^18 * t)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if t > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
        revert with 'NH{q', 17
    if _645 > (-10 * 10^18 * t) - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(_621))
    call address(_621).0x4e4f31ed with:
         gas gas_remaining wei
        args cd[4], Array(len=14, data='warzoneCrystal'), _645 + (10 * 10^18 * t)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_651] > -t - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(_621))
    call address(_621).0x4e4f31ed with:
         gas gas_remaining wei
        args cd[4], Array(len=9, data='warzoneAP'), mem[_651] + t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1[address(cd[100])] > -t - 1:
        revert with 'NH{q', 17
    stor1[address(cd[100])] += t
    emit 0xd1f1e531: address(cd[100]), cd[4], t
}



}
