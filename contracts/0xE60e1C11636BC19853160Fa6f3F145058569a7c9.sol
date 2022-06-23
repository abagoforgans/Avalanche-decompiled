contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b != msg.sender:
        if 0xdaac1dabc098ca1d5eded342d23f505f64321bfe != msg.sender:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b != msg.sender:
        if 0xdaac1dabc098ca1d5eded342d23f505f64321bfe != msg.sender:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b != msg.sender:
        if 0xdaac1dabc098ca1d5eded342d23f505f64321bfe != msg.sender:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
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
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
    if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg3) - 1:
        revert with 'NH{q', 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
        revert with 'NH{q', 18
    return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
}

function sub_ba9c47a8(?) payable {
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
    require cd[68] == cd[68]
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 36).length
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130
    if not ('cd', 36).length:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
        if var176003 < 1:
            revert with 'NH{q', 17
        if var180002 >= var180001:
            return Array(len=('cd', 36).length, data=mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length]), 
        if var182001 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if var184004 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var186005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(var192001))
        staticcall var194002.mem[var194003 len 4] with:
                gas gas_remaining wei
               args mem[var194003 + 4 len var194004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var198002 - var198001 >= 96
        # nil
    else:
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
        if var177003 < 1:
            revert with 'NH{q', 17
        if var181002 >= var181001:
            return Array(len=('cd', 36).length, data=mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length]), 
        if var183001 >= ('cd', 4).length:
            revert with 'NH{q', 50
        if var185004 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var187005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(var193001))
        staticcall var195002.mem[var195003 len 4] with:
                gas gas_remaining wei
               args mem[var195003 + 4 len var195004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var199002 - var199001 >= 96
        # nil
}

