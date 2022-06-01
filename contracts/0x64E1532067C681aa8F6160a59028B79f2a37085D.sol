contract main {




// =====================  Runtime code  =====================


address managerAddress;
address manager2Address;
mapping of uint256 balances;
mapping of uint256 sub_11938639;

function sub_11938639(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_11938639[arg1]
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function manager() payable {
    return managerAddress
}

function manager2() payable {
    return manager2Address
}

function _fallback() payable {
    revert
}

function sub_8d4c435d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'insufficient balance'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    if msg.sender == managerAddress:
        if balances[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if balances[address(arg1)] + arg2 < balances[address(arg1)]:
            revert with 0, 'ds-math-add-overflow'
        balances[address(arg1)] += arg2
    else:
        if msg.sender == manager2Address:
            if sub_11938639[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if sub_11938639[address(arg1)] + arg2 < sub_11938639[address(arg1)]:
                revert with 0, 'ds-math-add-overflow'
            sub_11938639[address(arg1)] += arg2
}

function getSeed(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if managerAddress != msg.sender:
        if manager2Address != msg.sender:
            revert with 0, 'not authorized'
    if arg1 <= 0:
        revert with 0, 'amount must be greater than 0'
    if managerAddress != msg.sender:
        if sub_11938639[address(arg2)] < arg1:
            revert with 0, 'insufficient balance'
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'sending failed'
        if sub_11938639[address(arg2)] < arg1:
            revert with 'NH{q', 17
        if sub_11938639[address(arg2)] - arg1 > sub_11938639[address(arg2)]:
            revert with 0, 'ds-math-sub-underflow'
        sub_11938639[address(arg2)] -= arg1
    else:
        if balances[address(arg2)] < arg1:
            revert with 0, 'insufficient balance'
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'sending failed'
        if balances[address(arg2)] < arg1:
            revert with 'NH{q', 17
        if balances[address(arg2)] - arg1 > balances[address(arg2)]:
            revert with 0, 'ds-math-sub-underflow'
        balances[address(arg2)] -= arg1
}

function sub_78b27fef(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if managerAddress != msg.sender:
        if manager2Address != msg.sender:
            revert with 0, 'not authorized'
    if arg1 <= 0:
        revert with 0, 'amount must be greater than 0'
    if arg1 and 2 > -1 / arg1:
        revert with 'NH{q', 17
    if uint255(arg1) != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if 2 * arg1 > -balances[address(arg2)] - 1:
        revert with 'NH{q', 17
    if (2 * arg1) + balances[address(arg2)] < 2 * arg1:
        revert with 0, 'ds-math-add-overflow'
    if (2 * arg1) + balances[address(arg2)] > -sub_11938639[address(arg2)] - 1:
        revert with 'NH{q', 17
    if sub_11938639[address(arg2)] < 0:
        revert with 0, 'ds-math-add-overflow'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < (2 * arg1) + balances[address(arg2)] + sub_11938639[address(arg2)]:
        revert with 0, 'insufficient balance'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args managerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args manager2Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'sending failed'
    if not ext_call.return_data[0]:
        revert with 0, 'sending failed'
}

function sub_773ec598(?) payable {
    require calldata.size - 4 >= 128
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
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
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    if ('cd', 4).length > -2:
        revert with 'NH{q', 17
    if ('cd', 4).length + 1 > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ('cd', 4).length + 1
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 4).length + 1) + 131
    if not ('cd', 4).length + 1:
        if 0 >= ('cd', 4).length + 1:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = cd[100]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _2625 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx >= mem[96] - 1:
                if 0 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _2643 = mem[floor32(('cd', 4).length) + 129]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_2649] == mem[_2649 + 18 len 14]
                require mem[_2649 + 32] == mem[_2649 + 50 len 14]
                require mem[_2649 + 64] == mem[_2649 + 92 len 4]
                if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                    revert with 'NH{q', 50
                if address(_2625) < address(_2643):
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        if mem[_2649 + 50 len 14]:
                            if False and mem[_2649 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_2649 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_2649 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_2649 + 18 len 14] and 1000 > -1 / mem[_2649 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2649 + 18 len 14] / 1000 != mem[_2649 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2649 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2649 + 18 len 14] < 1000 * mem[_2649 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 1000 * mem[_2649 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2649 + 18 len 14]
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_2649 + 50 len 14]:
                            if mem[_2649 + 18 len 14] and 1000 > -1 / mem[_2649 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2649 + 18 len 14] / 1000 != mem[_2649 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2649 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2649 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2649 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2649 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2649 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                        else:
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2649 + 50 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 'NH{q', 17
                            if not mem[_2649 + 50 len 14]:
                                revert with 'NH{q', 18
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2649 + 50 len 14] / mem[_2649 + 50 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_2649 + 18 len 14] and 1000 > -1 / mem[_2649 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2649 + 18 len 14] / 1000 != mem[_2649 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2649 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2649 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2649 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2649 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2649 + 50 len 14] / (1000 * mem[_2649 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                else:
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        if mem[_2649 + 18 len 14]:
                            if False and mem[_2649 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_2649 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_2649 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_2649 + 50 len 14] and 1000 > -1 / mem[_2649 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2649 + 50 len 14] / 1000 != mem[_2649 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2649 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2649 + 50 len 14] < 1000 * mem[_2649 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 1000 * mem[_2649 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2649 + 50 len 14]
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_2649 + 18 len 14]:
                            if mem[_2649 + 50 len 14] and 1000 > -1 / mem[_2649 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2649 + 50 len 14] / 1000 != mem[_2649 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2649 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2649 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2649 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2649 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2649 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                        else:
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2649 + 18 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 'NH{q', 17
                            if not mem[_2649 + 18 len 14]:
                                revert with 'NH{q', 18
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2649 + 18 len 14] / mem[_2649 + 18 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_2649 + 50 len 14] and 1000 > -1 / mem[_2649 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2649 + 50 len 14] / 1000 != mem[_2649 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2649 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2649 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2649 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2649 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2649 + 18 len 14] / (1000 * mem[_2649 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _2658 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_2666] == mem[_2666 + 18 len 14]
                require mem[_2666 + 32] == mem[_2666 + 50 len 14]
                require mem[_2666 + 64] == mem[_2666 + 92 len 4]
                if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                    revert with 'NH{q', 50
                if address(_2625) < address(_2658):
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        if mem[_2666 + 50 len 14]:
                            if False and mem[_2666 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_2666 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_2666 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_2666 + 18 len 14] and 1000 > -1 / mem[_2666 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2666 + 18 len 14] / 1000 != mem[_2666 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2666 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2666 + 18 len 14] < 1000 * mem[_2666 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 1000 * mem[_2666 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2666 + 18 len 14]
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_2666 + 50 len 14]:
                            if mem[_2666 + 18 len 14] and 1000 > -1 / mem[_2666 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2666 + 18 len 14] / 1000 != mem[_2666 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2666 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2666 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2666 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2666 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2666 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                        else:
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2666 + 50 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 'NH{q', 17
                            if not mem[_2666 + 50 len 14]:
                                revert with 'NH{q', 18
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2666 + 50 len 14] / mem[_2666 + 50 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_2666 + 18 len 14] and 1000 > -1 / mem[_2666 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2666 + 18 len 14] / 1000 != mem[_2666 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2666 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2666 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2666 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2666 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2666 + 50 len 14] / (1000 * mem[_2666 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                else:
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        if mem[_2666 + 18 len 14]:
                            if False and mem[_2666 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_2666 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_2666 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_2666 + 50 len 14] and 1000 > -1 / mem[_2666 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2666 + 50 len 14] / 1000 != mem[_2666 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2666 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2666 + 50 len 14] < 1000 * mem[_2666 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 1000 * mem[_2666 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2666 + 50 len 14]
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_2666 + 18 len 14]:
                            if mem[_2666 + 50 len 14] and 1000 > -1 / mem[_2666 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2666 + 50 len 14] / 1000 != mem[_2666 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2666 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2666 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2666 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2666 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2666 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                        else:
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2666 + 18 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 'NH{q', 17
                            if not mem[_2666 + 18 len 14]:
                                revert with 'NH{q', 18
                            if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2666 + 18 len 14] / mem[_2666 + 18 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_2666 + 50 len 14] and 1000 > -1 / mem[_2666 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * mem[_2666 + 50 len 14] / 1000 != mem[_2666 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[_2666 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[_2666 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2666 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[_2666 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2666 + 18 len 14] / (1000 * mem[_2666 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if mem[96] >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
            revert with 'NH{q', 50
        if mem[(32 * mem[96]) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] <= cd[100]:
            revert with 0, 'no good'
        if 0 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _2631 = mem[floor32(('cd', 4).length) + 129]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = cd[100]
        require ext_code.size(address(_2631))
        call address(_2631).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[100]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2657 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2657] == bool(mem[_2657])
        _3263 = mem[96]
        idx = 0
        while idx < _3263:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx >= mem[96] - 1:
                if 0 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] < mem[floor32(('cd', 4).length) + 141 len 20]:
                    _3291 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3327 = mem[(32 * idx) + 128]
                            _3335 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3335 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3335 + 36] = 0
                            mem[_3335 + 68] = _3291
                            mem[_3335 + 100] = this.address
                            mem[_3335 + 132] = 128
                            mem[_3335 + 164] = mem[_3335]
                            s = 0
                            while s < mem[_3335]:
                                mem[_3335 + s + 196] = mem[_3335 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3335]) > mem[_3335]:
                                mem[_3335 + mem[_3335] + 196] = 0
                            require ext_code.size(address(_3327))
                            call address(_3327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3291, address(this.address), 128, mem[_3335], mem[_3335 + 196 len ceil32(mem[_3335])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3363 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3395 = mem[(32 * idx) + 128]
                            _3411 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3411 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3411 + 36] = 0
                            mem[_3411 + 68] = _3291
                            mem[_3411 + 100] = address(_3363)
                            mem[_3411 + 132] = 128
                            mem[_3411 + 164] = mem[_3411]
                            s = 0
                            while s < mem[_3411]:
                                mem[_3411 + s + 196] = mem[_3411 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3411]) > mem[_3411]:
                                mem[_3411 + mem[_3411] + 196] = 0
                            require ext_code.size(address(_3395))
                            call address(_3395).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3291, address(_3363), 128, mem[_3411], mem[_3411 + 196 len ceil32(mem[_3411])]
                    else:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3328 = mem[(32 * idx) + 128]
                            _3336 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3336 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3336 + 36] = _3291
                            mem[_3336 + 68] = 0
                            mem[_3336 + 100] = this.address
                            mem[_3336 + 132] = 128
                            mem[_3336 + 164] = mem[_3336]
                            s = 0
                            while s < mem[_3336]:
                                mem[_3336 + s + 196] = mem[_3336 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3336]) > mem[_3336]:
                                mem[_3336 + mem[_3336] + 196] = 0
                            require ext_code.size(address(_3328))
                            call address(_3328).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3291, 0, address(this.address), 128, mem[_3336], mem[_3336 + 196 len ceil32(mem[_3336])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3364 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3396 = mem[(32 * idx) + 128]
                            _3412 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3412 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3412 + 36] = _3291
                            mem[_3412 + 68] = 0
                            mem[_3412 + 100] = address(_3364)
                            mem[_3412 + 132] = 128
                            mem[_3412 + 164] = mem[_3412]
                            s = 0
                            while s < mem[_3412]:
                                mem[_3412 + s + 196] = mem[_3412 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3412]) > mem[_3412]:
                                mem[_3412 + mem[_3412] + 196] = 0
                            require ext_code.size(address(_3396))
                            call address(_3396).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3291, 0, address(_3364), 128, mem[_3412], mem[_3412 + 196 len ceil32(mem[_3412])]
                else:
                    _3292 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[floor32(('cd', 4).length) + 141 len 20]:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3329 = mem[(32 * idx) + 128]
                            _3337 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3337 + 36] = 0
                            mem[_3337 + 68] = _3292
                            mem[_3337 + 100] = this.address
                            mem[_3337 + 132] = 128
                            mem[_3337 + 164] = mem[_3337]
                            s = 0
                            while s < mem[_3337]:
                                mem[_3337 + s + 196] = mem[_3337 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3337]) > mem[_3337]:
                                mem[_3337 + mem[_3337] + 196] = 0
                            require ext_code.size(address(_3329))
                            call address(_3329).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3292, address(this.address), 128, mem[_3337], mem[_3337 + 196 len ceil32(mem[_3337])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3365 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3397 = mem[(32 * idx) + 128]
                            _3413 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3413 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3413 + 36] = 0
                            mem[_3413 + 68] = _3292
                            mem[_3413 + 100] = address(_3365)
                            mem[_3413 + 132] = 128
                            mem[_3413 + 164] = mem[_3413]
                            s = 0
                            while s < mem[_3413]:
                                mem[_3413 + s + 196] = mem[_3413 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3413]) > mem[_3413]:
                                mem[_3413 + mem[_3413] + 196] = 0
                            require ext_code.size(address(_3397))
                            call address(_3397).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3292, address(_3365), 128, mem[_3413], mem[_3413 + 196 len ceil32(mem[_3413])]
                    else:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3330 = mem[(32 * idx) + 128]
                            _3338 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3338 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3338 + 36] = _3292
                            mem[_3338 + 68] = 0
                            mem[_3338 + 100] = this.address
                            mem[_3338 + 132] = 128
                            mem[_3338 + 164] = mem[_3338]
                            s = 0
                            while s < mem[_3338]:
                                mem[_3338 + s + 196] = mem[_3338 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3338]) > mem[_3338]:
                                mem[_3338 + mem[_3338] + 196] = 0
                            require ext_code.size(address(_3330))
                            call address(_3330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3292, 0, address(this.address), 128, mem[_3338], mem[_3338 + 196 len ceil32(mem[_3338])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3366 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3398 = mem[(32 * idx) + 128]
                            _3414 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3414 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3414 + 36] = _3292
                            mem[_3414 + 68] = 0
                            mem[_3414 + 100] = address(_3366)
                            mem[_3414 + 132] = 128
                            mem[_3414 + 164] = mem[_3414]
                            s = 0
                            while s < mem[_3414]:
                                mem[_3414 + s + 196] = mem[_3414 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3414]) > mem[_3414]:
                                mem[_3414 + mem[_3414] + 196] = 0
                            require ext_code.size(address(_3398))
                            call address(_3398).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3292, 0, address(_3366), 128, mem[_3414], mem[_3414 + 196 len ceil32(mem[_3414])]
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] < mem[(32 * idx + 1) + floor32(('cd', 4).length) + 141 len 20]:
                    _3307 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3375 = mem[(32 * idx) + 128]
                            _3391 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3391 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3391 + 36] = 0
                            mem[_3391 + 68] = _3307
                            mem[_3391 + 100] = this.address
                            mem[_3391 + 132] = 128
                            mem[_3391 + 164] = mem[_3391]
                            s = 0
                            while s < mem[_3391]:
                                mem[_3391 + s + 196] = mem[_3391 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3391]) > mem[_3391]:
                                mem[_3391 + mem[_3391] + 196] = 0
                            require ext_code.size(address(_3375))
                            call address(_3375).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3307, address(this.address), 128, mem[_3391], mem[_3391 + 196 len ceil32(mem[_3391])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3439 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3455 = mem[(32 * idx) + 128]
                            _3463 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3463 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3463 + 36] = 0
                            mem[_3463 + 68] = _3307
                            mem[_3463 + 100] = address(_3439)
                            mem[_3463 + 132] = 128
                            mem[_3463 + 164] = mem[_3463]
                            s = 0
                            while s < mem[_3463]:
                                mem[_3463 + s + 196] = mem[_3463 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3463]) > mem[_3463]:
                                mem[_3463 + mem[_3463] + 196] = 0
                            require ext_code.size(address(_3455))
                            call address(_3455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3307, address(_3439), 128, mem[_3463], mem[_3463 + 196 len ceil32(mem[_3463])]
                    else:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3376 = mem[(32 * idx) + 128]
                            _3392 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3392 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3392 + 36] = _3307
                            mem[_3392 + 68] = 0
                            mem[_3392 + 100] = this.address
                            mem[_3392 + 132] = 128
                            mem[_3392 + 164] = mem[_3392]
                            s = 0
                            while s < mem[_3392]:
                                mem[_3392 + s + 196] = mem[_3392 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3392]) > mem[_3392]:
                                mem[_3392 + mem[_3392] + 196] = 0
                            require ext_code.size(address(_3376))
                            call address(_3376).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3307, 0, address(this.address), 128, mem[_3392], mem[_3392 + 196 len ceil32(mem[_3392])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3440 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3456 = mem[(32 * idx) + 128]
                            _3464 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3464 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3464 + 36] = _3307
                            mem[_3464 + 68] = 0
                            mem[_3464 + 100] = address(_3440)
                            mem[_3464 + 132] = 128
                            mem[_3464 + 164] = mem[_3464]
                            s = 0
                            while s < mem[_3464]:
                                mem[_3464 + s + 196] = mem[_3464 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3464]) > mem[_3464]:
                                mem[_3464 + mem[_3464] + 196] = 0
                            require ext_code.size(address(_3456))
                            call address(_3456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3307, 0, address(_3440), 128, mem[_3464], mem[_3464 + 196 len ceil32(mem[_3464])]
                else:
                    _3308 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[(32 * idx + 1) + floor32(('cd', 4).length) + 141 len 20]:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3377 = mem[(32 * idx) + 128]
                            _3393 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3393 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3393 + 36] = 0
                            mem[_3393 + 68] = _3308
                            mem[_3393 + 100] = this.address
                            mem[_3393 + 132] = 128
                            mem[_3393 + 164] = mem[_3393]
                            s = 0
                            while s < mem[_3393]:
                                mem[_3393 + s + 196] = mem[_3393 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3393]) > mem[_3393]:
                                mem[_3393 + mem[_3393] + 196] = 0
                            require ext_code.size(address(_3377))
                            call address(_3377).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3308, address(this.address), 128, mem[_3393], mem[_3393 + 196 len ceil32(mem[_3393])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3441 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3457 = mem[(32 * idx) + 128]
                            _3465 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3465 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3465 + 36] = 0
                            mem[_3465 + 68] = _3308
                            mem[_3465 + 100] = address(_3441)
                            mem[_3465 + 132] = 128
                            mem[_3465 + 164] = mem[_3465]
                            s = 0
                            while s < mem[_3465]:
                                mem[_3465 + s + 196] = mem[_3465 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3465]) > mem[_3465]:
                                mem[_3465 + mem[_3465] + 196] = 0
                            require ext_code.size(address(_3457))
                            call address(_3457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3308, address(_3441), 128, mem[_3465], mem[_3465 + 196 len ceil32(mem[_3465])]
                    else:
                        if idx >= mem[96] - 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3378 = mem[(32 * idx) + 128]
                            _3394 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3394 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3394 + 36] = _3308
                            mem[_3394 + 68] = 0
                            mem[_3394 + 100] = this.address
                            mem[_3394 + 132] = 128
                            mem[_3394 + 164] = mem[_3394]
                            s = 0
                            while s < mem[_3394]:
                                mem[_3394 + s + 196] = mem[_3394 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3394]) > mem[_3394]:
                                mem[_3394 + mem[_3394] + 196] = 0
                            require ext_code.size(address(_3378))
                            call address(_3378).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3308, 0, address(this.address), 128, mem[_3394], mem[_3394 + 196 len ceil32(mem[_3394])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _3442 = mem[(32 * idx + 1) + 128]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _3458 = mem[(32 * idx) + 128]
                            _3466 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3466 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3466 + 36] = _3308
                            mem[_3466 + 68] = 0
                            mem[_3466 + 100] = address(_3442)
                            mem[_3466 + 132] = 128
                            mem[_3466 + 164] = mem[_3466]
                            s = 0
                            while s < mem[_3466]:
                                mem[_3466 + s + 196] = mem[_3466 + s + 32]
                                _3263 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3466]) > mem[_3466]:
                                mem[_3466 + mem[_3466] + 196] = 0
                            require ext_code.size(address(_3458))
                            call address(_3458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3308, 0, address(_3442), 128, mem[_3466], mem[_3466 + 196 len ceil32(mem[_3466])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            _3263 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _3273 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]
        mem[mem[64] + 64 len 32 * _3273] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 32 * _3273]
        return 32, mem[mem[64] + 32 len (32 * _3273) + 32]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 32 * ('cd', 4).length + 1] = call.data[calldata.size len 32 * ('cd', 4).length + 1]
    if 0 >= ('cd', 4).length + 1:
        revert with 'NH{q', 50
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = cd[100]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _2629 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if mem[96] < 1:
            revert with 'NH{q', 17
        if idx >= mem[96] - 1:
            if 0 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _2644 = mem[floor32(('cd', 4).length) + 129]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2650] == mem[_2650 + 18 len 14]
            require mem[_2650 + 32] == mem[_2650 + 50 len 14]
            require mem[_2650 + 64] == mem[_2650 + 92 len 4]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                revert with 'NH{q', 50
            if address(_2629) < address(_2644):
                if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                    if mem[_2650 + 50 len 14]:
                        if False and mem[_2650 + 50 len 14] > 0:
                            revert with 'NH{q', 17
                        if not mem[_2650 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 0 / mem[_2650 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                    if mem[_2650 + 18 len 14] and 1000 > -1 / mem[_2650 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2650 + 18 len 14] / 1000 != mem[_2650 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_2650 + 18 len 14] > -1:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2650 + 18 len 14] < 1000 * mem[_2650 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not 1000 * mem[_2650 + 18 len 14]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2650 + 18 len 14]
                else:
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 'NH{q', 18
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[_2650 + 50 len 14]:
                        if mem[_2650 + 18 len 14] and 1000 > -1 / mem[_2650 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2650 + 18 len 14] / 1000 != mem[_2650 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2650 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2650 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2650 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2650 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2650 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2650 + 50 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 17
                        if not mem[_2650 + 50 len 14]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2650 + 50 len 14] / mem[_2650 + 50 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_2650 + 18 len 14] and 1000 > -1 / mem[_2650 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2650 + 18 len 14] / 1000 != mem[_2650 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2650 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2650 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2650 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2650 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2650 + 50 len 14] / (1000 * mem[_2650 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
            else:
                if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                    if mem[_2650 + 18 len 14]:
                        if False and mem[_2650 + 18 len 14] > 0:
                            revert with 'NH{q', 17
                        if not mem[_2650 + 18 len 14]:
                            revert with 'NH{q', 18
                        if 0 / mem[_2650 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                    if mem[_2650 + 50 len 14] and 1000 > -1 / mem[_2650 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2650 + 50 len 14] / 1000 != mem[_2650 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_2650 + 50 len 14] > -1:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2650 + 50 len 14] < 1000 * mem[_2650 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not 1000 * mem[_2650 + 50 len 14]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2650 + 50 len 14]
                else:
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 'NH{q', 18
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[_2650 + 18 len 14]:
                        if mem[_2650 + 50 len 14] and 1000 > -1 / mem[_2650 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2650 + 50 len 14] / 1000 != mem[_2650 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2650 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2650 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2650 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2650 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2650 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2650 + 18 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 17
                        if not mem[_2650 + 18 len 14]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2650 + 18 len 14] / mem[_2650 + 18 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_2650 + 50 len 14] and 1000 > -1 / mem[_2650 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2650 + 50 len 14] / 1000 != mem[_2650 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2650 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2650 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2650 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2650 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2650 + 18 len 14] / (1000 * mem[_2650 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
        else:
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _2660 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + 129]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2668] == mem[_2668 + 18 len 14]
            require mem[_2668 + 32] == mem[_2668 + 50 len 14]
            require mem[_2668 + 64] == mem[_2668 + 92 len 4]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                revert with 'NH{q', 50
            if address(_2629) < address(_2660):
                if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                    if mem[_2668 + 50 len 14]:
                        if False and mem[_2668 + 50 len 14] > 0:
                            revert with 'NH{q', 17
                        if not mem[_2668 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 0 / mem[_2668 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                    if mem[_2668 + 18 len 14] and 1000 > -1 / mem[_2668 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2668 + 18 len 14] / 1000 != mem[_2668 + 18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_2668 + 18 len 14] > -1:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2668 + 18 len 14] < 1000 * mem[_2668 + 18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not 1000 * mem[_2668 + 18 len 14]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2668 + 18 len 14]
                else:
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 'NH{q', 18
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[_2668 + 50 len 14]:
                        if mem[_2668 + 18 len 14] and 1000 > -1 / mem[_2668 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2668 + 18 len 14] / 1000 != mem[_2668 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2668 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2668 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2668 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2668 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2668 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2668 + 50 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 17
                        if not mem[_2668 + 50 len 14]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2668 + 50 len 14] / mem[_2668 + 50 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_2668 + 18 len 14] and 1000 > -1 / mem[_2668 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2668 + 18 len 14] / 1000 != mem[_2668 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2668 + 18 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2668 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2668 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2668 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2668 + 50 len 14] / (1000 * mem[_2668 + 18 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
            else:
                if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                    if mem[_2668 + 18 len 14]:
                        if False and mem[_2668 + 18 len 14] > 0:
                            revert with 'NH{q', 17
                        if not mem[_2668 + 18 len 14]:
                            revert with 'NH{q', 18
                        if 0 / mem[_2668 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                    if mem[_2668 + 50 len 14] and 1000 > -1 / mem[_2668 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2668 + 50 len 14] / 1000 != mem[_2668 + 50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[_2668 + 50 len 14] > -1:
                        revert with 'NH{q', 17
                    if 1000 * mem[_2668 + 50 len 14] < 1000 * mem[_2668 + 50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not 1000 * mem[_2668 + 50 len 14]:
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / 1000 * mem[_2668 + 50 len 14]
                else:
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] and mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 'NH{q', 18
                    if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[_2668 + 18 len 14]:
                        if mem[_2668 + 50 len 14] and 1000 > -1 / mem[_2668 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2668 + 50 len 14] / 1000 != mem[_2668 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2668 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2668 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2668 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2668 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 0 / (1000 * mem[_2668 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
                    else:
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] and mem[_2668 + 18 len 14] > -1 / mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 'NH{q', 17
                        if not mem[_2668 + 18 len 14]:
                            revert with 'NH{q', 18
                        if mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2668 + 18 len 14] / mem[_2668 + 18 len 14] != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[_2668 + 50 len 14] and 1000 > -1 / mem[_2668 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_2668 + 50 len 14] / 1000 != mem[_2668 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[_2668 + 50 len 14] > (-1 * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[_2668 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]) < 1000 * mem[_2668 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[_2668 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] * mem[_2668 + 18 len 14] / (1000 * mem[_2668 + 50 len 14]) + (mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] * mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if mem[96] >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
        revert with 'NH{q', 50
    if mem[(32 * mem[96]) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] <= cd[100]:
        revert with 0, 'no good'
    if 0 >= mem[floor32(('cd', 4).length) + 97]:
        revert with 'NH{q', 50
    _2633 = mem[floor32(('cd', 4).length) + 129]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    mem[mem[64] + 4] = mem[140 len 20]
    mem[mem[64] + 36] = cd[100]
    require ext_code.size(address(_2633))
    call address(_2633).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], cd[100]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2659 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2659] == bool(mem[_2659])
    _3264 = mem[96]
    idx = 0
    while idx < _3264:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[96] < 1:
            revert with 'NH{q', 17
        if idx >= mem[96] - 1:
            if 0 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] < mem[floor32(('cd', 4).length) + 141 len 20]:
                _3293 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3331 = mem[(32 * idx) + 128]
                        _3339 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3339 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3339 + 36] = 0
                        mem[_3339 + 68] = _3293
                        mem[_3339 + 100] = this.address
                        mem[_3339 + 132] = 128
                        mem[_3339 + 164] = mem[_3339]
                        s = 0
                        while s < mem[_3339]:
                            mem[_3339 + s + 196] = mem[_3339 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3339]) > mem[_3339]:
                            mem[_3339 + mem[_3339] + 196] = 0
                        require ext_code.size(address(_3331))
                        call address(_3331).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3293, address(this.address), 128, mem[_3339], mem[_3339 + 196 len ceil32(mem[_3339])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3371 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3403 = mem[(32 * idx) + 128]
                        _3419 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3419 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3419 + 36] = 0
                        mem[_3419 + 68] = _3293
                        mem[_3419 + 100] = address(_3371)
                        mem[_3419 + 132] = 128
                        mem[_3419 + 164] = mem[_3419]
                        s = 0
                        while s < mem[_3419]:
                            mem[_3419 + s + 196] = mem[_3419 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3419]) > mem[_3419]:
                            mem[_3419 + mem[_3419] + 196] = 0
                        require ext_code.size(address(_3403))
                        call address(_3403).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3293, address(_3371), 128, mem[_3419], mem[_3419 + 196 len ceil32(mem[_3419])]
                else:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3332 = mem[(32 * idx) + 128]
                        _3340 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3340 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3340 + 36] = _3293
                        mem[_3340 + 68] = 0
                        mem[_3340 + 100] = this.address
                        mem[_3340 + 132] = 128
                        mem[_3340 + 164] = mem[_3340]
                        s = 0
                        while s < mem[_3340]:
                            mem[_3340 + s + 196] = mem[_3340 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3340]) > mem[_3340]:
                            mem[_3340 + mem[_3340] + 196] = 0
                        require ext_code.size(address(_3332))
                        call address(_3332).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3293, 0, address(this.address), 128, mem[_3340], mem[_3340 + 196 len ceil32(mem[_3340])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3372 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3404 = mem[(32 * idx) + 128]
                        _3420 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3420 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3420 + 36] = _3293
                        mem[_3420 + 68] = 0
                        mem[_3420 + 100] = address(_3372)
                        mem[_3420 + 132] = 128
                        mem[_3420 + 164] = mem[_3420]
                        s = 0
                        while s < mem[_3420]:
                            mem[_3420 + s + 196] = mem[_3420 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3420]) > mem[_3420]:
                            mem[_3420 + mem[_3420] + 196] = 0
                        require ext_code.size(address(_3404))
                        call address(_3404).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3293, 0, address(_3372), 128, mem[_3420], mem[_3420 + 196 len ceil32(mem[_3420])]
            else:
                _3294 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[floor32(('cd', 4).length) + 141 len 20]:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3333 = mem[(32 * idx) + 128]
                        _3341 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3341 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3341 + 36] = 0
                        mem[_3341 + 68] = _3294
                        mem[_3341 + 100] = this.address
                        mem[_3341 + 132] = 128
                        mem[_3341 + 164] = mem[_3341]
                        s = 0
                        while s < mem[_3341]:
                            mem[_3341 + s + 196] = mem[_3341 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3341]) > mem[_3341]:
                            mem[_3341 + mem[_3341] + 196] = 0
                        require ext_code.size(address(_3333))
                        call address(_3333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3294, address(this.address), 128, mem[_3341], mem[_3341 + 196 len ceil32(mem[_3341])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3373 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3405 = mem[(32 * idx) + 128]
                        _3421 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3421 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3421 + 36] = 0
                        mem[_3421 + 68] = _3294
                        mem[_3421 + 100] = address(_3373)
                        mem[_3421 + 132] = 128
                        mem[_3421 + 164] = mem[_3421]
                        s = 0
                        while s < mem[_3421]:
                            mem[_3421 + s + 196] = mem[_3421 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3421]) > mem[_3421]:
                            mem[_3421 + mem[_3421] + 196] = 0
                        require ext_code.size(address(_3405))
                        call address(_3405).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3294, address(_3373), 128, mem[_3421], mem[_3421 + 196 len ceil32(mem[_3421])]
                else:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3334 = mem[(32 * idx) + 128]
                        _3342 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3342 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3342 + 36] = _3294
                        mem[_3342 + 68] = 0
                        mem[_3342 + 100] = this.address
                        mem[_3342 + 132] = 128
                        mem[_3342 + 164] = mem[_3342]
                        s = 0
                        while s < mem[_3342]:
                            mem[_3342 + s + 196] = mem[_3342 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3342]) > mem[_3342]:
                            mem[_3342 + mem[_3342] + 196] = 0
                        require ext_code.size(address(_3334))
                        call address(_3334).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3294, 0, address(this.address), 128, mem[_3342], mem[_3342 + 196 len ceil32(mem[_3342])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3374 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3406 = mem[(32 * idx) + 128]
                        _3422 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3422 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3422 + 36] = _3294
                        mem[_3422 + 68] = 0
                        mem[_3422 + 100] = address(_3374)
                        mem[_3422 + 132] = 128
                        mem[_3422 + 164] = mem[_3422]
                        s = 0
                        while s < mem[_3422]:
                            mem[_3422 + s + 196] = mem[_3422 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3422]) > mem[_3422]:
                            mem[_3422 + mem[_3422] + 196] = 0
                        require ext_code.size(address(_3406))
                        call address(_3406).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3294, 0, address(_3374), 128, mem[_3422], mem[_3422 + 196 len ceil32(mem[_3422])]
        else:
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] < mem[(32 * idx + 1) + floor32(('cd', 4).length) + 141 len 20]:
                _3309 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3383 = mem[(32 * idx) + 128]
                        _3399 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3399 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3399 + 36] = 0
                        mem[_3399 + 68] = _3309
                        mem[_3399 + 100] = this.address
                        mem[_3399 + 132] = 128
                        mem[_3399 + 164] = mem[_3399]
                        s = 0
                        while s < mem[_3399]:
                            mem[_3399 + s + 196] = mem[_3399 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3399]) > mem[_3399]:
                            mem[_3399 + mem[_3399] + 196] = 0
                        require ext_code.size(address(_3383))
                        call address(_3383).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3309, address(this.address), 128, mem[_3399], mem[_3399 + 196 len ceil32(mem[_3399])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3443 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3459 = mem[(32 * idx) + 128]
                        _3467 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3467 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3467 + 36] = 0
                        mem[_3467 + 68] = _3309
                        mem[_3467 + 100] = address(_3443)
                        mem[_3467 + 132] = 128
                        mem[_3467 + 164] = mem[_3467]
                        s = 0
                        while s < mem[_3467]:
                            mem[_3467 + s + 196] = mem[_3467 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3467]) > mem[_3467]:
                            mem[_3467 + mem[_3467] + 196] = 0
                        require ext_code.size(address(_3459))
                        call address(_3459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3309, address(_3443), 128, mem[_3467], mem[_3467 + 196 len ceil32(mem[_3467])]
                else:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3384 = mem[(32 * idx) + 128]
                        _3400 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3400 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3400 + 36] = _3309
                        mem[_3400 + 68] = 0
                        mem[_3400 + 100] = this.address
                        mem[_3400 + 132] = 128
                        mem[_3400 + 164] = mem[_3400]
                        s = 0
                        while s < mem[_3400]:
                            mem[_3400 + s + 196] = mem[_3400 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3400]) > mem[_3400]:
                            mem[_3400 + mem[_3400] + 196] = 0
                        require ext_code.size(address(_3384))
                        call address(_3384).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3309, 0, address(this.address), 128, mem[_3400], mem[_3400 + 196 len ceil32(mem[_3400])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3444 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3460 = mem[(32 * idx) + 128]
                        _3468 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3468 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3468 + 36] = _3309
                        mem[_3468 + 68] = 0
                        mem[_3468 + 100] = address(_3444)
                        mem[_3468 + 132] = 128
                        mem[_3468 + 164] = mem[_3468]
                        s = 0
                        while s < mem[_3468]:
                            mem[_3468 + s + 196] = mem[_3468 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3468]) > mem[_3468]:
                            mem[_3468 + mem[_3468] + 196] = 0
                        require ext_code.size(address(_3460))
                        call address(_3460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3309, 0, address(_3444), 128, mem[_3468], mem[_3468 + 196 len ceil32(mem[_3468])]
            else:
                _3310 = mem[(32 * idx + 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] == mem[(32 * idx + 1) + floor32(('cd', 4).length) + 141 len 20]:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3385 = mem[(32 * idx) + 128]
                        _3401 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3401 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3401 + 36] = 0
                        mem[_3401 + 68] = _3310
                        mem[_3401 + 100] = this.address
                        mem[_3401 + 132] = 128
                        mem[_3401 + 164] = mem[_3401]
                        s = 0
                        while s < mem[_3401]:
                            mem[_3401 + s + 196] = mem[_3401 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3401]) > mem[_3401]:
                            mem[_3401 + mem[_3401] + 196] = 0
                        require ext_code.size(address(_3385))
                        call address(_3385).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3310, address(this.address), 128, mem[_3401], mem[_3401 + 196 len ceil32(mem[_3401])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3445 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3461 = mem[(32 * idx) + 128]
                        _3469 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3469 + 36] = 0
                        mem[_3469 + 68] = _3310
                        mem[_3469 + 100] = address(_3445)
                        mem[_3469 + 132] = 128
                        mem[_3469 + 164] = mem[_3469]
                        s = 0
                        while s < mem[_3469]:
                            mem[_3469 + s + 196] = mem[_3469 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3469]) > mem[_3469]:
                            mem[_3469 + mem[_3469] + 196] = 0
                        require ext_code.size(address(_3461))
                        call address(_3461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3310, address(_3445), 128, mem[_3469], mem[_3469 + 196 len ceil32(mem[_3469])]
                else:
                    if idx >= mem[96] - 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3386 = mem[(32 * idx) + 128]
                        _3402 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3402 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3402 + 36] = _3310
                        mem[_3402 + 68] = 0
                        mem[_3402 + 100] = this.address
                        mem[_3402 + 132] = 128
                        mem[_3402 + 164] = mem[_3402]
                        s = 0
                        while s < mem[_3402]:
                            mem[_3402 + s + 196] = mem[_3402 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3402]) > mem[_3402]:
                            mem[_3402 + mem[_3402] + 196] = 0
                        require ext_code.size(address(_3386))
                        call address(_3386).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3310, 0, address(this.address), 128, mem[_3402], mem[_3402 + 196 len ceil32(mem[_3402])]
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _3446 = mem[(32 * idx + 1) + 128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _3462 = mem[(32 * idx) + 128]
                        _3470 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3470 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3470 + 36] = _3310
                        mem[_3470 + 68] = 0
                        mem[_3470 + 100] = address(_3446)
                        mem[_3470 + 132] = 128
                        mem[_3470 + 164] = mem[_3470]
                        s = 0
                        while s < mem[_3470]:
                            mem[_3470 + s + 196] = mem[_3470 + s + 32]
                            _3264 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3470]) > mem[_3470]:
                            mem[_3470 + mem[_3470] + 196] = 0
                        require ext_code.size(address(_3462))
                        call address(_3462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3310, 0, address(_3446), 128, mem[_3470], mem[_3470 + 196 len ceil32(mem[_3470])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _3264 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _3274 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]
    mem[mem[64] + 64 len 32 * _3274] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 32 * _3274]
    return 32, mem[mem[64] + 32 len (32 * _3274) + 32]
}



}
