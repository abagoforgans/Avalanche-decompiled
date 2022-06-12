contract main {




// =====================  Runtime code  =====================


const genesis = 0x43a2f2530790bf7ce16a969c9e583c4d2c472a36


address owner;
array of address instances;

function owner() {
    return owner
}

function instances(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < instances.length
    return instances[arg1]
}

function sub_dd4d313c(?) {
    return instances.length
}

function _fallback() payable {
    revert
}

function sub_c1c6a7d9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!o'
    idx = 0
    while idx < arg1:
        mem[96 len 5691] = code.data[8462 len 5691]
        create contract with 0 wei
                        code: code.data[8462 len 5691]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        instances.length++
        mem[0] = 1
        instances[instances.length] = address(create.new_address)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function reclaimToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!o'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function emergencyWithdraw(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, '!o'
    idx = arg1
    while idx < arg2:
        if idx >= instances.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[96] = 0x5312ea8e00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        require ext_code.size(instances[idx])
        call instances[idx].emergencyWithdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!o'
    idx = arg1
    while idx < arg2:
        if idx >= instances.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[96] = 0x441a3e7000000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = arg4
        require ext_code.size(instances[idx])
        call instances[idx].withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_28af99fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!o'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not delegate.return_code:
        revert with 0, 'Reverted.'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[arg2.length + 160 len (2 * ceil32(arg2.length)) + -arg2.length + 32]
}

function sub_38894c00(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, '!o'
    idx = arg1
    while idx < arg2:
        if idx >= instances.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[96] = 0x17ffc32000000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg3)
        require ext_code.size(instances[idx])
        call instances[idx].0x17ffc320 with:
             gas gas_remaining wei
            args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!o'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Reverted.'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 32]
}

function sub_5f4b9bde(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, '!o'
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 and arg5 > -1 / arg2 - arg1:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = (arg2 * arg5) - (arg1 * arg5)
    require ext_code.size(address(arg4))
    call address(arg4).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (arg2 * arg5) - (arg1 * arg5)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = arg1
    while idx < arg2:
        if idx >= instances.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64] + 4] = instances[idx]
        mem[mem[64] + 36] = arg5
        require ext_code.size(address(arg4))
        call address(arg4).0xa9059cbb with:
             gas gas_remaining wei
            args instances[idx], arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == bool(mem[_18])
        if idx >= instances.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = arg5
        require ext_code.size(instances[idx])
        call instances[idx].deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getTVL(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < instances.length:
        mem[0] = 1
        mem[mem[64] + 36] = instances[idx]
        require ext_code.size(0x43a2f2530790bf7ce16a969c9e583c4d2c472a36)
        staticcall 0x43a2f2530790bf7ce16a969c9e583c4d2c472a36.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1, instances[idx]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_14] == mem[_14]
        require mem[_14 + 32] == mem[_14 + 32]
        if s > -mem[_14] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_14]
        continue 
    return (s * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length * instances.length)
}

function sub_82c058e4(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!o'
    idx = arg1
    while idx < arg2:
        if idx >= instances.length:
            revert with 'NH{q', 50
        mem[0] = 1
        _21 = mem[64]
        mem[mem[64]] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 96
        _22 = mem[96]
        mem[mem[64] + 100] = mem[96]
        s = 0
        while s < _22:
            mem[mem[64] + s + 132] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_22) <= _22:
            require ext_code.size(instances[idx])
            call instances[idx].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _21 + ceil32(_22) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _41 = mem[_39]
            require mem[_39] <= test266151307()
            require _39 + mem[_39] + 31 < _39 + return_data.size
            _43 = mem[_39 + mem[_39]]
            if mem[_39 + mem[_39]] > test266151307():
                revert with 'NH{q', 65
            if _39 + ceil32(return_data.size) + ceil32(mem[_39 + mem[_39]]) + 32 > test266151307() or ceil32(mem[_39 + mem[_39]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _39 + ceil32(return_data.size) + ceil32(mem[_39 + mem[_39]]) + 32
            mem[_39 + ceil32(return_data.size)] = _43
            require _41 + _43 + 32 <= return_data.size
            s = 0
            while s < _43:
                mem[_39 + ceil32(return_data.size) + s + 32] = mem[_39 + _41 + s + 32]
                s = s + 32
                continue 
            if ceil32(_43) > _43:
                mem[_39 + ceil32(return_data.size) + _43 + 32] = 0
        else:
            mem[_21 + _22 + 132] = 0
            require ext_code.size(instances[idx])
            call instances[idx].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _21 + ceil32(_22) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _42 = mem[_40]
            require mem[_40] <= test266151307()
            require _40 + mem[_40] + 31 < _40 + return_data.size
            _44 = mem[_40 + mem[_40]]
            if mem[_40 + mem[_40]] > test266151307():
                revert with 'NH{q', 65
            if _40 + ceil32(return_data.size) + ceil32(mem[_40 + mem[_40]]) + 32 > test266151307() or ceil32(mem[_40 + mem[_40]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _40 + ceil32(return_data.size) + ceil32(mem[_40 + mem[_40]]) + 32
            mem[_40 + ceil32(return_data.size)] = _44
            require _42 + _44 + 32 <= return_data.size
            s = 0
            while s < _44:
                mem[_40 + ceil32(return_data.size) + s + 32] = mem[_40 + _42 + s + 32]
                s = s + 32
                continue 
            if ceil32(_44) > _44:
                mem[_40 + ceil32(return_data.size) + _44 + 32] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