function sub_35b3a234(?) payable {
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
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if msg.sender == 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b:
        if ('cd', 36).length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 36).length
        mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130
        if not ('cd', 36).length:
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
            if var187003 < 1:
                revert with 'NH{q', 17
            if var191002 < var191001:
                if var193001 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if var195004 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if var197005 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var203001))
                staticcall var205002.mem[var205003 len 4] with:
                        gas gas_remaining wei
                       args mem[var205003 + 4 len var205004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var209002 - var209001 >= 96
                # nil
            else:
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if cd[100] >= mem[(32 * ('cd', 36).length - 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                    revert with 0, 'error'
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ext_code.size(mem[floor32(('cd', 4).length) + 141 len 20])
                call mem[floor32(('cd', 4).length) + 141 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(mem[128]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var225003 < 1:
                    revert with 'NH{q', 17
                if var229002 >= var229001:
                if var231001 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                # nil
        else:
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
            if var188003 < 1:
                revert with 'NH{q', 17
            if var192002 < var192001:
                if var194001 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if var196004 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if var198005 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var204001))
                staticcall var206002.mem[var206003 len 4] with:
                        gas gas_remaining wei
                       args mem[var206003 + 4 len var206004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var210002 - var210001 >= 96
                # nil
            else:
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if cd[100] >= mem[(32 * ('cd', 36).length - 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                    revert with 0, 'error'
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ext_code.size(mem[floor32(('cd', 4).length) + 141 len 20])
                call mem[floor32(('cd', 4).length) + 141 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(mem[128]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var226003 < 1:
                    revert with 'NH{q', 17
                if var230002 >= var230001:
                if var232001 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                # nil
    else:
        if msg.sender == 0xdaac1dabc098ca1d5eded342d23f505f64321bfe:
            if ('cd', 36).length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 36).length
            mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130
            if not ('cd', 36).length:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
                if var188003 < 1:
                    revert with 'NH{q', 17
                if var192002 < var192001:
                    if var194001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if var196004 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if var198005 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(var204001))
                    staticcall var206002.mem[var206003 len 4] with:
                            gas gas_remaining wei
                           args mem[var206003 + 4 len var206004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var210002 - var210001 >= 96
                    # nil
                else:
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if cd[100] >= mem[(32 * ('cd', 36).length - 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 0, 'error'
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[floor32(('cd', 4).length) + 141 len 20])
                    call mem[floor32(('cd', 4).length) + 141 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(mem[128]), cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if var226003 < 1:
                        revert with 'NH{q', 17
                    if var230002 >= var230001:
                    if var232001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    # nil
            else:
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
                if var189003 < 1:
                    revert with 'NH{q', 17
                if var193002 < var193001:
                    if var195001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if var197004 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if var199005 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(var205001))
                    staticcall var207002.mem[var207003 len 4] with:
                            gas gas_remaining wei
                           args mem[var207003 + 4 len var207004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var211002 - var211001 >= 96
                    # nil
                else:
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if cd[100] >= mem[(32 * ('cd', 36).length - 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 0, 'error'
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[floor32(('cd', 4).length) + 141 len 20])
                    call mem[floor32(('cd', 4).length) + 141 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(mem[128]), cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if var227003 < 1:
                        revert with 'NH{q', 17
                    if var231002 >= var231001:
                    if var233001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    # nil
        else:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
            if ('cd', 36).length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 36).length
            mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130
            if not ('cd', 36).length:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
                if var189003 < 1:
                    revert with 'NH{q', 17
                if var193002 < var193001:
                    if var195001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if var197004 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if var199005 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(var205001))
                    staticcall var207002.mem[var207003 len 4] with:
                            gas gas_remaining wei
                           args mem[var207003 + 4 len var207004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var211002 - var211001 >= 96
                    # nil
                else:
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if cd[100] >= mem[(32 * ('cd', 36).length - 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 0, 'error'
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[floor32(('cd', 4).length) + 141 len 20])
                    call mem[floor32(('cd', 4).length) + 141 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(mem[128]), cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if var227003 < 1:
                        revert with 'NH{q', 17
                    if var231002 >= var231001:
                    if var233001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    # nil
            else:
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = cd[68]
                if var190003 < 1:
                    revert with 'NH{q', 17
                if var194002 < var194001:
                    if var196001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if var198004 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if var200005 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(var206001))
                    staticcall var208002.mem[var208003 len 4] with:
                            gas gas_remaining wei
                           args mem[var208003 + 4 len var208004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var212002 - var212001 >= 96
                    # nil
                else:
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if cd[100] >= mem[(32 * ('cd', 36).length - 1) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                        revert with 0, 'error'
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[floor32(('cd', 4).length) + 141 len 20])
                    call mem[floor32(('cd', 4).length) + 141 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(mem[128]), cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if var228003 < 1:
                        revert with 'NH{q', 17
                    if var232002 >= var232001:
                    if var234001 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    # nil
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _399 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_399] == mem[_399 + 18 len 14]
                    _431 = mem[_399 + 32]
                    require mem[_399 + 32] == mem[_399 + 50 len 14]
                    _447 = mem[_399 + 64]
                    require mem[_399 + 64] == mem[_399 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_399 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _431)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_447)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _366 = mem[64]
                mem[mem[64]] = 96
                _398 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _398:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _398) + 128
                _518 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_366 + (32 * _398) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _366 + (32 * _398) + 160
                while idx < _518:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_366 + 64] = (32 * _398) + (32 * _518) + 160
                _566 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_366 + (32 * _398) + (32 * _518) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _366 + (32 * _398) + (32 * _518) + 192
                while idx < _566:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _366 + (32 * _398) + (32 * _518) + (32 * _566) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_401] == mem[_401 + 18 len 14]
                _433 = mem[_401 + 32]
                require mem[_401 + 32] == mem[_401 + 50 len 14]
                _449 = mem[_401 + 64]
                require mem[_401 + 64] == mem[_401 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_401 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _433)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_449)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _368 = mem[64]
            mem[mem[64]] = 96
            _400 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _400:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _400) + 128
            _519 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_368 + (32 * _400) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _368 + (32 * _400) + 160
            while idx < _519:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_368 + 64] = (32 * _400) + (32 * _519) + 160
            _567 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_368 + (32 * _400) + (32 * _519) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _368 + (32 * _400) + (32 * _519) + 192
            while idx < _567:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _368 + (32 * _400) + (32 * _519) + (32 * _567) + -mem[64] + 192
        mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_403] == mem[_403 + 18 len 14]
                _435 = mem[_403 + 32]
                require mem[_403 + 32] == mem[_403 + 50 len 14]
                _451 = mem[_403 + 64]
                require mem[_403 + 64] == mem[_403 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_403 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _435)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_451)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _370 = mem[64]
            mem[mem[64]] = 96
            _402 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _402:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _402) + 128
            _520 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_370 + (32 * _402) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _370 + (32 * _402) + 160
            while idx < _520:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_370 + 64] = (32 * _402) + (32 * _520) + 160
            _568 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_370 + (32 * _402) + (32 * _520) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _370 + (32 * _402) + (32 * _520) + 192
            while idx < _568:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _370 + (32 * _402) + (32 * _520) + (32 * _568) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _405 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_405] == mem[_405 + 18 len 14]
            _437 = mem[_405 + 32]
            require mem[_405 + 32] == mem[_405 + 50 len 14]
            _453 = mem[_405 + 64]
            require mem[_405 + 64] == mem[_405 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_405 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _437)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_453)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _372 = mem[64]
        mem[mem[64]] = 96
        _404 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _404:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _404) + 128
        _521 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_372 + (32 * _404) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _372 + (32 * _404) + 160
        while idx < _521:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_372 + 64] = (32 * _404) + (32 * _521) + 160
        _569 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_372 + (32 * _404) + (32 * _521) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _372 + (32 * _404) + (32 * _521) + 192
        while idx < _569:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _372 + (32 * _404) + (32 * _521) + (32 * _569) + -mem[64] + 192
    mem[floor32(arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_407] == mem[_407 + 18 len 14]
                _439 = mem[_407 + 32]
                require mem[_407 + 32] == mem[_407 + 50 len 14]
                _455 = mem[_407 + 64]
                require mem[_407 + 64] == mem[_407 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_407 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _439)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_455)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _374 = mem[64]
            mem[mem[64]] = 96
            _406 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _406:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _406) + 128
            _522 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_374 + (32 * _406) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _374 + (32 * _406) + 160
            while idx < _522:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_374 + 64] = (32 * _406) + (32 * _522) + 160
            _570 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_374 + (32 * _406) + (32 * _522) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _374 + (32 * _406) + (32 * _522) + 192
            while idx < _570:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _374 + (32 * _406) + (32 * _522) + (32 * _570) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_409] == mem[_409 + 18 len 14]
            _441 = mem[_409 + 32]
            require mem[_409 + 32] == mem[_409 + 50 len 14]
            _457 = mem[_409 + 64]
            require mem[_409 + 64] == mem[_409 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_409 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _441)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_457)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _376 = mem[64]
        mem[mem[64]] = 96
        _408 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _408:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _408) + 128
        _523 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_376 + (32 * _408) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _376 + (32 * _408) + 160
        while idx < _523:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_376 + 64] = (32 * _408) + (32 * _523) + 160
        _571 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_376 + (32 * _408) + (32 * _523) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _376 + (32 * _408) + (32 * _523) + 192
        while idx < _571:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _376 + (32 * _408) + (32 * _523) + (32 * _571) + -mem[64] + 192
    mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
    mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _411 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_411] == mem[_411 + 18 len 14]
            _443 = mem[_411 + 32]
            require mem[_411 + 32] == mem[_411 + 50 len 14]
            _459 = mem[_411 + 64]
            require mem[_411 + 64] == mem[_411 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_411 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _443)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_459)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _378 = mem[64]
        mem[mem[64]] = 96
        _410 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _410:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _410) + 128
        _524 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_378 + (32 * _410) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _378 + (32 * _410) + 160
        while idx < _524:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_378 + 64] = (32 * _410) + (32 * _524) + 160
        _572 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_378 + (32 * _410) + (32 * _524) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _378 + (32 * _410) + (32 * _524) + 192
        while idx < _572:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _378 + (32 * _410) + (32 * _524) + (32 * _572) + -mem[64] + 192
    mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _413 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_413] == mem[_413 + 18 len 14]
        _445 = mem[_413 + 32]
        require mem[_413 + 32] == mem[_413 + 50 len 14]
        _461 = mem[_413 + 64]
        require mem[_413 + 64] == mem[_413 + 92 len 4]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_413 + 18 len 14]
        if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _445)
        if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_461)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _380 = mem[64]
    mem[mem[64]] = 96
    _412 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 128
    while idx < _412:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _412) + 128
    _525 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
    mem[_380 + (32 * _412) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
    idx = 0
    s = floor32(arg1.length) + (32 * arg1.length) + 161
    t = _380 + (32 * _412) + 160
    while idx < _525:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_380 + 64] = (32 * _412) + (32 * _525) + 160
    _573 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
    mem[_380 + (32 * _412) + (32 * _525) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
    idx = 0
    s = floor32(arg1.length) + (64 * arg1.length) + 193
    t = _380 + (32 * _412) + (32 * _525) + 192
    while idx < _573:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _380 + (32 * _412) + (32 * _525) + (32 * _573) + -mem[64] + 192
}



}
