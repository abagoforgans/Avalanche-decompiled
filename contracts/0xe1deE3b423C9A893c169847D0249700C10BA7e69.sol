contract main {




// =====================  Runtime code  =====================


#
#  - sub_54734cb5(?)
#
address owner;
address operatorAddress;
address stor2;
address stor3;

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

function sub_f1477682(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
    stor3 = address(arg2)
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

function sub_1f62565c(?) payable {
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
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _95 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = stor2
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = cd[4]
    require ext_code.size(address(_95))
    call address(_95).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 99] = 0xc1e6e23a00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 103] = cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 135] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 263] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 295
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 167] = (32 * ('cd', 36).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 295] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 327
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 199] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327] = ('cd', 100).length
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xc1e6e23a with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 295 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32], ('cd', 100).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359 len 32 * ('cd', 100).length]), (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= cd[4]:
        revert with 0, 'arb failed'
    return ext_call.return_data[0]
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

function sub_7a9ab7b7(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[96] = 0x4129ec8800000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = address(cd[68])
    mem[164] = 128
    mem[228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = (32 * ('cd', 100).length) + 160
    mem[(32 * ('cd', 100).length) + 260] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 100).length) + 292
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    call stor3.0x4129ec88 with:
         gas gas_remaining wei
        args cd[4], address(cd[68]), Array(len=('cd', 100).length, data=mem[260 len (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 32]), (32 * ('cd', 100).length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _152 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 == mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require uint32(cd[4]), address(cd[68]) << 64 <= test266151307()
    require uint32(cd[4]), address(cd[68]) << 64 + 127 < return_data.size + 96
    _154 = mem[uint32(cd[4]), address(cd[68]) << 64 + 96]
    if mem[uint32(cd[4]), address(cd[68]) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[uint32(cd[4]), address(cd[68]) << 64 + 96]) + 97 > test266151307() or floor32(mem[uint32(cd[4]), address(cd[68]) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[uint32(cd[4]), address(cd[68]) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _154
    require uint32(cd[4]), address(cd[68]) << 64 + (32 * _154) + 32 <= return_data.size
    idx = 0
    s = uint32(cd[4]), address(cd[68]) << 64 + 128
    t = ceil32(return_data.size) + 128
    while idx < _154:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _259 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 127 < return_data.size + 96
    _260 = mem[mem[160] + 96]
    if mem[mem[160] + 96] > test266151307():
        revert with 'NH{q', 65
    _261 = mem[64]
    if mem[64] + floor32(mem[mem[160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[mem[160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[mem[160] + 96]) + 1
    mem[_261] = _260
    require _259 + (32 * _260) + 32 <= return_data.size
    idx = 0
    s = _259 + 128
    t = _261 + 32
    while idx < _260:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _396 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 127 < return_data.size + 96
    _397 = mem[mem[192] + 96]
    if mem[mem[192] + 96] > test266151307():
        revert with 'NH{q', 65
    _398 = mem[64]
    if mem[64] + floor32(mem[mem[192] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[mem[192] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[mem[192] + 96]) + 1
    mem[_398] = _397
    require _396 + (32 * _397) + 32 <= return_data.size
    idx = 0
    s = _396 + 128
    t = _398 + 32
    while idx < _397:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _152 < cd[4]:
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = _152
        mem[mem[64] + 64] = 160
        _559 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 192
        while idx < _559:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * _559) + 192
        _739 = mem[_261]
        mem[mem[64] + (32 * _559) + 192] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _559) + 224
        while idx < _739:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * _559) + (32 * _739) + 224
        _1425 = mem[_398]
        mem[mem[64] + (32 * _559) + (32 * _739) + 224] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _559) + (32 * _739) + 256
        while idx < _1425:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return cd[4], 
               _152,
               160,
               (32 * _559) + 192,
               (32 * _559) + (32 * _739) + 224,
               mem[mem[64] + 160 len (32 * _559) + (32 * _739) + (32 * _1425) + 96]
    _550 = mem[64]
    mem[mem[64]] = 7
    mem[64] = mem[64] + 256
    mem[_550 + 32 len 224] = call.data[calldata.size len 224]
    if 0 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 32] = cd[4]
    if 1 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 64] = cd[36]
    if 0 >= mem[_550]:
        revert with 'NH{q', 50
    if 1 >= mem[_550]:
        revert with 'NH{q', 50
    if cd[4] > cd[36]:
        revert with 0, 'SafeMath: subtraction overflow'
    if cd[36] < cd[4]:
        revert with 'NH{q', 17
    if 2 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 96] = cd[36] - cd[4]
    if 2 >= mem[_550]:
        revert with 'NH{q', 50
    if not cd[36] - cd[4]:
        if 0 >= mem[_550]:
            revert with 'NH{q', 50
        if cd[4] > -1:
            revert with 'NH{q', 17
        if cd[4] < cd[4]:
            revert with 0, 'SafeMath: addition overflow'
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 128] = cd[4]
        if 2 >= mem[_550]:
            revert with 'NH{q', 50
        if not cd[36] - cd[4]:
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            if cd[4] > -1:
                revert with 'NH{q', 17
            if cd[4] < cd[4]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 160] = cd[4]
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 256] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_550 + 260] = cd[4]
            mem[_550 + 292] = 128
            _601 = mem[ceil32(return_data.size) + 96]
            mem[_550 + 388] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = _550 + 420
            while idx < _601:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_550 + 324] = (32 * _601) + 160
            _738 = mem[_261]
            mem[_550 + (32 * _601) + 420] = mem[_261]
            idx = 0
            s = _261 + 32
            t = _550 + (32 * _601) + 452
            while idx < _738:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_550 + 356] = (32 * _601) + (32 * _738) + 192
            _1424 = mem[_398]
            mem[_550 + (32 * _601) + (32 * _738) + 452] = mem[_398]
            idx = 0
            s = _398 + 32
            t = _550 + (32 * _601) + (32 * _738) + 484
            while idx < _1424:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _550 + (32 * _601) + (32 * _738) + (32 * _1424) + -mem[64] + 480]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2169] == mem[_2169]
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 192] = mem[_2169]
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            _2193 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 164
            while idx < _2193:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * _2193) + 160
            _2981 = mem[_261]
            mem[mem[64] + (32 * _2193) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _2193) + 196
            while idx < _2981:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * _2193) + (32 * _2981) + 192
            _3825 = mem[_398]
            mem[mem[64] + (32 * _2193) + (32 * _2981) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = mem[64] + (32 * _2193) + (32 * _2981) + 228
            while idx < _3825:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args cd[4], 128, (32 * _2193) + 160, (32 * _2193) + (32 * _2981) + 192, mem[mem[64] + 132 len (32 * _2193) + (32 * _2981) + (32 * _3825) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4665] == mem[_4665]
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 224] = mem[_4665]
            idx = 0
            while idx < 20:
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 224] > -mem[_550 + 128] - 1:
                    revert with 'NH{q', 17
                if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 192] > -mem[_550 + 160] - 1:
                    revert with 'NH{q', 17
                if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_550 + 192] + mem[_550 + 160] <= mem[_550 + 224] + mem[_550 + 128]:
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 32] = mem[_550 + 128]
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 128] = mem[_550 + 160]
                    if 6 >= mem[_550]:
                        revert with 'NH{q', 50
                    if 5 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 192] = mem[_550 + 224]
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    if not mem[_550 + 96]:
                        if 2 >= mem[_550]:
                            revert with 'NH{q', 50
                        mem[_550 + 96] = 0
                        if 2 >= mem[_550]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_550]:
                            revert with 'NH{q', 50
                        if mem[_550 + 32] > -1:
                            revert with 'NH{q', 17
                        if mem[_550 + 32] < mem[_550 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_550]:
                            revert with 'NH{q', 50
                        mem[_550 + 160] = mem[_550 + 32]
                        if 4 >= mem[_550]:
                            revert with 'NH{q', 50
                        _5886 = mem[_550 + 32]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5886
                        mem[mem[64] + 36] = 128
                        _5952 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                        s = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + 164
                        while s < _5952:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5952) + 160
                        _6605 = mem[_261]
                        mem[mem[64] + (32 * _5952) + 164] = mem[_261]
                        s = 0
                        t = _261 + 32
                        u = mem[64] + (32 * _5952) + 196
                        while s < _6605:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5952) + (32 * _6605) + 192
                        _7021 = mem[_398]
                        mem[mem[64] + (32 * _5952) + (32 * _6605) + 196] = mem[_398]
                        s = 0
                        t = _398 + 32
                        u = mem[64] + (32 * _5952) + (32 * _6605) + 228
                        while s < _7021:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5886, 128, (32 * _5952) + 160, (32 * _5952) + (32 * _6605) + 192, mem[mem[64] + 132 len (32 * _5952) + (32 * _6605) + (32 * _7021) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7397] == mem[_7397]
                        if 6 >= mem[_550]:
                            revert with 'NH{q', 50
                        mem[_550 + 224] = mem[_7397]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                        revert with 'NH{q', 17
                    if not mem[_550 + 96]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    if not mem[_550 + 96]:
                        if 0 >= mem[_550]:
                            revert with 'NH{q', 50
                        if mem[_550 + 32] > -1:
                            revert with 'NH{q', 17
                        if mem[_550 + 32] < mem[_550 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_550]:
                            revert with 'NH{q', 50
                        mem[_550 + 160] = mem[_550 + 32]
                        if 4 >= mem[_550]:
                            revert with 'NH{q', 50
                        _6074 = mem[_550 + 32]
                        _6075 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6074
                        mem[mem[64] + 36] = 128
                        _6134 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                        s = 0
                        t = ceil32(return_data.size) + 128
                        u = mem[64] + 164
                        while s < _6134:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _6134) + 160
                        _6603 = mem[_261]
                        mem[mem[64] + (32 * _6134) + 164] = mem[_261]
                        s = 0
                        t = _261 + 32
                        u = mem[64] + (32 * _6134) + 196
                        while s < _6603:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _6134) + (32 * _6603) + 192
                        _7019 = mem[_398]
                        mem[mem[64] + (32 * _6134) + (32 * _6603) + 196] = mem[_398]
                        s = 0
                        t = _398 + 32
                        u = mem[64] + (32 * _6134) + (32 * _6603) + 228
                        while s < _7019:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6075 + (32 * _6134) + (32 * _6603) + (32 * _7019) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7395] == mem[_7395]
                        if 6 >= mem[_550]:
                            revert with 'NH{q', 50
                        mem[_550 + 224] = mem[_7395]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                        revert with 'NH{q', 17
                    if not mem[_550 + 96]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -(618034 * mem[_550 + 96] / 10^6) - 1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 160] = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    _6214 = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
                    _6215 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6214
                    mem[mem[64] + 36] = 128
                    _6272 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _6272:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = (32 * _6272) + 160
                    _6602 = mem[_261]
                    mem[mem[64] + (32 * _6272) + 164] = mem[_261]
                    idx = 0
                    s = _261 + 32
                    t = mem[64] + (32 * _6272) + 196
                    while idx < _6602:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = (32 * _6272) + (32 * _6602) + 192
                    _7018 = mem[_398]
                    mem[mem[64] + (32 * _6272) + (32 * _6602) + 196] = mem[_398]
                    idx = 0
                    s = _398 + 32
                    t = mem[64] + (32 * _6272) + (32 * _6602) + 228
                    while idx < _7018:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6215 + (32 * _6272) + (32 * _6602) + (32 * _7018) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7394] == mem[_7394]
                    if 6 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 224] = mem[_7394]
                    if _6272 == -1:
                        revert with 'NH{q', 17
                    s = _6272 + 1
                    continue 
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                if 1 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 64] = mem[_550 + 160]
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 128]
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_550 + 192]
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if not mem[_550 + 96]:
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 96] = 0
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 128] = mem[_550 + 32]
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    _5888 = mem[_550 + 32]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5888
                    mem[mem[64] + 36] = 128
                    _5953 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _5953:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = (32 * _5953) + 160
                    _6609 = mem[_261]
                    mem[mem[64] + (32 * _5953) + 164] = mem[_261]
                    s = 0
                    t = _261 + 32
                    u = mem[64] + (32 * _5953) + 196
                    while s < _6609:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = (32 * _5953) + (32 * _6609) + 192
                    _7025 = mem[_398]
                    mem[mem[64] + (32 * _5953) + (32 * _6609) + 196] = mem[_398]
                    s = 0
                    t = _398 + 32
                    u = mem[64] + (32 * _5953) + (32 * _6609) + 228
                    while s < _7025:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.0xf594ef26 with:
                         gas gas_remaining wei
                        args _5888, 128, (32 * _5953) + 160, (32 * _5953) + (32 * _6609) + 192, mem[mem[64] + 132 len (32 * _5953) + (32 * _6609) + (32 * _7025) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7401] == mem[_7401]
                    if 5 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 192] = mem[_7401]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                    revert with 'NH{q', 17
                if not mem[_550 + 96]:
                    revert with 'NH{q', 18
                if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if not mem[_550 + 96]:
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 128] = mem[_550 + 32]
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    _6078 = mem[_550 + 32]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6078
                    mem[mem[64] + 36] = 128
                    _6136 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _6136:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = (32 * _6136) + 160
                    _6607 = mem[_261]
                    mem[mem[64] + (32 * _6136) + 164] = mem[_261]
                    s = 0
                    t = _261 + 32
                    u = mem[64] + (32 * _6136) + 196
                    while s < _6607:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = (32 * _6136) + (32 * _6607) + 192
                    _7023 = mem[_398]
                    mem[mem[64] + (32 * _6136) + (32 * _6607) + 196] = mem[_398]
                    s = 0
                    t = _398 + 32
                    u = mem[64] + (32 * _6136) + (32 * _6607) + 228
                    while s < _7023:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.0xf594ef26 with:
                         gas gas_remaining wei
                        args _6078, 128, (32 * _6136) + 160, (32 * _6136) + (32 * _6607) + 192, mem[mem[64] + 132 len (32 * _6136) + (32 * _6607) + (32 * _7023) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7399 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7399] == mem[_7399]
                    if 5 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 192] = mem[_7399]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_550 + 96] and 381966 > -1 / mem[_550 + 96]:
                    revert with 'NH{q', 17
                if not mem[_550 + 96]:
                    revert with 'NH{q', 18
                if 381966 * mem[_550 + 96] / mem[_550 + 96] != 381966:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -(381966 * mem[_550 + 96] / 10^6) - 1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 128] = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                _6216 = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
                _6217 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6216
                mem[mem[64] + 36] = 128
                _6273 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _6273:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_6217 + 68] = (32 * _6273) + 160
                _6606 = mem[_261]
                mem[_6217 + (32 * _6273) + 164] = mem[_261]
                idx = 0
                s = _261 + 32
                t = _6217 + (32 * _6273) + 196
                while idx < _6606:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_6217 + 100] = (32 * _6273) + (32 * _6606) + 192
                _7022 = mem[_398]
                mem[_6217 + (32 * _6273) + (32 * _6606) + 196] = mem[_398]
                idx = 0
                s = _398 + 32
                t = _6217 + (32 * _6273) + (32 * _6606) + 228
                while idx < _7022:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _6217 + (32 * _6273) + (32 * _6606) + (32 * _7022) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7398] == mem[_7398]
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 192] = mem[_7398]
                if _6273 == -1:
                    revert with 'NH{q', 17
                s = _6273 + 1
                continue 
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 224] > -mem[_550 + 128] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 192] > -mem[_550 + 160] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_550 + 192] + mem[_550 + 160] <= mem[_550 + 224] + mem[_550 + 128]:
                if 1 >= mem[_550]:
                    revert with 'NH{q', 50
                _5610 = mem[_550 + 64]
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                _5630 = mem[_550 + 128]
                if mem[_550 + 128] > -mem[_550 + 64] - 1:
                    revert with 'NH{q', 17
                if mem[_550 + 128] + mem[_550 + 64] < mem[_550 + 128]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _5630 + _5610 / 2
                mem[mem[64] + 36] = 128
                _5760 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 164
                while idx < _5760:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = (32 * _5760) + 160
                _6600 = mem[_261]
                mem[mem[64] + (32 * _5760) + 164] = mem[_261]
                idx = 0
                s = _261 + 32
                t = mem[64] + (32 * _5760) + 196
                while idx < _6600:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = (32 * _5760) + (32 * _6600) + 192
                _7016 = mem[_398]
                mem[mem[64] + (32 * _5760) + (32 * _6600) + 196] = mem[_398]
                idx = 0
                s = _398 + 32
                t = mem[64] + (32 * _5760) + (32 * _6600) + 228
                while idx < _7016:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args Mask(255, 1, _5630 + _5610), 128, (32 * _5760) + 160, (32 * _5760) + (32 * _6600) + 192, mem[mem[64] + 132 len (32 * _5760) + (32 * _6600) + (32 * _7016) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7432 = mem[_7392]
                require mem[_7392] == mem[_7392]
                mem[mem[64]] = _5630 + _5610 / 2
                mem[mem[64] + 32] = _7432
                mem[mem[64] + 64] = 160
                _7488 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 192
                while idx < _7488:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * _7488) + 192
                _7552 = mem[_261]
                mem[mem[64] + (32 * _7488) + 192] = mem[_261]
                idx = 0
                s = _261 + 32
                t = mem[64] + (32 * _7488) + 224
                while idx < _7552:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 128] = (32 * _7488) + (32 * _7552) + 224
                _7600 = mem[_398]
                mem[mem[64] + (32 * _7488) + (32 * _7552) + 224] = mem[_398]
                idx = 0
                s = _398 + 32
                t = mem[64] + (32 * _7488) + (32 * _7552) + 256
                while idx < _7600:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Mask(255, 1, _5630 + _5610), 
                       _7432,
                       160,
                       (32 * _7488) + 192,
                       (32 * _7488) + (32 * _7552) + 224,
                       mem[mem[64] + 160 len (32 * _7488) + (32 * _7552) + (32 * _7600) + 96]
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            _5612 = mem[_550 + 160]
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            _5631 = mem[_550 + 32]
            if mem[_550 + 32] > -mem[_550 + 160] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 32] + mem[_550 + 160] < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            _5751 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _5631 + _5612 / 2
            mem[mem[64] + 36] = 128
            _5761 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 164
            while idx < _5761:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_5751 + 68] = (32 * _5761) + 160
            _6601 = mem[_261]
            mem[_5751 + (32 * _5761) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = _5751 + (32 * _5761) + 196
            while idx < _6601:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_5751 + 100] = (32 * _5761) + (32 * _6601) + 192
            _7017 = mem[_398]
            mem[_5751 + (32 * _5761) + (32 * _6601) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = _5751 + (32 * _5761) + (32 * _6601) + 228
            while idx < _7017:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _5751 + (32 * _5761) + (32 * _6601) + (32 * _7017) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7433 = mem[_7393]
            require mem[_7393] == mem[_7393]
            _7481 = mem[64]
            mem[mem[64]] = _5631 + _5612 / 2
            mem[mem[64] + 32] = _7433
            mem[mem[64] + 64] = 160
            _7489 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 192
            while idx < _7489:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _7489) + 192
            _7553 = mem[_261]
            mem[mem[64] + (32 * _7489) + 192] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _7489) + 224
            while idx < _7553:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * _7489) + (32 * _7553) + 224
            _7601 = mem[_398]
            mem[mem[64] + (32 * _7489) + (32 * _7553) + 224] = mem[_398]
            idx = 0
            s = _398 + 32
            t = mem[64] + (32 * _7489) + (32 * _7553) + 256
            while idx < _7601:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _7481 + (32 * _7489) + (32 * _7553) + (32 * _7601) + -mem[64] + 256
        if cd[36] - cd[4] and 618034 > -1 / cd[36] - cd[4]:
            revert with 'NH{q', 17
        if not cd[36] - cd[4]:
            revert with 'NH{q', 18
        if (618034 * cd[36]) - (618034 * cd[4]) / cd[36] - cd[4] != 618034:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 >= mem[_550]:
            revert with 'NH{q', 50
        if cd[4] > -((618034 * cd[36]) - (618034 * cd[4]) / 10^6) - 1:
            revert with 'NH{q', 17
        if cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6) < cd[4]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 160] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 256] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_550 + 260] = cd[4]
        mem[_550 + 292] = 128
        _620 = mem[ceil32(return_data.size) + 96]
        mem[_550 + 388] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = _550 + 420
        while idx < _620:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_550 + 324] = (32 * _620) + 160
        _737 = mem[_261]
        mem[_550 + (32 * _620) + 420] = mem[_261]
        idx = 0
        s = _261 + 32
        t = _550 + (32 * _620) + 452
        while idx < _737:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_550 + 356] = (32 * _620) + (32 * _737) + 192
        _1423 = mem[_398]
        mem[_550 + (32 * _620) + (32 * _737) + 452] = mem[_398]
        idx = 0
        s = _398 + 32
        t = _550 + (32 * _620) + (32 * _737) + 484
        while idx < _1423:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _550 + (32 * _620) + (32 * _737) + (32 * _1423) + -mem[64] + 480]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2168] == mem[_2168]
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 192] = mem[_2168]
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
        mem[mem[64] + 36] = 128
        _2192 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 164
        while idx < _2192:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = (32 * _2192) + 160
        _2980 = mem[_261]
        mem[mem[64] + (32 * _2192) + 164] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _2192) + 196
        while idx < _2980:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = (32 * _2192) + (32 * _2980) + 192
        _3824 = mem[_398]
        mem[mem[64] + (32 * _2192) + (32 * _2980) + 196] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _2192) + (32 * _2980) + 228
        while idx < _3824:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6), 128, (32 * _2192) + 160, (32 * _2192) + (32 * _2980) + 192, mem[mem[64] + 132 len (32 * _2192) + (32 * _2980) + (32 * _3824) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4664 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4664] == mem[_4664]
        if 6 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 224] = mem[_4664]
        idx = 0
        while idx < 20:
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 224] > -mem[_550 + 128] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 192] > -mem[_550 + 160] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_550 + 192] + mem[_550 + 160] <= mem[_550 + 224] + mem[_550 + 128]:
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 32] = mem[_550 + 128]
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 128] = mem[_550 + 160]
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 192] = mem[_550 + 224]
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if not mem[_550 + 96]:
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 96] = 0
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 160] = mem[_550 + 32]
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    _5882 = mem[_550 + 32]
                    _5883 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5882
                    mem[mem[64] + 36] = 128
                    _5950 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _5950:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = (32 * _5950) + 160
                    _6595 = mem[_261]
                    mem[mem[64] + (32 * _5950) + 164] = mem[_261]
                    s = 0
                    t = _261 + 32
                    u = mem[64] + (32 * _5950) + 196
                    while s < _6595:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5883 + 100] = (32 * _5950) + (32 * _6595) + 192
                    _7011 = mem[_398]
                    mem[_5883 + (32 * _5950) + (32 * _6595) + 196] = mem[_398]
                    s = 0
                    t = _398 + 32
                    u = _5883 + (32 * _5950) + (32 * _6595) + 228
                    while s < _7011:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5883 + (32 * _5950) + (32 * _6595) + (32 * _7011) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7387] == mem[_7387]
                    if 6 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 224] = mem[_7387]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                    revert with 'NH{q', 17
                if not mem[_550 + 96]:
                    revert with 'NH{q', 18
                if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if not mem[_550 + 96]:
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 160] = mem[_550 + 32]
                    if 4 >= mem[_550]:
                        revert with 'NH{q', 50
                    _6064 = mem[_550 + 32]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6064
                    mem[mem[64] + 36] = 128
                    _6130 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _6130:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = (32 * _6130) + 160
                    _6593 = mem[_261]
                    mem[mem[64] + (32 * _6130) + 164] = mem[_261]
                    s = 0
                    t = _261 + 32
                    u = mem[64] + (32 * _6130) + 196
                    while s < _6593:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = (32 * _6130) + (32 * _6593) + 192
                    _7009 = mem[_398]
                    mem[mem[64] + (32 * _6130) + (32 * _6593) + 196] = mem[_398]
                    s = 0
                    t = _398 + 32
                    u = mem[64] + (32 * _6130) + (32 * _6593) + 228
                    while s < _7009:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.0xf594ef26 with:
                         gas gas_remaining wei
                        args _6064, 128, (32 * _6130) + 160, (32 * _6130) + (32 * _6593) + 192, mem[mem[64] + 132 len (32 * _6130) + (32 * _6593) + (32 * _7009) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7385] == mem[_7385]
                    if 6 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 224] = mem[_7385]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                    revert with 'NH{q', 17
                if not mem[_550 + 96]:
                    revert with 'NH{q', 18
                if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -(618034 * mem[_550 + 96] / 10^6) - 1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                _6210 = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
                _6211 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6210
                mem[mem[64] + 36] = 128
                _6270 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _6270:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _6270) + 160
                _6592 = mem[_261]
                mem[mem[64] + (32 * _6270) + 164] = mem[_261]
                idx = 0
                s = _261 + 32
                t = mem[64] + (32 * _6270) + 196
                while idx < _6592:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = (32 * _6270) + (32 * _6592) + 192
                _7008 = mem[_398]
                mem[mem[64] + (32 * _6270) + (32 * _6592) + 196] = mem[_398]
                idx = 0
                s = _398 + 32
                t = mem[64] + (32 * _6270) + (32 * _6592) + 228
                while idx < _7008:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _6211 + (32 * _6270) + (32 * _6592) + (32 * _7008) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7384] == mem[_7384]
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_7384]
                if _6270 == -1:
                    revert with 'NH{q', 17
                s = _6270 + 1
                continue 
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            if 1 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 64] = mem[_550 + 160]
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 160] = mem[_550 + 128]
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 224] = mem[_550 + 192]
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if not mem[_550 + 96]:
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 96] = 0
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 128] = mem[_550 + 32]
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                _5884 = mem[_550 + 32]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _5884
                mem[mem[64] + 36] = 128
                _5951 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _5951:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _5951) + 160
                _6599 = mem[_261]
                mem[mem[64] + (32 * _5951) + 164] = mem[_261]
                s = 0
                t = _261 + 32
                u = mem[64] + (32 * _5951) + 196
                while s < _6599:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = (32 * _5951) + (32 * _6599) + 192
                _7015 = mem[_398]
                mem[mem[64] + (32 * _5951) + (32 * _6599) + 196] = mem[_398]
                s = 0
                t = _398 + 32
                u = mem[64] + (32 * _5951) + (32 * _6599) + 228
                while s < _7015:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args _5884, 128, (32 * _5951) + 160, (32 * _5951) + (32 * _6599) + 192, mem[mem[64] + 132 len (32 * _5951) + (32 * _6599) + (32 * _7015) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7391] == mem[_7391]
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 192] = mem[_7391]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                revert with 'NH{q', 17
            if not mem[_550 + 96]:
                revert with 'NH{q', 18
            if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if not mem[_550 + 96]:
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 128] = mem[_550 + 32]
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                _6068 = mem[_550 + 32]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6068
                mem[mem[64] + 36] = 128
                _6132 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _6132:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _6132) + 160
                _6597 = mem[_261]
                mem[mem[64] + (32 * _6132) + 164] = mem[_261]
                s = 0
                t = _261 + 32
                u = mem[64] + (32 * _6132) + 196
                while s < _6597:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = (32 * _6132) + (32 * _6597) + 192
                _7013 = mem[_398]
                mem[mem[64] + (32 * _6132) + (32 * _6597) + 196] = mem[_398]
                s = 0
                t = _398 + 32
                u = mem[64] + (32 * _6132) + (32 * _6597) + 228
                while s < _7013:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args _6068, 128, (32 * _6132) + 160, (32 * _6132) + (32 * _6597) + 192, mem[mem[64] + 132 len (32 * _6132) + (32 * _6597) + (32 * _7013) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7389] == mem[_7389]
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 192] = mem[_7389]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[_550 + 96] and 381966 > -1 / mem[_550 + 96]:
                revert with 'NH{q', 17
            if not mem[_550 + 96]:
                revert with 'NH{q', 18
            if 381966 * mem[_550 + 96] / mem[_550 + 96] != 381966:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 32] > -(381966 * mem[_550 + 96] / 10^6) - 1:
                revert with 'NH{q', 17
            if mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 128] = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            _6212 = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
            _6213 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _6212
            mem[mem[64] + 36] = 128
            _6271 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 164
            while s < _6271:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_6213 + 68] = (32 * _6271) + 160
            _6596 = mem[_261]
            mem[_6213 + (32 * _6271) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = _6213 + (32 * _6271) + 196
            while idx < _6596:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_6213 + 100] = (32 * _6271) + (32 * _6596) + 192
            _7012 = mem[_398]
            mem[_6213 + (32 * _6271) + (32 * _6596) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = _6213 + (32 * _6271) + (32 * _6596) + 228
            while idx < _7012:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _6213 + (32 * _6271) + (32 * _6596) + (32 * _7012) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7388] == mem[_7388]
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 192] = mem[_7388]
            if _6271 == -1:
                revert with 'NH{q', 17
            s = _6271 + 1
            continue 
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        if 6 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 224] > -mem[_550 + 128] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 192] > -mem[_550 + 160] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_550 + 192] + mem[_550 + 160] > mem[_550 + 224] + mem[_550 + 128]:
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            _5604 = mem[_550 + 160]
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            _5627 = mem[_550 + 32]
            if mem[_550 + 32] > -mem[_550 + 160] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 32] + mem[_550 + 160] < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _5627 + _5604 / 2
            mem[mem[64] + 36] = 128
            _5759 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 164
            while idx < _5759:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * _5759) + 160
            _6591 = mem[_261]
            mem[mem[64] + (32 * _5759) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _5759) + 196
            while idx < _6591:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * _5759) + (32 * _6591) + 192
            _7007 = mem[_398]
            mem[mem[64] + (32 * _5759) + (32 * _6591) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = mem[64] + (32 * _5759) + (32 * _6591) + 228
            while idx < _7007:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args Mask(255, 1, _5627 + _5604), 128, (32 * _5759) + 160, (32 * _5759) + (32 * _6591) + 192, mem[mem[64] + 132 len (32 * _5759) + (32 * _6591) + (32 * _7007) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7423 = mem[_7383]
            require mem[_7383] == mem[_7383]
            _7479 = mem[64]
            mem[mem[64]] = _5627 + _5604 / 2
            mem[mem[64] + 32] = _7423
            mem[mem[64] + 64] = 160
            _7487 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 192
            while idx < _7487:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _7487) + 192
            _7551 = mem[_261]
            mem[mem[64] + (32 * _7487) + 192] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _7487) + 224
            while idx < _7551:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_7479 + 128] = (32 * _7487) + (32 * _7551) + 224
            _7599 = mem[_398]
            mem[_7479 + (32 * _7487) + (32 * _7551) + 224] = mem[_398]
            idx = 0
            s = _398 + 32
            t = _7479 + (32 * _7487) + (32 * _7551) + 256
            while idx < _7599:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _7479 + (32 * _7487) + (32 * _7551) + (32 * _7599) + -mem[64] + 256
        if 1 >= mem[_550]:
            revert with 'NH{q', 50
        _5602 = mem[_550 + 64]
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        _5626 = mem[_550 + 128]
        if mem[_550 + 128] > -mem[_550 + 64] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 128] + mem[_550 + 64] < mem[_550 + 128]:
            revert with 0, 'SafeMath: addition overflow'
        _5746 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _5626 + _5602 / 2
        mem[mem[64] + 36] = 128
        _5758 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 164
        while idx < _5758:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_5746 + 68] = (32 * _5758) + 160
        _6590 = mem[_261]
        mem[_5746 + (32 * _5758) + 164] = mem[_261]
        idx = 0
        s = _261 + 32
        t = _5746 + (32 * _5758) + 196
        while idx < _6590:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_5746 + 100] = (32 * _5758) + (32 * _6590) + 192
        _7006 = mem[_398]
        mem[_5746 + (32 * _5758) + (32 * _6590) + 196] = mem[_398]
        idx = 0
        s = _398 + 32
        t = _5746 + (32 * _5758) + (32 * _6590) + 228
        while idx < _7006:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5746 + (32 * _5758) + (32 * _6590) + (32 * _7006) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7422 = mem[_7382]
        require mem[_7382] == mem[_7382]
        _7478 = mem[64]
        mem[mem[64]] = _5626 + _5602 / 2
        mem[mem[64] + 32] = _7422
        mem[mem[64] + 64] = 160
        _7486 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 192
        while idx < _7486:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_7478 + 96] = (32 * _7486) + 192
        _7550 = mem[_261]
        mem[_7478 + (32 * _7486) + 192] = mem[_261]
        idx = 0
        s = _261 + 32
        t = _7478 + (32 * _7486) + 224
        while idx < _7550:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_7478 + 128] = (32 * _7486) + (32 * _7550) + 224
        _7598 = mem[_398]
        mem[_7478 + (32 * _7486) + (32 * _7550) + 224] = mem[_398]
        idx = 0
        s = _398 + 32
        t = _7478 + (32 * _7486) + (32 * _7550) + 256
        while idx < _7598:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _7478 + (32 * _7486) + (32 * _7550) + (32 * _7598) + -mem[64] + 256
    if cd[36] - cd[4] and 381966 > -1 / cd[36] - cd[4]:
        revert with 'NH{q', 17
    if not cd[36] - cd[4]:
        revert with 'NH{q', 18
    if (381966 * cd[36]) - (381966 * cd[4]) / cd[36] - cd[4] != 381966:
        revert with 0, 'SafeMath: multiplication overflow'
    if 0 >= mem[_550]:
        revert with 'NH{q', 50
    if cd[4] > -((381966 * cd[36]) - (381966 * cd[4]) / 10^6) - 1:
        revert with 'NH{q', 17
    if cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6) < cd[4]:
        revert with 0, 'SafeMath: addition overflow'
    if 3 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 128] = cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6)
    if 2 >= mem[_550]:
        revert with 'NH{q', 50
    if not cd[36] - cd[4]:
        if 0 >= mem[_550]:
            revert with 'NH{q', 50
        if cd[4] > -1:
            revert with 'NH{q', 17
        if cd[4] < cd[4]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 160] = cd[4]
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 256] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_550 + 260] = cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6)
        mem[_550 + 292] = 128
        _619 = mem[ceil32(return_data.size) + 96]
        mem[_550 + 388] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = _550 + 420
        while idx < _619:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_550 + 324] = (32 * _619) + 160
        _736 = mem[_261]
        mem[_550 + (32 * _619) + 420] = mem[_261]
        idx = 0
        s = _261 + 32
        t = _550 + (32 * _619) + 452
        while idx < _736:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_550 + 356] = (32 * _619) + (32 * _736) + 192
        _1422 = mem[_398]
        mem[_550 + (32 * _619) + (32 * _736) + 452] = mem[_398]
        idx = 0
        s = _398 + 32
        t = _550 + (32 * _619) + (32 * _736) + 484
        while idx < _1422:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _550 + (32 * _619) + (32 * _736) + (32 * _1422) + -mem[64] + 480]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2167] == mem[_2167]
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 192] = mem[_2167]
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 128
        _2191 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 164
        while idx < _2191:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = (32 * _2191) + 160
        _2979 = mem[_261]
        mem[mem[64] + (32 * _2191) + 164] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _2191) + 196
        while idx < _2979:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = (32 * _2191) + (32 * _2979) + 192
        _3823 = mem[_398]
        mem[mem[64] + (32 * _2191) + (32 * _2979) + 196] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _2191) + (32 * _2979) + 228
        while idx < _3823:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args cd[4], 128, (32 * _2191) + 160, (32 * _2191) + (32 * _2979) + 192, mem[mem[64] + 132 len (32 * _2191) + (32 * _2979) + (32 * _3823) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4663 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4663] == mem[_4663]
        if 6 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 224] = mem[_4663]
        idx = 0
        while idx < 20:
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 224] > -mem[_550 + 128] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 192] > -mem[_550 + 160] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_550 + 192] + mem[_550 + 160] > mem[_550 + 224] + mem[_550 + 128]:
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                if 1 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 64] = mem[_550 + 160]
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 128]
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_550 + 192]
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if not mem[_550 + 96]:
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 96] = 0
                    if 2 >= mem[_550]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 128] = mem[_550 + 32]
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    _5880 = mem[_550 + 32]
                    _5881 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5880
                    mem[mem[64] + 36] = 128
                    _5949 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _5949:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5881 + 68] = (32 * _5949) + 160
                    _6589 = mem[_261]
                    mem[_5881 + (32 * _5949) + 164] = mem[_261]
                    s = 0
                    t = _261 + 32
                    u = _5881 + (32 * _5949) + 196
                    while s < _6589:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5881 + 100] = (32 * _5949) + (32 * _6589) + 192
                    _7005 = mem[_398]
                    mem[_5881 + (32 * _5949) + (32 * _6589) + 196] = mem[_398]
                    s = 0
                    t = _398 + 32
                    u = _5881 + (32 * _5949) + (32 * _6589) + 228
                    while s < _7005:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5881 + (32 * _5949) + (32 * _6589) + (32 * _7005) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7381] == mem[_7381]
                    if 5 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 192] = mem[_7381]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                    revert with 'NH{q', 17
                if not mem[_550 + 96]:
                    revert with 'NH{q', 18
                if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if not mem[_550 + 96]:
                    if 0 >= mem[_550]:
                        revert with 'NH{q', 50
                    if mem[_550 + 32] > -1:
                        revert with 'NH{q', 17
                    if mem[_550 + 32] < mem[_550 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 128] = mem[_550 + 32]
                    if 3 >= mem[_550]:
                        revert with 'NH{q', 50
                    _6058 = mem[_550 + 32]
                    _6059 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6058
                    mem[mem[64] + 36] = 128
                    _6128 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                    s = 0
                    t = ceil32(return_data.size) + 128
                    u = mem[64] + 164
                    while s < _6128:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = (32 * _6128) + 160
                    _6587 = mem[_261]
                    mem[mem[64] + (32 * _6128) + 164] = mem[_261]
                    s = 0
                    t = _261 + 32
                    u = mem[64] + (32 * _6128) + 196
                    while s < _6587:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_6059 + 100] = (32 * _6128) + (32 * _6587) + 192
                    _7003 = mem[_398]
                    mem[_6059 + (32 * _6128) + (32 * _6587) + 196] = mem[_398]
                    s = 0
                    t = _398 + 32
                    u = _6059 + (32 * _6128) + (32 * _6587) + 228
                    while s < _7003:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6059 + (32 * _6128) + (32 * _6587) + (32 * _7003) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7379] == mem[_7379]
                    if 5 >= mem[_550]:
                        revert with 'NH{q', 50
                    mem[_550 + 192] = mem[_7379]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_550 + 96] and 381966 > -1 / mem[_550 + 96]:
                    revert with 'NH{q', 17
                if not mem[_550 + 96]:
                    revert with 'NH{q', 18
                if 381966 * mem[_550 + 96] / mem[_550 + 96] != 381966:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -(381966 * mem[_550 + 96] / 10^6) - 1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 128] = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
                if 3 >= mem[_550]:
                    revert with 'NH{q', 50
                _6208 = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6208
                mem[mem[64] + 36] = 128
                _6269 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _6269:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _6269) + 160
                _6586 = mem[_261]
                mem[mem[64] + (32 * _6269) + 164] = mem[_261]
                idx = 0
                s = _261 + 32
                t = mem[64] + (32 * _6269) + 196
                while idx < _6586:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = (32 * _6269) + (32 * _6586) + 192
                _7002 = mem[_398]
                mem[mem[64] + (32 * _6269) + (32 * _6586) + 196] = mem[_398]
                idx = 0
                s = _398 + 32
                t = mem[64] + (32 * _6269) + (32 * _6586) + 228
                while idx < _7002:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args _6208, 128, (32 * _6269) + 160, (32 * _6269) + (32 * _6586) + 192, mem[mem[64] + 132 len (32 * _6269) + (32 * _6586) + (32 * _7002) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7378] == mem[_7378]
                if 5 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 192] = mem[_7378]
                if _6269 == -1:
                    revert with 'NH{q', 17
                s = _6269 + 1
                continue 
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 32] = mem[_550 + 128]
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 128] = mem[_550 + 160]
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 192] = mem[_550 + 224]
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if not mem[_550 + 96]:
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 96] = 0
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 32]
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                _5878 = mem[_550 + 32]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _5878
                mem[mem[64] + 36] = 128
                _5948 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _5948:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _5948) + 160
                _6585 = mem[_261]
                mem[mem[64] + (32 * _5948) + 164] = mem[_261]
                s = 0
                t = _261 + 32
                u = mem[64] + (32 * _5948) + 196
                while s < _6585:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = (32 * _5948) + (32 * _6585) + 192
                _7001 = mem[_398]
                mem[mem[64] + (32 * _5948) + (32 * _6585) + 196] = mem[_398]
                s = 0
                t = _398 + 32
                u = mem[64] + (32 * _5948) + (32 * _6585) + 228
                while s < _7001:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args _5878, 128, (32 * _5948) + 160, (32 * _5948) + (32 * _6585) + 192, mem[mem[64] + 132 len (32 * _5948) + (32 * _6585) + (32 * _7001) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7377] == mem[_7377]
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_7377]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                revert with 'NH{q', 17
            if not mem[_550 + 96]:
                revert with 'NH{q', 18
            if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if not mem[_550 + 96]:
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 32]
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                _6054 = mem[_550 + 32]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6054
                mem[mem[64] + 36] = 128
                _6126 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _6126:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _6126) + 160
                _6583 = mem[_261]
                mem[mem[64] + (32 * _6126) + 164] = mem[_261]
                s = 0
                t = _261 + 32
                u = mem[64] + (32 * _6126) + 196
                while s < _6583:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = (32 * _6126) + (32 * _6583) + 192
                _6999 = mem[_398]
                mem[mem[64] + (32 * _6126) + (32 * _6583) + 196] = mem[_398]
                s = 0
                t = _398 + 32
                u = mem[64] + (32 * _6126) + (32 * _6583) + 228
                while s < _6999:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args _6054, 128, (32 * _6126) + 160, (32 * _6126) + (32 * _6583) + 192, mem[mem[64] + 132 len (32 * _6126) + (32 * _6583) + (32 * _6999) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7375] == mem[_7375]
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_7375]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                revert with 'NH{q', 17
            if not mem[_550 + 96]:
                revert with 'NH{q', 18
            if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 32] > -(618034 * mem[_550 + 96] / 10^6) - 1:
                revert with 'NH{q', 17
            if mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 160] = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            _6206 = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
            _6207 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _6206
            mem[mem[64] + 36] = 128
            _6268 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 164
            while s < _6268:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (32 * _6268) + 160
            _6582 = mem[_261]
            mem[mem[64] + (32 * _6268) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _6268) + 196
            while idx < _6582:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_6207 + 100] = (32 * _6268) + (32 * _6582) + 192
            _6998 = mem[_398]
            mem[_6207 + (32 * _6268) + (32 * _6582) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = _6207 + (32 * _6268) + (32 * _6582) + 228
            while idx < _6998:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _6207 + (32 * _6268) + (32 * _6582) + (32 * _6998) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7374] == mem[_7374]
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 224] = mem[_7374]
            if _6268 == -1:
                revert with 'NH{q', 17
            s = _6268 + 1
            continue 
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        if 6 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 224] > -mem[_550 + 128] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 192] > -mem[_550 + 160] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_550 + 192] + mem[_550 + 160] > mem[_550 + 224] + mem[_550 + 128]:
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            _5596 = mem[_550 + 160]
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            _5623 = mem[_550 + 32]
            if mem[_550 + 32] > -mem[_550 + 160] - 1:
                revert with 'NH{q', 17
            if mem[_550 + 32] + mem[_550 + 160] < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _5623 + _5596 / 2
            mem[mem[64] + 36] = 128
            _5757 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 164
            while idx < _5757:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * _5757) + 160
            _6581 = mem[_261]
            mem[mem[64] + (32 * _5757) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _5757) + 196
            while idx < _6581:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * _5757) + (32 * _6581) + 192
            _6997 = mem[_398]
            mem[mem[64] + (32 * _5757) + (32 * _6581) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = mem[64] + (32 * _5757) + (32 * _6581) + 228
            while idx < _6997:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args Mask(255, 1, _5623 + _5596), 128, (32 * _5757) + 160, (32 * _5757) + (32 * _6581) + 192, mem[mem[64] + 132 len (32 * _5757) + (32 * _6581) + (32 * _6997) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7413 = mem[_7373]
            require mem[_7373] == mem[_7373]
            mem[mem[64]] = _5623 + _5596 / 2
            mem[mem[64] + 32] = _7413
            mem[mem[64] + 64] = 160
            _7485 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 192
            while idx < _7485:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * _7485) + 192
            _7549 = mem[_261]
            mem[mem[64] + (32 * _7485) + 192] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _7485) + 224
            while idx < _7549:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * _7485) + (32 * _7549) + 224
            _7597 = mem[_398]
            mem[mem[64] + (32 * _7485) + (32 * _7549) + 224] = mem[_398]
            idx = 0
            s = _398 + 32
            t = mem[64] + (32 * _7485) + (32 * _7549) + 256
            while idx < _7597:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Mask(255, 1, _5623 + _5596), 
                   _7413,
                   160,
                   (32 * _7485) + 192,
                   (32 * _7485) + (32 * _7549) + 224,
                   mem[mem[64] + 160 len (32 * _7485) + (32 * _7549) + (32 * _7597) + 96]
        if 1 >= mem[_550]:
            revert with 'NH{q', 50
        _5594 = mem[_550 + 64]
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        _5622 = mem[_550 + 128]
        if mem[_550 + 128] > -mem[_550 + 64] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 128] + mem[_550 + 64] < mem[_550 + 128]:
            revert with 0, 'SafeMath: addition overflow'
        _5742 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _5622 + _5594 / 2
        mem[mem[64] + 36] = 128
        _5756 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 164
        while idx < _5756:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = (32 * _5756) + 160
        _6580 = mem[_261]
        mem[mem[64] + (32 * _5756) + 164] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _5756) + 196
        while idx < _6580:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_5742 + 100] = (32 * _5756) + (32 * _6580) + 192
        _6996 = mem[_398]
        mem[_5742 + (32 * _5756) + (32 * _6580) + 196] = mem[_398]
        idx = 0
        s = _398 + 32
        t = _5742 + (32 * _5756) + (32 * _6580) + 228
        while idx < _6996:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5742 + (32 * _5756) + (32 * _6580) + (32 * _6996) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7412 = mem[_7372]
        require mem[_7372] == mem[_7372]
        mem[mem[64]] = _5622 + _5594 / 2
        mem[mem[64] + 32] = _7412
        mem[mem[64] + 64] = 160
        _7484 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 192
        while idx < _7484:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * _7484) + 192
        _7548 = mem[_261]
        mem[mem[64] + (32 * _7484) + 192] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _7484) + 224
        while idx < _7548:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * _7484) + (32 * _7548) + 224
        _7596 = mem[_398]
        mem[mem[64] + (32 * _7484) + (32 * _7548) + 224] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _7484) + (32 * _7548) + 256
        while idx < _7596:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Mask(255, 1, _5622 + _5594), 
               _7412,
               160,
               (32 * _7484) + 192,
               (32 * _7484) + (32 * _7548) + 224,
               mem[mem[64] + 160 len (32 * _7484) + (32 * _7548) + (32 * _7596) + 96]
    if cd[36] - cd[4] and 618034 > -1 / cd[36] - cd[4]:
        revert with 'NH{q', 17
    if not cd[36] - cd[4]:
        revert with 'NH{q', 18
    if (618034 * cd[36]) - (618034 * cd[4]) / cd[36] - cd[4] != 618034:
        revert with 0, 'SafeMath: multiplication overflow'
    if 0 >= mem[_550]:
        revert with 'NH{q', 50
    if cd[4] > -((618034 * cd[36]) - (618034 * cd[4]) / 10^6) - 1:
        revert with 'NH{q', 17
    if cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6) < cd[4]:
        revert with 0, 'SafeMath: addition overflow'
    if 4 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 160] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
    if 3 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 256] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[_550 + 260] = cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6)
    mem[_550 + 292] = 128
    _635 = mem[ceil32(return_data.size) + 96]
    mem[_550 + 388] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = _550 + 420
    while idx < _635:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_550 + 324] = (32 * _635) + 160
    _735 = mem[_261]
    mem[_550 + (32 * _635) + 420] = mem[_261]
    idx = 0
    s = _261 + 32
    t = _550 + (32 * _635) + 452
    while idx < _735:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_550 + 356] = (32 * _635) + (32 * _735) + 192
    _1421 = mem[_398]
    mem[_550 + (32 * _635) + (32 * _735) + 452] = mem[_398]
    idx = 0
    s = _398 + 32
    t = _550 + (32 * _635) + (32 * _735) + 484
    while idx < _1421:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _550 + (32 * _635) + (32 * _735) + (32 * _1421) + -mem[64] + 480]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2166 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2166] == mem[_2166]
    if 5 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 192] = mem[_2166]
    if 4 >= mem[_550]:
        revert with 'NH{q', 50
    _2183 = mem[64]
    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
    mem[mem[64] + 36] = 128
    _2190 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 164
    while idx < _2190:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_2183 + 68] = (32 * _2190) + 160
    _2978 = mem[_261]
    mem[_2183 + (32 * _2190) + 164] = mem[_261]
    idx = 0
    s = _261 + 32
    t = _2183 + (32 * _2190) + 196
    while idx < _2978:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_2183 + 100] = (32 * _2190) + (32 * _2978) + 192
    _3822 = mem[_398]
    mem[_2183 + (32 * _2190) + (32 * _2978) + 196] = mem[_398]
    idx = 0
    s = _398 + 32
    t = _2183 + (32 * _2190) + (32 * _2978) + 228
    while idx < _3822:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _2183 + (32 * _2190) + (32 * _2978) + (32 * _3822) + -mem[64] + 224]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4662 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_4662] == mem[_4662]
    if 6 >= mem[_550]:
        revert with 'NH{q', 50
    mem[_550 + 224] = mem[_4662]
    idx = 0
    while idx < 20:
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        if 6 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 224] > -mem[_550 + 128] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 192] > -mem[_550 + 160] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_550 + 192] + mem[_550 + 160] <= mem[_550 + 224] + mem[_550 + 128]:
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 32] = mem[_550 + 128]
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 128] = mem[_550 + 160]
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 192] = mem[_550 + 224]
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if not mem[_550 + 96]:
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 96] = 0
                if 2 >= mem[_550]:
                    revert with 'NH{q', 50
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 32]
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                _5874 = mem[_550 + 32]
                _5875 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _5874
                mem[mem[64] + 36] = 128
                _5946 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _5946:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _5946) + 160
                _6575 = mem[_261]
                mem[mem[64] + (32 * _5946) + 164] = mem[_261]
                s = 0
                t = _261 + 32
                u = mem[64] + (32 * _5946) + 196
                while s < _6575:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_5875 + 100] = (32 * _5946) + (32 * _6575) + 192
                _6991 = mem[_398]
                mem[_5875 + (32 * _5946) + (32 * _6575) + 196] = mem[_398]
                s = 0
                t = _398 + 32
                u = _5875 + (32 * _5946) + (32 * _6575) + 228
                while s < _6991:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _5875 + (32 * _5946) + (32 * _6575) + (32 * _6991) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7367] == mem[_7367]
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_7367]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                revert with 'NH{q', 17
            if not mem[_550 + 96]:
                revert with 'NH{q', 18
            if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if not mem[_550 + 96]:
                if 0 >= mem[_550]:
                    revert with 'NH{q', 50
                if mem[_550 + 32] > -1:
                    revert with 'NH{q', 17
                if mem[_550 + 32] < mem[_550 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 160] = mem[_550 + 32]
                if 4 >= mem[_550]:
                    revert with 'NH{q', 50
                _6044 = mem[_550 + 32]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6044
                mem[mem[64] + 36] = 128
                _6122 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
                s = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 164
                while s < _6122:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (32 * _6122) + 160
                _6573 = mem[_261]
                mem[mem[64] + (32 * _6122) + 164] = mem[_261]
                s = 0
                t = _261 + 32
                u = mem[64] + (32 * _6122) + 196
                while s < _6573:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = (32 * _6122) + (32 * _6573) + 192
                _6989 = mem[_398]
                mem[mem[64] + (32 * _6122) + (32 * _6573) + 196] = mem[_398]
                s = 0
                t = _398 + 32
                u = mem[64] + (32 * _6122) + (32 * _6573) + 228
                while s < _6989:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args _6044, 128, (32 * _6122) + 160, (32 * _6122) + (32 * _6573) + 192, mem[mem[64] + 132 len (32 * _6122) + (32 * _6573) + (32 * _6989) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7365] == mem[_7365]
                if 6 >= mem[_550]:
                    revert with 'NH{q', 50
                mem[_550 + 224] = mem[_7365]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
                revert with 'NH{q', 17
            if not mem[_550 + 96]:
                revert with 'NH{q', 18
            if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 32] > -(618034 * mem[_550 + 96] / 10^6) - 1:
                revert with 'NH{q', 17
            if mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 160] = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
            if 4 >= mem[_550]:
                revert with 'NH{q', 50
            _6202 = mem[_550 + 32] + (618034 * mem[_550 + 96] / 10^6)
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _6202
            mem[mem[64] + 36] = 128
            _6266 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 164
            while s < _6266:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (32 * _6266) + 160
            _6572 = mem[_261]
            mem[mem[64] + (32 * _6266) + 164] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + (32 * _6266) + 196
            while idx < _6572:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * _6266) + (32 * _6572) + 192
            _6988 = mem[_398]
            mem[mem[64] + (32 * _6266) + (32 * _6572) + 196] = mem[_398]
            idx = 0
            s = _398 + 32
            t = mem[64] + (32 * _6266) + (32 * _6572) + 228
            while idx < _6988:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args _6202, 128, (32 * _6266) + 160, (32 * _6266) + (32 * _6572) + 192, mem[mem[64] + 132 len (32 * _6266) + (32 * _6572) + (32 * _6988) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7364] == mem[_7364]
            if 6 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 224] = mem[_7364]
            if _6266 == -1:
                revert with 'NH{q', 17
            s = _6266 + 1
            continue 
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        if 1 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 64] = mem[_550 + 160]
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        if 4 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 160] = mem[_550 + 128]
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        if 6 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 224] = mem[_550 + 192]
        if 2 >= mem[_550]:
            revert with 'NH{q', 50
        if not mem[_550 + 96]:
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 96] = 0
            if 2 >= mem[_550]:
                revert with 'NH{q', 50
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 32] > -1:
                revert with 'NH{q', 17
            if mem[_550 + 32] < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 128] = mem[_550 + 32]
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            _5876 = mem[_550 + 32]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _5876
            mem[mem[64] + 36] = 128
            _5947 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 164
            while s < _5947:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (32 * _5947) + 160
            _6579 = mem[_261]
            mem[mem[64] + (32 * _5947) + 164] = mem[_261]
            s = 0
            t = _261 + 32
            u = mem[64] + (32 * _5947) + 196
            while s < _6579:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = (32 * _5947) + (32 * _6579) + 192
            _6995 = mem[_398]
            mem[mem[64] + (32 * _5947) + (32 * _6579) + 196] = mem[_398]
            s = 0
            t = _398 + 32
            u = mem[64] + (32 * _5947) + (32 * _6579) + 228
            while s < _6995:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args _5876, 128, (32 * _5947) + 160, (32 * _5947) + (32 * _6579) + 192, mem[mem[64] + 132 len (32 * _5947) + (32 * _6579) + (32 * _6995) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7371] == mem[_7371]
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 192] = mem[_7371]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if mem[_550 + 96] and 618034 > -1 / mem[_550 + 96]:
            revert with 'NH{q', 17
        if not mem[_550 + 96]:
            revert with 'NH{q', 18
        if 618034 * mem[_550 + 96] / mem[_550 + 96] != 618034:
            revert with 0, 'SafeMath: multiplication overflow'
        if 2 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 96] = 618034 * mem[_550 + 96] / 10^6
        if 2 >= mem[_550]:
            revert with 'NH{q', 50
        if not mem[_550 + 96]:
            if 0 >= mem[_550]:
                revert with 'NH{q', 50
            if mem[_550 + 32] > -1:
                revert with 'NH{q', 17
            if mem[_550 + 32] < mem[_550 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 128] = mem[_550 + 32]
            if 3 >= mem[_550]:
                revert with 'NH{q', 50
            _6048 = mem[_550 + 32]
            _6049 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _6048
            mem[mem[64] + 36] = 128
            _6124 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 164
            while s < _6124:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_6049 + 68] = (32 * _6124) + 160
            _6577 = mem[_261]
            mem[_6049 + (32 * _6124) + 164] = mem[_261]
            s = 0
            t = _261 + 32
            u = _6049 + (32 * _6124) + 196
            while s < _6577:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_6049 + 100] = (32 * _6124) + (32 * _6577) + 192
            _6993 = mem[_398]
            mem[_6049 + (32 * _6124) + (32 * _6577) + 196] = mem[_398]
            s = 0
            t = _398 + 32
            u = _6049 + (32 * _6124) + (32 * _6577) + 228
            while s < _6993:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _6049 + (32 * _6124) + (32 * _6577) + (32 * _6993) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7369] == mem[_7369]
            if 5 >= mem[_550]:
                revert with 'NH{q', 50
            mem[_550 + 192] = mem[_7369]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if mem[_550 + 96] and 381966 > -1 / mem[_550 + 96]:
            revert with 'NH{q', 17
        if not mem[_550 + 96]:
            revert with 'NH{q', 18
        if 381966 * mem[_550 + 96] / mem[_550 + 96] != 381966:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 >= mem[_550]:
            revert with 'NH{q', 50
        if mem[_550 + 32] > -(381966 * mem[_550 + 96] / 10^6) - 1:
            revert with 'NH{q', 17
        if mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6) < mem[_550 + 32]:
            revert with 0, 'SafeMath: addition overflow'
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 128] = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        _6204 = mem[_550 + 32] + (381966 * mem[_550 + 96] / 10^6)
        _6205 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _6204
        mem[mem[64] + 36] = 128
        _6267 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
        s = 0
        t = ceil32(return_data.size) + 128
        u = mem[64] + 164
        while s < _6267:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (32 * _6267) + 160
        _6576 = mem[_261]
        mem[mem[64] + (32 * _6267) + 164] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _6267) + 196
        while idx < _6576:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = (32 * _6267) + (32 * _6576) + 192
        _6992 = mem[_398]
        mem[mem[64] + (32 * _6267) + (32 * _6576) + 196] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _6267) + (32 * _6576) + 228
        while idx < _6992:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _6205 + (32 * _6267) + (32 * _6576) + (32 * _6992) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7368 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7368] == mem[_7368]
        if 5 >= mem[_550]:
            revert with 'NH{q', 50
        mem[_550 + 192] = mem[_7368]
        if _6267 == -1:
            revert with 'NH{q', 17
        s = _6267 + 1
        continue 
    if 3 >= mem[_550]:
        revert with 'NH{q', 50
    if 6 >= mem[_550]:
        revert with 'NH{q', 50
    if mem[_550 + 224] > -mem[_550 + 128] - 1:
        revert with 'NH{q', 17
    if mem[_550 + 224] + mem[_550 + 128] < mem[_550 + 224]:
        revert with 0, 'SafeMath: addition overflow'
    if 4 >= mem[_550]:
        revert with 'NH{q', 50
    if 5 >= mem[_550]:
        revert with 'NH{q', 50
    if mem[_550 + 192] > -mem[_550 + 160] - 1:
        revert with 'NH{q', 17
    if mem[_550 + 192] + mem[_550 + 160] < mem[_550 + 192]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_550 + 192] + mem[_550 + 160] <= mem[_550 + 224] + mem[_550 + 128]:
        if 1 >= mem[_550]:
            revert with 'NH{q', 50
        _5586 = mem[_550 + 64]
        if 3 >= mem[_550]:
            revert with 'NH{q', 50
        _5618 = mem[_550 + 128]
        if mem[_550 + 128] > -mem[_550 + 64] - 1:
            revert with 'NH{q', 17
        if mem[_550 + 128] + mem[_550 + 64] < mem[_550 + 128]:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _5618 + _5586 / 2
        mem[mem[64] + 36] = 128
        _5754 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 164
        while idx < _5754:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = (32 * _5754) + 160
        _6570 = mem[_261]
        mem[mem[64] + (32 * _5754) + 164] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _5754) + 196
        while idx < _6570:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = (32 * _5754) + (32 * _6570) + 192
        _6986 = mem[_398]
        mem[mem[64] + (32 * _5754) + (32 * _6570) + 196] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _5754) + (32 * _6570) + 228
        while idx < _6986:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args Mask(255, 1, _5618 + _5586), 128, (32 * _5754) + 160, (32 * _5754) + (32 * _6570) + 192, mem[mem[64] + 132 len (32 * _5754) + (32 * _6570) + (32 * _6986) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7362 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7402 = mem[_7362]
        require mem[_7362] == mem[_7362]
        mem[mem[64]] = _5618 + _5586 / 2
        mem[mem[64] + 32] = _7402
        mem[mem[64] + 64] = 160
        _7482 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 192
        while idx < _7482:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * _7482) + 192
        _7546 = mem[_261]
        mem[mem[64] + (32 * _7482) + 192] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + (32 * _7482) + 224
        while idx < _7546:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * _7482) + (32 * _7546) + 224
        _7594 = mem[_398]
        mem[mem[64] + (32 * _7482) + (32 * _7546) + 224] = mem[_398]
        idx = 0
        s = _398 + 32
        t = mem[64] + (32 * _7482) + (32 * _7546) + 256
        while idx < _7594:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Mask(255, 1, _5618 + _5586), 
               _7402,
               160,
               (32 * _7482) + 192,
               (32 * _7482) + (32 * _7546) + 224,
               mem[mem[64] + 160 len (32 * _7482) + (32 * _7546) + (32 * _7594) + 96]
    if 4 >= mem[_550]:
        revert with 'NH{q', 50
    _5588 = mem[_550 + 160]
    if 0 >= mem[_550]:
        revert with 'NH{q', 50
    _5619 = mem[_550 + 32]
    if mem[_550 + 32] > -mem[_550 + 160] - 1:
        revert with 'NH{q', 17
    if mem[_550 + 32] + mem[_550 + 160] < mem[_550 + 32]:
        revert with 0, 'SafeMath: addition overflow'
    _5739 = mem[64]
    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _5619 + _5588 / 2
    mem[mem[64] + 36] = 128
    _5755 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 132] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 164
    while idx < _5755:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_5739 + 68] = (32 * _5755) + 160
    _6571 = mem[_261]
    mem[_5739 + (32 * _5755) + 164] = mem[_261]
    idx = 0
    s = _261 + 32
    t = _5739 + (32 * _5755) + 196
    while idx < _6571:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_5739 + 100] = (32 * _5755) + (32 * _6571) + 192
    _6987 = mem[_398]
    mem[_5739 + (32 * _5755) + (32 * _6571) + 196] = mem[_398]
    idx = 0
    s = _398 + 32
    t = _5739 + (32 * _5755) + (32 * _6571) + 228
    while idx < _6987:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _5739 + (32 * _5755) + (32 * _6571) + (32 * _6987) + -mem[64] + 224]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _7363 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _7403 = mem[_7363]
    require mem[_7363] == mem[_7363]
    mem[mem[64]] = _5619 + _5588 / 2
    mem[mem[64] + 32] = _7403
    mem[mem[64] + 64] = 160
    _7483 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 192
    while idx < _7483:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 96] = (32 * _7483) + 192
    _7547 = mem[_261]
    mem[mem[64] + (32 * _7483) + 192] = mem[_261]
    idx = 0
    s = _261 + 32
    t = mem[64] + (32 * _7483) + 224
    while idx < _7547:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 128] = (32 * _7483) + (32 * _7547) + 224
    _7595 = mem[_398]
    mem[mem[64] + (32 * _7483) + (32 * _7547) + 224] = mem[_398]
    idx = 0
    s = _398 + 32
    t = mem[64] + (32 * _7483) + (32 * _7547) + 256
    while idx < _7595:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Mask(255, 1, _5619 + _5588), 
           _7403,
           160,
           (32 * _7483) + 192,
           (32 * _7483) + (32 * _7547) + 224,
           mem[mem[64] + 160 len (32 * _7483) + (32 * _7547) + (32 * _7595) + 96]
}



}
