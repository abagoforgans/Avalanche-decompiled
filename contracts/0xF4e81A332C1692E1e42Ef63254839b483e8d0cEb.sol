contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
address stor2;

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

function sub_0568f525(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    if arg2 > ext_call.return_data[0]:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6c79b9b1(?) payable {
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
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if mem[140 len 20] != mem[(32 * ('cd', 36).length - 1) + 140 len 20]:
        revert with 0, 'must be arb'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 231] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 263
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = (32 * ('cd', 36).length) + 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 263] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 295
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 295] = ('cd', 100).length
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xf594ef26 with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 263 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32], ('cd', 100).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327 len 32 * ('cd', 100).length]), (32 * ('cd', 36).length) + 160, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= cd[4]:
        return 0
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _219 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 103] = stor2
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 135] = cd[4]
    require ext_code.size(address(_219))
    call address(_219).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 99
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 99] = 0x3e571ec00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 103] = cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 135] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 295
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 167] = (32 * ('cd', 36).length) + 192
    _241 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 295] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + (32 * mem[96]) + 228
    while idx < _241:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = (32 * mem[96]) + (32 * _241) + 224
    _253 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _241) + 327] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _241) + 359
    while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = this.address
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _241) + (32 * _253) + -mem[64] + 355]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _264 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_264] == mem[_264]
    if mem[_264] <= cd[4]:
        revert with 0, 'arb failed'
    mem[mem[64]] = mem[_264]
    return memory
      from mem[64]
       len 32
}

function sub_5cdff7a0(?) payable {
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
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if mem[140 len 20] != mem[(32 * ('cd', 36).length - 1) + 140 len 20]:
        revert with 0, 'must be arb'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 231] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 263
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = (32 * ('cd', 36).length) + 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 263] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 295
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 295] = ('cd', 100).length
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xf594ef26 with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 263 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32], ('cd', 100).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327 len 32 * ('cd', 100).length]), (32 * ('cd', 36).length) + 160, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= cd[4]:
        return 0
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _219 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 103] = stor2
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 135] = cd[4]
    require ext_code.size(address(_219))
    call address(_219).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 99
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 99] = 0xc1e6e23a00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 103] = cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 135] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 295
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 167] = (32 * ('cd', 36).length) + 192
    _241 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 295] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + (32 * mem[96]) + 228
    while idx < _241:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = (32 * mem[96]) + (32 * _241) + 224
    _253 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _241) + 327] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _241) + 359
    while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = this.address
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _241) + (32 * _253) + -mem[64] + 355]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _264 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_264] == mem[_264]
    if mem[_264] <= cd[4]:
        revert with 0, 'arb failed'
    mem[mem[64]] = mem[_264]
    return memory
      from mem[64]
       len 32
}

