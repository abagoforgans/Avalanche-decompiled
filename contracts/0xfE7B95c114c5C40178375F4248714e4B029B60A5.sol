contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
mapping of address stor2;
mapping of uint256 stor3;

function operator() payable {
    return operatorAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperatorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new operator is the zero address'
    emit OperatorshipTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function sub_935dad59(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[68] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f594ef26(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
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
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if var157003 < 1:
        revert with 'NH{q', 17
    if var161002 >= var161001:
        return var161003
    if var163001 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if var165005 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if var177003 > -2:
        revert with 'NH{q', 17
    # nil
}

function sub_69f74959(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + 97
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _38 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x945d83ac00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = address(cd[68])
        mem[mem[64] + 100] = address(_38)
        require ext_code.size(stor2[mem[0]])
        call stor2[mem[0]].0x945d83ac with:
             gas gas_remaining wei
            args cd[4], address(cd[36]), address(cd[68]), address(_38)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_42] == mem[_42]
        require mem[_42 + 32] == mem[_42 + 44 len 20]
        if mem[_42] <= u:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_42 + 32]
        t = mem[(32 * idx) + 128]
        u = mem[_42]
        continue 
    return u, address(t), address(s)
}

function sub_03e571ec(?) payable {
    require calldata.size - 4 >= 160
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
        require cd[s] == address(cd[s])
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if ('cd', 68).length > -2:
        revert with 'NH{q', 17
    if ('cd', 36).length != ('cd', 68).length + 1:
        revert with 0, 'path = routers+1'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'routers = pools'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if stor3[mem[floor32(('cd', 36).length) + 141 len 20]]:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if stor3[mem[floor32(('cd', 36).length) + 141 len 20]] != 1:
            if var195003 < 1:
                revert with 'NH{q', 17
            if var199002 >= var199001:
                return var199003
            if var211003 < 2:
                revert with 'NH{q', 17
            # nil
        else:
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args stor2[mem[floor32(('cd', 36).length) + 141 len 20]], cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var222003 < 1:
                revert with 'NH{q', 17
            if var226002 >= var226001:
                return var226003
            if var238003 < 2:
                revert with 'NH{q', 17
            # nil
    else:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _614 = mem[128]
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20]
        require ext_code.size(address(_614))
        call address(_614).0xa9059cbb with:
             gas gas_remaining wei
            args mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103], cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if var219003 < 1:
            revert with 'NH{q', 17
        if var223002 >= var223001:
            return var223003
        if var235003 < 2:
            revert with 'NH{q', 17
        # nil
}

function sub_c1e6e23a(?) payable {
    require calldata.size - 4 >= 160
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
        require cd[s] == address(cd[s])
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if ('cd', 68).length > -2:
        revert with 'NH{q', 17
    if ('cd', 36).length != ('cd', 68).length + 1:
        revert with 0, 'path = routers+1'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'routers = pools'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if stor3[mem[floor32(('cd', 36).length) + 141 len 20]]:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if stor3[mem[floor32(('cd', 36).length) + 141 len 20]] != 1:
            if var195003 < 1:
                revert with 'NH{q', 17
            if var199002 >= var199001:
                return var199003
            if var211003 < 2:
                revert with 'NH{q', 17
            # nil
        else:
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args stor2[mem[floor32(('cd', 36).length) + 141 len 20]], cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var222003 < 1:
                revert with 'NH{q', 17
            if var226002 >= var226001:
                return var226003
            if var238003 < 2:
                revert with 'NH{q', 17
            # nil
    else:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _614 = mem[128]
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20]
        require ext_code.size(address(_614))
        call address(_614).0xa9059cbb with:
             gas gas_remaining wei
            args mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103], cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if var219003 < 1:
            revert with 'NH{q', 17
        if var223002 >= var223001:
            return var223003
        if var235003 < 2:
            revert with 'NH{q', 17
        # nil
}



}
