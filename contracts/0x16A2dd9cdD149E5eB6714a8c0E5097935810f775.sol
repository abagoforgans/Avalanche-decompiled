contract main {




// =====================  Runtime code  =====================


const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
address stor1;
address stor2;
mapping of uint8 stor3;
array of struct stor4;

function sub_58eb6f0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[address(arg1)])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_0073e80a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return eth.balance(arg1)
}

function sub_1c981549(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'fuck you'
    stor1 = address(arg1)
    stor2 = stor1
}

function sub_251e8658(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'fuck you'
    if arg1 <= eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c65e3957(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function approve_erc20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'fuck you'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_27cd6680(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'fuck you'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ce4a356c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'fuck you'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a73cd347(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'fuck you'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    if arg2 <= ext_call.return_data[0]:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5ca6746d(?) {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = 128
        t = (32 * stor4.length) + 192
        while idx < stor4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_0fdb8e88(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'fuck you'
    stor4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor4[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function userDetails1(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[132] == cd[132]
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'no'
    mem[floor32(('cd', 100).length) + 97] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 100).length) + 101] = arg2
    mem[floor32(('cd', 100).length) + 133] = cd[68]
    mem[floor32(('cd', 100).length) + 165] = 160
    mem[floor32(('cd', 100).length) + 261] = ('cd', 100).length
    idx = 0
    s = 128
    t = floor32(('cd', 100).length) + 293
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 293 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_91ed1285(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[132] == cd[132]
    mem[0] = msg.sender
    mem[32] = 3
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'no'
    mem[floor32(('cd', 100).length) + 97] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 100).length) + 101] = cd[36]
    mem[floor32(('cd', 100).length) + 133] = cd[68]
    mem[floor32(('cd', 100).length) + 165] = 160
    mem[floor32(('cd', 100).length) + 261] = ('cd', 100).length
    idx = 0
    s = 128
    t = floor32(('cd', 100).length) + 293
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 100).length) + 197] = this.address
    mem[floor32(('cd', 100).length) + 229] = cd[132]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 293 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _29 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
    _30 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 100).length) + _29 + 129
    t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
    while idx < _30:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_611796bc(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'fuck you'
    if not stor4.length:
        if arg1 < stor4.length:
            idx = 0
            while idx < arg1:
                if idx >= stor4.length:
                    revert with 'NH{q', 50
                _17 = mem[(32 * idx) + 128]
                mem[(32 * stor4.length) + 128] = 0x69eb06d900000000000000000000000000000000000000000000000000000000
                mem[(32 * stor4.length) + 132] = address(arg2)
                mem[(32 * stor4.length) + 164] = address(arg3)
                mem[(32 * stor4.length) + 196] = arg4
                require ext_code.size(address(_17))
                call address(_17).0x69eb06d9 with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor4.length:
                if idx >= stor4.length:
                    revert with 'NH{q', 50
                _19 = mem[(32 * idx) + 128]
                mem[(32 * stor4.length) + 128] = 0x69eb06d900000000000000000000000000000000000000000000000000000000
                mem[(32 * stor4.length) + 132] = address(arg2)
                mem[(32 * stor4.length) + 164] = address(arg3)
                mem[(32 * stor4.length) + 196] = arg4
                require ext_code.size(address(_19))
                call address(_19).0x69eb06d9 with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[128] = address(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg1 < stor4.length:
            idx = 0
            while idx < arg1:
                if idx >= stor4.length:
                    revert with 'NH{q', 50
                _35 = mem[(32 * idx) + 128]
                mem[(32 * stor4.length) + 128] = 0x69eb06d900000000000000000000000000000000000000000000000000000000
                mem[(32 * stor4.length) + 132] = address(arg2)
                mem[(32 * stor4.length) + 164] = address(arg3)
                mem[(32 * stor4.length) + 196] = arg4
                require ext_code.size(address(_35))
                call address(_35).0x69eb06d9 with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor4.length:
                if idx >= stor4.length:
                    revert with 'NH{q', 50
                _37 = mem[(32 * idx) + 128]
                mem[(32 * stor4.length) + 128] = 0x69eb06d900000000000000000000000000000000000000000000000000000000
                mem[(32 * stor4.length) + 132] = address(arg2)
                mem[(32 * stor4.length) + 164] = address(arg3)
                mem[(32 * stor4.length) + 196] = arg4
                require ext_code.size(address(_37))
                call address(_37).0x69eb06d9 with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}

function sub_4541f2ea(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'fuck you'
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        if arg1 < stor4.length:
            idx = 0
            while idx < arg1:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _27 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_27] == bool(mem[_27])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor4.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_28] == bool(mem[_28])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[0] = 4
        mem[128] = address(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg1 < stor4.length:
            idx = 0
            while idx < arg1:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _53 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_53] == bool(mem[_53])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor4.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_54] == bool(mem[_54])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}