function sub_4129ec88(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    mem[64] = (32 * ('cd', 100).length) + 128
    if not ('cd', 100).length:
        idx = 0
        while idx < ('cd', 100).length:
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if address(cd[((32 * idx) + cd[100] + 36)]) != address(cd[36]):
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = ('cd', 68).length
                s = 0
                t = cd[68] + 36
                u = mem[64] + 164
                while s < ('cd', 68).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0x69f74959 with:
                     gas gas_remaining wei
                    args cd[4], address(cd[36]), address(cd[((32 * idx) + cd[100] + 36)]), Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _556 = mem[_551]
                require mem[_551] == mem[_551]
                _565 = mem[_551 + 32]
                require mem[_551 + 32] == mem[_551 + 44 len 20]
                require mem[_551 + 64] == mem[_551 + 76 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _617 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _624 = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[mem[(32 * idx) + 128] + 96]] = mem[_551 + 76 len 20]
                mem[_624] = address(_565)
                mem[_617] = _556
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128]] > 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 160] = 1
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[mem[(32 * idx) + 128] + 64] + 128] = mem[mem[mem[(32 * idx) + 128] + 64] + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[mem[(32 * idx) + 128] + 96] + 128] = mem[mem[mem[(32 * idx) + 128] + 96] + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 100).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 160]:
                s = 0
                while s < ('cd', 100).length:
                    if idx != s:
                        if s >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                        if address(cd[((32 * s) + cd[100] + 36)]) != address(cd[36]):
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _934 = mem[mem[(32 * idx) + 128] + 32]
                            if idx >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                            if s >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[mem[64] + 68] = address(cd[((32 * s) + cd[100] + 36)])
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = ('cd', 68).length
                            t = 0
                            u = cd[68] + 36
                            v = mem[64] + 164
                            while t < ('cd', 68).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0x69f74959 with:
                                 gas gas_remaining wei
                                args _934, address(cd[((32 * idx) + cd[100] + 36)]), address(cd[((32 * s) + cd[100] + 36)]), Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length])
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1232 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1237 = mem[_1232]
                            require mem[_1232] == mem[_1232]
                            _1250 = mem[_1232 + 32]
                            require mem[_1232 + 32] == mem[_1232 + 44 len 20]
                            require mem[_1232 + 64] == mem[_1232 + 76 len 20]
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            _1280 = mem[(32 * s) + 128]
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            _1288 = mem[(32 * s) + 128]
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[(32 * s) + 128] + 256] = mem[_1232 + 76 len 20]
                            mem[_1288 + 224] = address(_1250)
                            mem[_1280 + 192] = _1237
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * s) + 128] + 192] > mem[mem[(32 * s) + 128]]:
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[(32 * s) + 128] + 160] = 2
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[(32 * s) + 128]] = mem[mem[(32 * s) + 128] + 192]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[mem[(32 * s) + 128] + 64]] = mem[mem[mem[(32 * idx) + 128] + 64] + 140 len 20]
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[mem[(32 * s) + 128] + 64] + 32] = mem[mem[(32 * s) + 128] + 236 len 20]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[mem[(32 * s) + 128] + 96]] = mem[mem[mem[(32 * idx) + 128] + 96] + 140 len 20]
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[mem[(32 * s) + 128] + 96] + 32] = mem[mem[(32 * s) + 128] + 268 len 20]
                                if idx >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[mem[(32 * s) + 128] + 128]] = address(cd[((32 * idx) + cd[100] + 36)])
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 100).length:
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[36]):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 160] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _938 = mem[mem[(32 * idx) + 128]]
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 68] = address(cd[36])
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = ('cd', 68).length
            t = 0
            u = cd[68] + 36
            v = mem[64] + 164
            while t < ('cd', 68).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0x69f74959 with:
                 gas gas_remaining wei
                args _938, address(cd[((32 * idx) + cd[100] + 36)]), address(cd[36]), Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1236 = mem[_1231]
            require mem[_1231] == mem[_1231]
            _1249 = mem[_1231 + 32]
            require mem[_1231 + 32] == mem[_1231 + 44 len 20]
            require mem[_1231 + 64] == mem[_1231 + 76 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1278 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1286 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1295 = mem[mem[(32 * idx) + 128] + 160]
            if mem[mem[(32 * idx) + 128] + 160] >= 8:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 160] >= 8:
                revert with 'NH{q', 50
            mem[(32 * mem[mem[(32 * idx) + 128] + 160]) + mem[mem[(32 * idx) + 128] + 96]] = mem[_1231 + 76 len 20]
            mem[(32 * _1295) + _1286] = address(_1249)
            mem[_1278] = _1236
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128]] <= s:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128]]
            continue 
        if s <= cd[4]:
            mem[mem[64]] = s
            mem[mem[64] + 32] = 128
            _913 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _913:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _913) + 160
            mem[mem[64] + (32 * _913) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _913) + 192
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _913) + (32 * mem[96]) + 192
            _1458 = mem[96]
            mem[t] = mem[96]
            idx = 0
            s = 128
            u = t + 32
            while idx < _1458:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1458) + -mem[64] + 32
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[128] + 160] == 1:
            _909 = mem[64]
            mem[mem[64] + 32 len 96] = call.data[calldata.size len 96]
            mem[mem[64] + 128] = 2
            mem[mem[64] + 160 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 224] = 2
            mem[64] = mem[64] + 320
            mem[_909 + 256 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_909]:
                revert with 'NH{q', 50
            mem[_909 + 32] = address(cd[36])
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ('cd', 100)[0] == address(('cd', 100)[0])
            if 1 >= mem[_909]:
                revert with 'NH{q', 50
            mem[_909 + 64] = address(('cd', 100)[0])
            if 2 >= mem[_909]:
                revert with 'NH{q', 50
            mem[_909 + 96] = address(cd[36])
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_909 + 128]:
                revert with 'NH{q', 50
            mem[_909 + 160] = mem[mem[mem[128] + 64] + 12 len 20]
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_909 + 128]:
                revert with 'NH{q', 50
            mem[_909 + 192] = mem[mem[mem[128] + 64] + 44 len 20]
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_909 + 224]:
                revert with 'NH{q', 50
            mem[_909 + 256] = mem[mem[mem[128] + 96] + 12 len 20]
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_909 + 224]:
                revert with 'NH{q', 50
            mem[_909 + 288] = mem[mem[mem[128] + 96] + 44 len 20]
            mem[_909 + 320] = s
            mem[_909 + 352] = 128
            mem[_909 + 448] = mem[_909]
            idx = 0
            s = _909 + 32
            t = _909 + 480
            while idx < mem[_909]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_909 + 384] = (32 * mem[_909]) + 160
            mem[_909 + (32 * mem[_909]) + 480] = mem[_909 + 128]
            idx = 0
            s = _909 + 160
            t = _909 + (32 * mem[_909]) + 512
            while idx < mem[_909 + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_909 + 416] = (32 * mem[_909]) + (32 * mem[_909 + 128]) + 192
            mem[_909 + (32 * mem[_909]) + (32 * mem[_909 + 128]) + 512] = mem[_909 + 224]
            idx = 0
            s = _909 + 256
            t = _909 + (32 * mem[_909]) + (32 * mem[_909 + 128]) + 544
            while idx < mem[_909 + 224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _909 + (32 * mem[_909]) + (32 * mem[_909 + 128]) + (32 * mem[_909 + 224]) + -mem[64] + 544
        _908 = mem[64]
        mem[mem[64] + 32 len 128] = call.data[calldata.size len 128]
        mem[mem[64] + 160] = 3
        mem[mem[64] + 192 len 96] = call.data[calldata.size len 96]
        mem[mem[64] + 288] = 3
        mem[64] = mem[64] + 416
        mem[_908 + 320 len 96] = call.data[calldata.size len 96]
        if 0 >= mem[_908]:
            revert with 'NH{q', 50
        mem[_908 + 32] = address(cd[36])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_908]:
            revert with 'NH{q', 50
        mem[_908 + 64] = mem[mem[mem[128] + 128] + 12 len 20]
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if 2 >= mem[_908]:
            revert with 'NH{q', 50
        mem[_908 + 96] = address(('cd', 100)[0])
        if 3 >= mem[_908]:
            revert with 'NH{q', 50
        mem[_908 + 128] = address(cd[36])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_908 + 160]:
            revert with 'NH{q', 50
        mem[_908 + 192] = mem[mem[mem[128] + 64] + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_908 + 160]:
            revert with 'NH{q', 50
        mem[_908 + 224] = mem[mem[mem[128] + 64] + 44 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 2 >= mem[_908 + 160]:
            revert with 'NH{q', 50
        mem[_908 + 256] = mem[mem[mem[128] + 64] + 76 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_908 + 288]:
            revert with 'NH{q', 50
        mem[_908 + 320] = mem[mem[mem[128] + 96] + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_908 + 288]:
            revert with 'NH{q', 50
        mem[_908 + 352] = mem[mem[mem[128] + 96] + 44 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 2 >= mem[_908 + 288]:
            revert with 'NH{q', 50
        mem[_908 + 384] = mem[mem[mem[128] + 96] + 76 len 20]
        mem[_908 + 416] = s
        mem[_908 + 448] = 128
        mem[_908 + 544] = mem[_908]
        idx = 0
        s = _908 + 32
        t = _908 + 576
        while idx < mem[_908]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_908 + 480] = (32 * mem[_908]) + 160
        mem[_908 + (32 * mem[_908]) + 576] = mem[_908 + 160]
        idx = 0
        s = _908 + 192
        t = _908 + (32 * mem[_908]) + 608
        while idx < mem[_908 + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_908 + 512] = (32 * mem[_908]) + (32 * mem[_908 + 160]) + 192
        mem[_908 + (32 * mem[_908]) + (32 * mem[_908 + 160]) + 608] = mem[_908 + 288]
        idx = 0
        s = _908 + 320
        t = _908 + (32 * mem[_908]) + (32 * mem[_908 + 160]) + 640
        while idx < mem[_908 + 288]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _908 + (32 * mem[_908]) + (32 * mem[_908 + 160]) + (32 * mem[_908 + 288]) + -mem[64] + 640
    mem[(32 * ('cd', 100).length) + 128] = 0
    mem[(32 * ('cd', 100).length) + 160] = 0
    mem[(32 * ('cd', 100).length) + 416 len 256] = call.data[calldata.size len 256]
    mem[(32 * ('cd', 100).length) + 192] = (32 * ('cd', 100).length) + 416
    mem[(32 * ('cd', 100).length) + 672 len 256] = call.data[calldata.size len 256]
    mem[(32 * ('cd', 100).length) + 224] = (32 * ('cd', 100).length) + 672
    mem[64] = (32 * ('cd', 100).length) + 1184
    mem[(32 * ('cd', 100).length) + 928 len 256] = call.data[calldata.size len 256]
    mem[(32 * ('cd', 100).length) + 256] = (32 * ('cd', 100).length) + 928
    mem[(32 * ('cd', 100).length) + 288] = 0
    mem[(32 * ('cd', 100).length) + 320] = 0
    mem[(32 * ('cd', 100).length) + 352] = 0
    mem[(32 * ('cd', 100).length) + 384] = 0
    mem[var47002] = (32 * ('cd', 100).length) + 128
    s = (32 * ('cd', 100).length) + 192
    s = (32 * ('cd', 100).length) + 128
    s = var47002
    idx = var47003
    while idx - 1:
        _912 = mem[64]
        mem[64] = mem[64] + 288
        mem[_912] = 0
        mem[_912 + 32] = 0
        mem[64] = mem[64] + 256
        mem[(32 * ('cd', 100).length) + 416 len 256] = call.data[calldata.size len 256]
        mem[_912 + 64] = (32 * ('cd', 100).length) + 416
        mem[64] = mem[64] + 256
        mem[(32 * ('cd', 100).length) + 672 len 256] = call.data[calldata.size len 256]
        mem[_912 + 96] = (32 * ('cd', 100).length) + 672
        mem[64] = mem[64] + 256
        mem[(32 * ('cd', 100).length) + 928 len 256] = call.data[calldata.size len 256]
        mem[_912 + 128] = (32 * ('cd', 100).length) + 928
        mem[_912 + 160] = 0
        mem[_912 + 192] = 0
        mem[_912 + 224] = 0
        mem[_912 + 256] = 0
        mem[s + 32] = _912
        s = _912 + 64
        s = _912
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        if address(cd[((32 * idx) + cd[100] + 36)]) != address(cd[36]):
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = ('cd', 68).length
            s = 0
            t = cd[68] + 36
            u = mem[64] + 164
            while s < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0x69f74959 with:
                 gas gas_remaining wei
                args cd[4], address(cd[36]), address(cd[((32 * idx) + cd[100] + 36)]), Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1468 = mem[_1464]
            require mem[_1464] == mem[_1464]
            _1482 = mem[_1464 + 32]
            require mem[_1464 + 32] == mem[_1464 + 44 len 20]
            require mem[_1464 + 64] == mem[_1464 + 76 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1515 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1522 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[mem[(32 * idx) + 128] + 96]] = mem[_1464 + 76 len 20]
            mem[_1522] = address(_1482)
            mem[_1515] = _1468
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128]] > 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 160] = 1
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[mem[(32 * idx) + 128] + 64] + 128] = mem[mem[mem[(32 * idx) + 128] + 64] + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[mem[(32 * idx) + 128] + 96] + 128] = mem[mem[mem[(32 * idx) + 128] + 96] + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 160]:
            s = 0
            while s < ('cd', 100).length:
                if idx != s:
                    if s >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                    if address(cd[((32 * s) + cd[100] + 36)]) != address(cd[36]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1717 = mem[mem[(32 * idx) + 128] + 32]
                        if idx >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                        if s >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                        mem[mem[64] + 68] = address(cd[((32 * s) + cd[100] + 36)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 68).length
                        t = 0
                        u = cd[68] + 36
                        v = mem[64] + 164
                        while t < ('cd', 68).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0x69f74959 with:
                             gas gas_remaining wei
                            args _1717, address(cd[((32 * idx) + cd[100] + 36)]), address(cd[((32 * s) + cd[100] + 36)]), Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length])
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1886 = mem[_1884]
                        require mem[_1884] == mem[_1884]
                        _1894 = mem[_1884 + 32]
                        require mem[_1884 + 32] == mem[_1884 + 44 len 20]
                        require mem[_1884 + 64] == mem[_1884 + 76 len 20]
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        _1907 = mem[(32 * s) + 128]
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        _1912 = mem[(32 * s) + 128]
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * s) + 128] + 256] = mem[_1884 + 76 len 20]
                        mem[_1912 + 224] = address(_1894)
                        mem[_1907 + 192] = _1886
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + 128] + 192] > mem[mem[(32 * s) + 128]]:
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[(32 * s) + 128] + 160] = 2
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[(32 * s) + 128]] = mem[mem[(32 * s) + 128] + 192]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[mem[(32 * s) + 128] + 64]] = mem[mem[mem[(32 * idx) + 128] + 64] + 140 len 20]
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[mem[(32 * s) + 128] + 64] + 32] = mem[mem[(32 * s) + 128] + 236 len 20]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[mem[(32 * s) + 128] + 96]] = mem[mem[mem[(32 * idx) + 128] + 96] + 140 len 20]
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[mem[(32 * s) + 128] + 96] + 32] = mem[mem[(32 * s) + 128] + 268 len 20]
                            if idx >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[mem[(32 * s) + 128] + 128]] = address(cd[((32 * idx) + cd[100] + 36)])
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 100).length:
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        if address(cd[((32 * idx) + cd[100] + 36)]) == address(cd[36]):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 160] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1719 = mem[mem[(32 * idx) + 128]]
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        mem[mem[64] + 68] = address(cd[36])
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = ('cd', 68).length
        t = 0
        u = cd[68] + 36
        v = mem[64] + 164
        while t < ('cd', 68).length:
            require cd[u] == address(cd[u])
            mem[v] = address(cd[u])
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0x69f74959 with:
             gas gas_remaining wei
            args _1719, address(cd[((32 * idx) + cd[100] + 36)]), address(cd[36]), Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1883 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1885 = mem[_1883]
        require mem[_1883] == mem[_1883]
        _1893 = mem[_1883 + 32]
        require mem[_1883 + 32] == mem[_1883 + 44 len 20]
        require mem[_1883 + 64] == mem[_1883 + 76 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1905 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1910 = mem[mem[(32 * idx) + 128] + 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1915 = mem[mem[(32 * idx) + 128] + 160]
        if mem[mem[(32 * idx) + 128] + 160] >= 8:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 160] >= 8:
            revert with 'NH{q', 50
        mem[(32 * mem[mem[(32 * idx) + 128] + 160]) + mem[mem[(32 * idx) + 128] + 96]] = mem[_1883 + 76 len 20]
        mem[(32 * _1915) + _1910] = address(_1893)
        mem[_1905] = _1885
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128]] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[mem[(32 * idx) + 128]]
        continue 
    if s <= cd[4]:
        _1695 = mem[64]
        mem[mem[64]] = s
        mem[mem[64] + 32] = 128
        _1700 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < _1700:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * _1700) + 160
        mem[mem[64] + (32 * _1700) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1700) + 192
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1695 + 96] = (32 * _1700) + (32 * mem[96]) + 192
        _1974 = mem[96]
        mem[t] = mem[96]
        idx = 0
        s = 128
        u = t + 32
        while idx < _1974:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _1974) + -mem[64] + 32
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[mem[128] + 160] == 1:
        _1697 = mem[64]
        mem[mem[64] + 32 len 96] = call.data[calldata.size len 96]
        mem[mem[64] + 128] = 2
        mem[mem[64] + 160 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 224] = 2
        mem[64] = mem[64] + 320
        mem[_1697 + 256 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_1697]:
            revert with 'NH{q', 50
        mem[_1697 + 32] = address(cd[36])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if 1 >= mem[_1697]:
            revert with 'NH{q', 50
        mem[_1697 + 64] = address(('cd', 100)[0])
        if 2 >= mem[_1697]:
            revert with 'NH{q', 50
        mem[_1697 + 96] = address(cd[36])
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_1697 + 128]:
            revert with 'NH{q', 50
        mem[_1697 + 160] = mem[mem[mem[128] + 64] + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_1697 + 128]:
            revert with 'NH{q', 50
        mem[_1697 + 192] = mem[mem[mem[128] + 64] + 44 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_1697 + 224]:
            revert with 'NH{q', 50
        mem[_1697 + 256] = mem[mem[mem[128] + 96] + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_1697 + 224]:
            revert with 'NH{q', 50
        mem[_1697 + 288] = mem[mem[mem[128] + 96] + 44 len 20]
        mem[_1697 + 320] = s
        mem[_1697 + 352] = 128
        mem[_1697 + 448] = mem[_1697]
        idx = 0
        s = _1697 + 32
        t = _1697 + 480
        while idx < mem[_1697]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1697 + 384] = (32 * mem[_1697]) + 160
        mem[_1697 + (32 * mem[_1697]) + 480] = mem[_1697 + 128]
        idx = 0
        s = _1697 + 160
        t = _1697 + (32 * mem[_1697]) + 512
        while idx < mem[_1697 + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1697 + 416] = (32 * mem[_1697]) + (32 * mem[_1697 + 128]) + 192
        mem[_1697 + (32 * mem[_1697]) + (32 * mem[_1697 + 128]) + 512] = mem[_1697 + 224]
        idx = 0
        s = _1697 + 256
        t = _1697 + (32 * mem[_1697]) + (32 * mem[_1697 + 128]) + 544
        while idx < mem[_1697 + 224]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1697 + (32 * mem[_1697]) + (32 * mem[_1697 + 128]) + (32 * mem[_1697 + 224]) + -mem[64] + 544
    _1696 = mem[64]
    mem[mem[64] + 32 len 128] = call.data[calldata.size len 128]
    mem[mem[64] + 160] = 3
    mem[mem[64] + 192 len 96] = call.data[calldata.size len 96]
    mem[mem[64] + 288] = 3
    mem[64] = mem[64] + 416
    mem[_1696 + 320 len 96] = call.data[calldata.size len 96]
    if 0 >= mem[_1696]:
        revert with 'NH{q', 50
    mem[_1696 + 32] = address(cd[36])
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[_1696]:
        revert with 'NH{q', 50
    mem[_1696 + 64] = mem[mem[mem[128] + 128] + 12 len 20]
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if 2 >= mem[_1696]:
        revert with 'NH{q', 50
    mem[_1696 + 96] = address(('cd', 100)[0])
    if 3 >= mem[_1696]:
        revert with 'NH{q', 50
    mem[_1696 + 128] = address(cd[36])
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 0 >= mem[_1696 + 160]:
        revert with 'NH{q', 50
    mem[_1696 + 192] = mem[mem[mem[128] + 64] + 12 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[_1696 + 160]:
        revert with 'NH{q', 50
    mem[_1696 + 224] = mem[mem[mem[128] + 64] + 44 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 2 >= mem[_1696 + 160]:
        revert with 'NH{q', 50
    mem[_1696 + 256] = mem[mem[mem[128] + 64] + 76 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 0 >= mem[_1696 + 288]:
        revert with 'NH{q', 50
    mem[_1696 + 320] = mem[mem[mem[128] + 96] + 12 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[_1696 + 288]:
        revert with 'NH{q', 50
    mem[_1696 + 352] = mem[mem[mem[128] + 96] + 44 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 2 >= mem[_1696 + 288]:
        revert with 'NH{q', 50
    mem[_1696 + 384] = mem[mem[mem[128] + 96] + 76 len 20]
    mem[_1696 + 416] = s
    mem[_1696 + 448] = 128
    mem[_1696 + 544] = mem[_1696]
    idx = 0
    s = _1696 + 32
    t = _1696 + 576
    while idx < mem[_1696]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1696 + 480] = (32 * mem[_1696]) + 160
    mem[_1696 + (32 * mem[_1696]) + 576] = mem[_1696 + 160]
    idx = 0
    s = _1696 + 192
    t = _1696 + (32 * mem[_1696]) + 608
    while idx < mem[_1696 + 160]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1696 + 512] = (32 * mem[_1696]) + (32 * mem[_1696 + 160]) + 192
    mem[_1696 + (32 * mem[_1696]) + (32 * mem[_1696 + 160]) + 608] = mem[_1696 + 288]
    idx = 0
    s = _1696 + 320
    t = _1696 + (32 * mem[_1696]) + (32 * mem[_1696 + 160]) + 640
    while idx < mem[_1696 + 288]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1696 + (32 * mem[_1696]) + (32 * mem[_1696 + 160]) + (32 * mem[_1696 + 288]) + -mem[64] + 640
}



}
