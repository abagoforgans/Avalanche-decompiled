contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_beb14f3e(?) payable {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawTokensFromContract(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'Token cannot be zero address.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Amount exceeds Balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_f4498849(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1) with:
         gas gas_remaining wei
        args arg4[all]
    if not ext_call.success:
        revert with 0, 'fail data to swap'
    return 1
}

function sub_13851788(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    if ext_call.return_data[0] < arg5:
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg5:
            revert with 0, 'Amount exceeds Balance'
        require ext_code.size(address(arg2))
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1) with:
         gas gas_remaining wei
        args arg4[all]
    if not ext_call.success:
        revert with 0, 'fail data to swap'
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(this.address)
    call this.address.0xd3b146f4 with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_46f3556e(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 164).length) + 97 > test266151307() or floor32(('cd', 164).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[floor32(('cd', 164).length) + 101] = msg.sender
    mem[floor32(('cd', 164).length) + 133] = this.address
    mem[floor32(('cd', 164).length) + 165] = cd[100]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[100]
    mem[floor32(('cd', 164).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 101] = address(cd[4])
    mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 133] = -1
    require ext_code.size(address(cd[36]))
    call address(cd[36]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), -1
    mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[132]
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 160
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 164).length
    idx = 0
    s = 128
    t = floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 293
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = owner
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = block.timestamp + 300
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), owner, block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _43 = mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32
    require mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
    require floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97
    _44 = mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
    if mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
    require _43 + (32 * _44) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + _43 + 129
    t = floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
    while idx < _44:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 1
}

function sub_6753d481(?) payable {
    require calldata.size - 4 >= 128
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
    if block.timestamp > -301:
        revert with 'NH{q', 17
    if address(cd[4]) != 0x6a5f6a8121592becd6747a38d67451b310f7f156:
        if address(cd[4]) == 0xbe9e53fd7edac9f859882afdda116645287c629:
            mem[floor32(('cd', 100).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 100).length) + 101] = cd[68]
            mem[floor32(('cd', 100).length) + 133] = 128
            mem[floor32(('cd', 100).length) + 229] = ('cd', 100).length
            idx = 0
            s = 128
            t = floor32(('cd', 100).length) + 261
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + 165] = owner
            mem[floor32(('cd', 100).length) + 197] = block.timestamp + 300
            require ext_code.size(0xfb76e9e7d88e308ab530330ed90e84a952570319)
            call 0xfb76e9e7d88e308ab530330ed90e84a952570319.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 261 len 32 * ('cd', 100).length]), owner, block.timestamp + 300
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _89 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
            _91 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
            if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
            require _89 + (32 * _91) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 100).length) + _89 + 129
            t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
            while idx < _91:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        mem[floor32(('cd', 100).length) + 101] = msg.sender
        mem[floor32(('cd', 100).length) + 133] = this.address
        mem[floor32(('cd', 100).length) + 165] = cd[36]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[36]
        mem[floor32(('cd', 100).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 101] = 0xfb76e9e7d88e308ab530330ed90e84a952570319
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 133] = -1
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xfb76e9e7d88e308ab530330ed90e84a952570319, -1
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 101] = cd[36]
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 133] = cd[68]
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 100).length
        idx = 0
        s = 128
        t = floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 293
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 197] = owner
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 229] = block.timestamp + 300
        require ext_code.size(0xfb76e9e7d88e308ab530330ed90e84a952570319)
        call 0xfb76e9e7d88e308ab530330ed90e84a952570319.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 100).length]), owner, block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _90 = mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + return_data.size + 97
        _92 = mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
        if mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
        mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = _92
        require _90 + (32 * _92) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + _90 + 129
        t = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 129
        while idx < _92:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if address(cd[4]) == 0xbe9e53fd7edac9f859882afdda116645287c629:
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 100).length
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = owner
            mem[mem[64] + 100] = block.timestamp + 300
            require ext_code.size(0xfb76e9e7d88e308ab530330ed90e84a952570319)
            call 0xfb76e9e7d88e308ab530330ed90e84a952570319.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args cd[68], Array(len=('cd', 100).length, data=mem[mem[64] + 164 len 32 * ('cd', 100).length]), owner, block.timestamp + 300
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _132 = mem[_131]
            require mem[_131] <= test266151307()
            require _131 + mem[_131] + 31 < _131 + return_data.size
            _133 = mem[_131 + mem[_131]]
            if mem[_131 + mem[_131]] > test266151307():
                revert with 'NH{q', 65
            if _131 + ceil32(return_data.size) + floor32(mem[_131 + mem[_131]]) + 1 > test266151307() or floor32(mem[_131 + mem[_131]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _131 + ceil32(return_data.size) + floor32(mem[_131 + mem[_131]]) + 1
            mem[_131 + ceil32(return_data.size)] = _133
            require _132 + (32 * _133) + 32 <= return_data.size
            idx = 0
            s = _131 + _132 + 32
            t = _131 + ceil32(return_data.size) + 32
            while idx < _133:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    return 1
}

function sub_5fc18492(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 164).length) + 97 > test266151307() or floor32(('cd', 164).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == cd[196]
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[floor32(('cd', 164).length) + 101] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[floor32(('cd', 164).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= cd[100]:
        mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 101] = this.address
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 101] = cd[100]
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 133] = cd[132]
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 164).length
        idx = 0
        s = 128
        t = floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 293
        while idx < ('cd', 164).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 197] = owner
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), owner, block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _107 = mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
        require floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + return_data.size + 97
        _109 = mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        if mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
        mem[floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + 97] = _109
        require _107 + (32 * _109) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + _107 + 129
        t = floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + 129
        while idx < _109:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_145] == mem[_145]
        if mem[_145] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        stor1 = mem[_145] - ext_call.return_data[0]
        if cd[196] == 1:
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = stor1
            require ext_code.size(this.address)
            call this.address.0xd3b146f4 with:
                 gas gas_remaining wei
                args address(cd[68]), stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_157] == bool(mem[_157])
    else:
        mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 101] = msg.sender
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[floor32(('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[100]:
            revert with 0, 'Amount exceeds Balance'
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = msg.sender
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = this.address
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = cd[100]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[100]
        mem[floor32(('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 101] = this.address
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[floor32(('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + 133] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[floor32(('cd', 164).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 101] = cd[100]
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 133] = cd[132]
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 261] = ('cd', 164).length
        idx = 0
        s = 128
        t = floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 293
        while idx < ('cd', 164).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 197] = owner
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), owner, block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 164).length) + (8 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _108 = mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
        require floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + return_data.size + 97
        _110 = mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        if mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 164).length) + (8 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 164).length) + (8 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + mem[floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
        mem[floor32(('cd', 164).length) + (8 * ceil32(return_data.size)) + 97] = _110
        require _108 + (32 * _110) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 164).length) + (7 * ceil32(return_data.size)) + _108 + 129
        t = floor32(('cd', 164).length) + (8 * ceil32(return_data.size)) + 129
        while idx < _110:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_146] == mem[_146]
        if mem[_146] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        stor1 = mem[_146] - ext_call.return_data[0]
        if cd[196] == 1:
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = stor1
            require ext_code.size(this.address)
            call this.address.0xd3b146f4 with:
                 gas gas_remaining wei
                args address(cd[68]), stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_158] == bool(mem[_158])
    return 1
}



}