function sub_0ec28d2c(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'fuck you'
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        if arg1 < stor4.length:
            idx = 0
            s = 0
            while idx < arg1:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _37 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_37)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _43 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _45 = mem[_43]
                require mem[_43] == mem[_43]
                if mem[_43] > arg3:
                    if arg3 > 0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _51 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(_51))
                        call address(_51).0xb368e4b2 with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = arg3
                    continue 
                if mem[_43] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_43]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _53 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _45
                require ext_code.size(address(_53))
                call address(_53).0xb368e4b2 with:
                     gas gas_remaining wei
                    args address(arg2), _45
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _45
                continue 
        else:
            idx = 0
            s = 0
            while idx < stor4.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _39 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_39)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _46 = mem[_44]
                require mem[_44] == mem[_44]
                if mem[_44] > arg3:
                    if arg3 > 0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _55 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(_55))
                        call address(_55).0xb368e4b2 with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = arg3
                    continue 
                if mem[_44] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_44]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _57 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _46
                require ext_code.size(address(_57))
                call address(_57).0xb368e4b2 with:
                     gas gas_remaining wei
                    args address(arg2), _46
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _46
                continue 
    else:
        mem[0] = 4
        mem[128] = address(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg1 < stor4.length:
            idx = 0
            s = 0
            while idx < arg1:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _95 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_95)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _103 = mem[_101]
                require mem[_101] == mem[_101]
                if mem[_101] > arg3:
                    if arg3 > 0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _109 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(_109))
                        call address(_109).0xb368e4b2 with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = arg3
                    continue 
                if mem[_101] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_101]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _111 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _103
                require ext_code.size(address(_111))
                call address(_111).0xb368e4b2 with:
                     gas gas_remaining wei
                    args address(arg2), _103
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _103
                continue 
        else:
            idx = 0
            s = 0
            while idx < stor4.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _97 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_97)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _104 = mem[_102]
                require mem[_102] == mem[_102]
                if mem[_102] > arg3:
                    if arg3 > 0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _113 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = arg3
                        require ext_code.size(address(_113))
                        call address(_113).0xb368e4b2 with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = arg3
                    continue 
                if mem[_102] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_102]
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _115 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb368e4b200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _104
                require ext_code.size(address(_115))
                call address(_115).0xb368e4b2 with:
                     gas gas_remaining wei
                    args address(arg2), _104
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _104
                continue 
}

function sub_bd9d0df0(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[132] == cd[132]
    mem[0] = msg.sender
    mem[32] = 3
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'no'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    _50 = mem[128]
    mem[64] = floor32(('cd', 100).length) + (32 * stor4.length) + 129
    mem[floor32(('cd', 100).length) + 97] = stor4.length
    if not stor4.length:
        if cd[4] < stor4.length:
            idx = 0
            s = 0
            while idx < cd[4]:
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _94 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]
                require ext_code.size(address(_50))
                staticcall address(_50).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_94)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _102 = mem[_100]
                require mem[_100] == mem[_100]
                if mem[_100] <= cd[36]:
                    if mem[_100] <= 0:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_100]
                        continue 
                    if idx >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    _110 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                    mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _102
                    mem[mem[64] + 36] = cd[68]
                    mem[mem[64] + 68] = 128
                    _117 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 164
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = cd[132]
                    require ext_code.size(address(_110))
                    call address(_110).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _117) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _102
                    continue 
                if cd[36] > 0:
                    if idx >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    _108 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                    _109 = mem[64]
                    mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[36]
                    mem[mem[64] + 36] = cd[68]
                    mem[mem[64] + 68] = 128
                    _116 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 164
                    while s < _116:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_109 + 100] = cd[132]
                    require ext_code.size(address(_108))
                    call address(_108).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _109 + (32 * _116) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[36]
                continue 
        else:
            idx = 0
            s = 0
            while idx < stor4.length:
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _96 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]
                require ext_code.size(address(_50))
                staticcall address(_50).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_96)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _103 = mem[_101]
                require mem[_101] == mem[_101]
                if mem[_101] > cd[36]:
                    if cd[36] > 0:
                        if idx >= mem[floor32(('cd', 100).length) + 97]:
                            revert with 'NH{q', 50
                        _112 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                        mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[36]
                        mem[mem[64] + 36] = cd[68]
                        mem[mem[64] + 68] = 128
                        _118 = mem[96]
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = cd[132]
                        require ext_code.size(address(_112))
                        call address(_112).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _118) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = cd[36]
                    continue 
                if mem[_101] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_101]
                    continue 
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _114 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                _115 = mem[64]
                mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _103
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 128
                _119 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < _119:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_115 + 100] = cd[132]
                require ext_code.size(address(_114))
                call address(_114).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _115 + (32 * _119) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _103
                continue 
    else:
        mem[0] = 4
        mem[floor32(('cd', 100).length) + 129] = address(stor4.field_0)
        idx = floor32(('cd', 100).length) + 129
        s = 0
        while floor32(('cd', 100).length) + (32 * stor4.length) + 97 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if cd[4] < stor4.length:
            idx = 0
            s = 0
            while idx < cd[4]:
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _176 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]
                require ext_code.size(address(_50))
                staticcall address(_50).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_176)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _184 = mem[_182]
                require mem[_182] == mem[_182]
                if mem[_182] > cd[36]:
                    if cd[36] > 0:
                        if idx >= mem[floor32(('cd', 100).length) + 97]:
                            revert with 'NH{q', 50
                        _190 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                        _191 = mem[64]
                        mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[36]
                        mem[mem[64] + 36] = cd[68]
                        mem[mem[64] + 68] = 128
                        _198 = mem[96]
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < _198:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_191 + 100] = cd[132]
                        require ext_code.size(address(_190))
                        call address(_190).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _191 + (32 * _198) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = cd[36]
                    continue 
                if mem[_182] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_182]
                    continue 
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _192 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                _193 = mem[64]
                mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _184
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 128
                _199 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < _199:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_193 + 100] = cd[132]
                require ext_code.size(address(_192))
                call address(_192).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _193 + (32 * _199) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _184
                continue 
        else:
            idx = 0
            s = 0
            while idx < stor4.length:
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _178 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + 141 len 20]
                require ext_code.size(address(_50))
                staticcall address(_50).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_178)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _185 = mem[_183]
                require mem[_183] == mem[_183]
                if mem[_183] > cd[36]:
                    if cd[36] > 0:
                        if idx >= mem[floor32(('cd', 100).length) + 97]:
                            revert with 'NH{q', 50
                        _194 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                        mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[36]
                        mem[mem[64] + 36] = cd[68]
                        mem[mem[64] + 68] = 128
                        _200 = mem[96]
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 164
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = cd[132]
                        require ext_code.size(address(_194))
                        call address(_194).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _200) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = cd[36]
                    continue 
                if mem[_183] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_183]
                    continue 
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                _196 = mem[(32 * idx) + floor32(('cd', 100).length) + 129]
                mem[mem[64]] = 0x68071e0900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _185
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 128
                _201 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = cd[132]
                require ext_code.size(address(_196))
                call address(_196).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _201) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _185
                continue 
}

function sub_d49c3ff8(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[132] == cd[132]
    mem[0] = msg.sender
    mem[32] = 3
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'no'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    _64 = mem[128]
    mem[floor32(('cd', 100).length) + 101] = this.address
    require ext_code.size(address(_64))
    staticcall address(_64).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[floor32(('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * stor4.length) + 129
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = stor4.length
    if not stor4.length:
        if cd[4] < stor4.length:
            idx = 0
            s = 0
            s = ext_call.return_data[0]
            while idx < cd[4]:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 64
                _122 = mem[96]
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _122) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _176 = mem[_174]
                require mem[_174] <= test266151307()
                require _174 + mem[_174] + 31 < _174 + return_data.size
                _178 = mem[_174 + mem[_174]]
                if mem[_174 + mem[_174]] > test266151307():
                    revert with 'NH{q', 65
                if _174 + ceil32(return_data.size) + floor32(mem[_174 + mem[_174]]) + 1 > test266151307() or floor32(mem[_174 + mem[_174]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _174 + ceil32(return_data.size) + floor32(mem[_174 + mem[_174]]) + 1
                mem[_174 + ceil32(return_data.size)] = _178
                require _176 + (32 * _178) + 32 <= return_data.size
                t = 0
                u = _174 + _176 + 32
                v = _174 + ceil32(return_data.size) + 32
                while t < _178:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _178:
                    revert with 'NH{q', 50
                _262 = mem[_174 + ceil32(return_data.size) + 32]
                if cd[68] < mem[_174 + ceil32(return_data.size) + 32]:
                if s < mem[_174 + ceil32(return_data.size) + 32]:
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 141 len 20]
                mem[mem[64] + 36] = _262
                require ext_code.size(address(_64))
                call address(_64).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _262
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_284] == bool(mem[_284])
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                _292 = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 129]
                mem[mem[64]] = 0x8ca19a4700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = _262
                mem[mem[64] + 68] = 128
                _302 = mem[96]
                mem[mem[64] + 132] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 164
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = cd[132]
                require ext_code.size(address(_292))
                call address(_292).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _302) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _262
                s = s - _262
                continue 
        else:
            idx = 0
            s = 0
            s = ext_call.return_data[0]
            while idx < stor4.length:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 64
                _123 = mem[96]
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _123) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _177 = mem[_175]
                require mem[_175] <= test266151307()
                require _175 + mem[_175] + 31 < _175 + return_data.size
                _179 = mem[_175 + mem[_175]]
                if mem[_175 + mem[_175]] > test266151307():
                    revert with 'NH{q', 65
                if _175 + ceil32(return_data.size) + floor32(mem[_175 + mem[_175]]) + 1 > test266151307() or floor32(mem[_175 + mem[_175]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _175 + ceil32(return_data.size) + floor32(mem[_175 + mem[_175]]) + 1
                mem[_175 + ceil32(return_data.size)] = _179
                require _177 + (32 * _179) + 32 <= return_data.size
                t = 0
                u = _175 + _177 + 32
                v = _175 + ceil32(return_data.size) + 32
                while t < _179:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _179:
                    revert with 'NH{q', 50
                _263 = mem[_175 + ceil32(return_data.size) + 32]
                if cd[68] < mem[_175 + ceil32(return_data.size) + 32]:
                if s < mem[_175 + ceil32(return_data.size) + 32]:
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 141 len 20]
                mem[mem[64] + 36] = _263
                require ext_code.size(address(_64))
                call address(_64).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _263
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_285] == bool(mem[_285])
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                _294 = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 129]
                mem[mem[64]] = 0x8ca19a4700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = _263
                mem[mem[64] + 68] = 128
                _303 = mem[96]
                mem[mem[64] + 132] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 164
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = cd[132]
                require ext_code.size(address(_294))
                call address(_294).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _303) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _263
                s = s - _263
                continue 
    else:
        mem[0] = 4
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 129] = address(stor4.field_0)
        idx = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
        s = 0
        while floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * stor4.length) + 97 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if cd[4] < stor4.length:
            idx = 0
            s = 0
            s = ext_call.return_data[0]
            while idx < cd[4]:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 64
                _264 = mem[96]
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _264) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _338 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _342 = mem[_338]
                require mem[_338] <= test266151307()
                require _338 + mem[_338] + 31 < _338 + return_data.size
                _344 = mem[_338 + mem[_338]]
                if mem[_338 + mem[_338]] > test266151307():
                    revert with 'NH{q', 65
                if _338 + ceil32(return_data.size) + floor32(mem[_338 + mem[_338]]) + 1 > test266151307() or floor32(mem[_338 + mem[_338]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _338 + ceil32(return_data.size) + floor32(mem[_338 + mem[_338]]) + 1
                mem[_338 + ceil32(return_data.size)] = _344
                require _342 + (32 * _344) + 32 <= return_data.size
                t = 0
                u = _338 + _342 + 32
                v = _338 + ceil32(return_data.size) + 32
                while t < _344:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _344:
                    revert with 'NH{q', 50
                _382 = mem[_338 + ceil32(return_data.size) + 32]
                if cd[68] < mem[_338 + ceil32(return_data.size) + 32]:
                if s < mem[_338 + ceil32(return_data.size) + 32]:
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 141 len 20]
                mem[mem[64] + 36] = _382
                require ext_code.size(address(_64))
                call address(_64).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _382
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_392] == bool(mem[_392])
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                _398 = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 129]
                mem[mem[64]] = 0x8ca19a4700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = _382
                mem[mem[64] + 68] = 128
                _402 = mem[96]
                mem[mem[64] + 132] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 164
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = cd[132]
                require ext_code.size(address(_398))
                call address(_398).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _402) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _382
                s = s - _382
                continue 
        else:
            idx = 0
            s = 0
            s = ext_call.return_data[0]
            while idx < stor4.length:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 64
                _265 = mem[96]
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _265) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _339 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _343 = mem[_339]
                require mem[_339] <= test266151307()
                require _339 + mem[_339] + 31 < _339 + return_data.size
                _345 = mem[_339 + mem[_339]]
                if mem[_339 + mem[_339]] > test266151307():
                    revert with 'NH{q', 65
                if _339 + ceil32(return_data.size) + floor32(mem[_339 + mem[_339]]) + 1 > test266151307() or floor32(mem[_339 + mem[_339]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _339 + ceil32(return_data.size) + floor32(mem[_339 + mem[_339]]) + 1
                mem[_339 + ceil32(return_data.size)] = _345
                require _343 + (32 * _345) + 32 <= return_data.size
                t = 0
                u = _339 + _343 + 32
                v = _339 + ceil32(return_data.size) + 32
                while t < _345:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _345:
                    revert with 'NH{q', 50
                _383 = mem[_339 + ceil32(return_data.size) + 32]
                if cd[68] < mem[_339 + ceil32(return_data.size) + 32]:
                if s < mem[_339 + ceil32(return_data.size) + 32]:
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 141 len 20]
                mem[mem[64] + 36] = _383
                require ext_code.size(address(_64))
                call address(_64).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _383
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_393] == bool(mem[_393])
                if idx >= mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97]:
                    revert with 'NH{q', 50
                _400 = mem[(32 * idx) + floor32(('cd', 100).length) + ceil32(return_data.size) + 129]
                mem[mem[64]] = 0x8ca19a4700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = _383
                mem[mem[64] + 68] = 128
                _403 = mem[96]
                mem[mem[64] + 132] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 164
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = cd[132]
                require ext_code.size(address(_400))
                call address(_400).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], cd[132], mem[mem[64] + 132 len (32 * _403) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _383
                s = s - _383
                continue 
}



}
