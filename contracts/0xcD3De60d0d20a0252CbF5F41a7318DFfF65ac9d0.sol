contract main {




// =====================  Runtime code  =====================


#
#  - sub_1bd18bb7(?)
#
address owner;
address operatorAddress;
address stor2;
mapping of uint256 stor3;
address stor4;

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

function sub_184eee3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function sub_a0f0ca17(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = arg2
}

function sub_97fa37ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor3[address(arg1)] and arg2 > -1 / stor3[address(arg1)]:
        revert with 'NH{q', 17
    return (stor3[address(arg1)] * arg2)
}

function sub_8e1497c1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if stor3[address(arg2)] and arg3 > -1 / stor3[address(arg2)]:
        revert with 'NH{q', 17
    if not stor3[address(arg1)]:
        revert with 'NH{q', 18
    return (stor3[address(arg2)] * arg3 / stor3[address(arg1)])
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

function sub_7dc09a8e(?) payable {
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
    _66 = mem[(32 * ('cd', 36).length - 1) + 128]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _68 = mem[128]
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
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor3[address(_66)] and ext_call.return_data[0] > -1 / stor3[address(_66)]:
        revert with 'NH{q', 17
    if not stor3[address(_68)]:
        revert with 'NH{q', 18
    return (stor3[address(_66)] * ext_call.return_data[0] / stor3[address(_68)])
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
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _89 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = stor2
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = cd[4]
    require ext_code.size(address(_89))
    call address(_89).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, cd[4]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 99
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
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 199] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    _135 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 327] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359
    while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xc1e6e23a with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 295 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359 len 32 * _135]), (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224, address(this.address)
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] and ext_call.return_data[0] > -1 / stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] * ext_call.return_data[0] / stor3[mem[140 len 20]] <= cd[4]:
        revert with 0, 'arb failed'
    return ext_call.return_data[0]
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
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    mem[0] = mem[(32 * ('cd', 36).length - 1) + 140 len 20]
    mem[32] = 3
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] and ext_call.return_data[0] > -1 / stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] * ext_call.return_data[0] / stor3[mem[140 len 20]] <= cd[4]:
        return 0
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _258 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 103] = stor2
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 135] = cd[4]
    require ext_code.size(address(_258))
    call address(_258).0xa9059cbb with:
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
    _287 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 295] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 327
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = (32 * ('cd', 36).length) + (32 * _287) + 224
    _306 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _287) + 327] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _287) + 359
    while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xc1e6e23a with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 295 len (32 * ('cd', 36).length) + (32 * _287) + 32], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _287) + 359 len 32 * _306]), (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * _287) + 224, address(this.address)
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] and ext_call.return_data[0] > -1 / stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] * ext_call.return_data[0] / stor3[mem[140 len 20]] <= cd[4]:
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
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    mem[0] = mem[(32 * ('cd', 36).length - 1) + 140 len 20]
    mem[32] = 3
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] and ext_call.return_data[0] > -1 / stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] * ext_call.return_data[0] / stor3[mem[140 len 20]] <= cd[4]:
        return 0
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _258 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 103] = stor2
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 135] = cd[4]
    require ext_code.size(address(_258))
    call address(_258).0xa9059cbb with:
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
    _287 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 295] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 327
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = (32 * ('cd', 36).length) + (32 * _287) + 224
    _306 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _287) + 327] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _287) + 359
    while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xc1e6e23a with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 295 len (32 * ('cd', 36).length) + (32 * _287) + 32], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98], mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + (32 * _287) + 359 len 32 * _306]), (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * _287) + 224, address(this.address)
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] and ext_call.return_data[0] > -1 / stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * ('cd', 36).length - 1) + 128])] * ext_call.return_data[0] / stor3[mem[140 len 20]] <= cd[4]:
        revert with 0, 'arb failed'
    return ext_call.return_data[0]
}

function sub_7277353b(?) payable {
    require calldata.size - 4 >= 64
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
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 13
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 546
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 416] = call.data[calldata.size len 416]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _220 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_220))
        staticcall address(_220).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _246 = mem[_235]
        require mem[_235] == mem[_235]
        if mem[_235] / 10:
            _344 = mem[floor32(('cd', 4).length) + 97]
            s = 0
            while s < _344:
                if idx != s:
                    if s >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 162] = mem[(32 * s) + floor32(('cd', 4).length) + 141 len 20]
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _353 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _355 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 162]
                    mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _246 / 10
                    mem[mem[64] + 36] = address(_353)
                    mem[mem[64] + 68] = address(_355)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 164
                    while idx < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        _344 = mem[floor32(('cd', 4).length) + 97]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.0x69f74959 with:
                         gas gas_remaining wei
                        args _246 / 10, address(_353), address(_355), 128, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _443 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _444 = mem[_443]
                    require mem[_443] == mem[_443]
                    _449 = mem[_443 + 32]
                    require mem[_443 + 32] == mem[_443 + 44 len 20]
                    require mem[_443 + 64] == mem[_443 + 76 len 20]
                    if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 226] = mem[_443 + 76 len 20]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 194] = address(_449)
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] and _246 / 10 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]]:
                        revert with 'NH{q', 17
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10 > -1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                    mem[32] = 3
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] and _444 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]]:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _444 <= stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10:
                        _461 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                        mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _246 / 10
                        mem[mem[64] + 36] = address(_461)
                        mem[mem[64] + 68] = stor4
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 164
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            _344 = mem[floor32(('cd', 4).length) + 97]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0x69f74959 with:
                             gas gas_remaining wei
                            args _246 / 10, address(_461), stor4, 128, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _537 = mem[_535]
                        require mem[_535] == mem[_535]
                        _539 = mem[_535 + 32]
                        require mem[_535 + 32] == mem[_535 + 44 len 20]
                        require mem[_535 + 64] == mem[_535 + 76 len 20]
                        if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 226] = mem[_535 + 76 len 20]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 194] = address(_539)
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _549 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 162]
                        mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _537
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = address(_549)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 164
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            _344 = mem[floor32(('cd', 4).length) + 97]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0x69f74959 with:
                             gas gas_remaining wei
                            args _537, stor4, address(_549), 128, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _643 = mem[_641]
                        require mem[_641] == mem[_641]
                        _645 = mem[_641 + 32]
                        require mem[_641 + 32] == mem[_641 + 44 len 20]
                        require mem[_641 + 64] == mem[_641 + 76 len 20]
                        if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 290] = mem[_641 + 76 len 20]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 258] = address(_645)
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] and _246 / 10 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10 > -1:
                            revert with 'NH{q', 17
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                        mem[32] = 3
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] and _643 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _643 > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10:
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] and _246 / 10 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]]:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] and _643 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10 > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _643:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _643 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10:
                                revert with 'NH{q', 17
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 450] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                            if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 482] = stor4
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 514] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 322] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 206 len 20]
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 354] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 238 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 386] = address(_645)
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 418] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 302 len 20]
                    else:
                        _464 = sha3(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20], 3)
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] and _246 / 10 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]]:
                            revert with 'NH{q', 17
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                        mem[32] = 3
                        _467 = sha3(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20], 3)
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] and _444 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10 > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _444:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _444 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10:
                            revert with 'NH{q', 17
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 450] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 482] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                        if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 322] = address(_449)
                        if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 354] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 238 len 20]
                        if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 386] = 0
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _490 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                        mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _246 / 10
                        mem[mem[64] + 36] = address(_490)
                        mem[mem[64] + 68] = stor4
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 164
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            _344 = mem[floor32(('cd', 4).length) + 97]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0x69f74959 with:
                             gas gas_remaining wei
                            args _246 / 10, address(_490), stor4, 128, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _538 = mem[_536]
                        require mem[_536] == mem[_536]
                        _540 = mem[_536 + 32]
                        require mem[_536 + 32] == mem[_536 + 44 len 20]
                        require mem[_536 + 64] == mem[_536 + 76 len 20]
                        if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 226] = mem[_536 + 76 len 20]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 194] = address(_540)
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _551 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 162]
                        mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _538
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = address(_551)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 164
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            _344 = mem[floor32(('cd', 4).length) + 97]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0x69f74959 with:
                             gas gas_remaining wei
                            args _538, stor4, address(_551), 128, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _644 = mem[_642]
                        require mem[_642] == mem[_642]
                        _646 = mem[_642 + 32]
                        require mem[_642 + 32] == mem[_642 + 44 len 20]
                        require mem[_642 + 64] == mem[_642 + 76 len 20]
                        if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 290] = mem[_642 + 76 len 20]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 258] = address(_646)
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] and _246 / 10 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10 > (-1 * stor[_467] * _444) + (stor[_464] * _246 / 10) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                        mem[32] = 3
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] and _644 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _644 > (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10) + (stor[_467] * _444) - (stor[_464] * _246 / 10):
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] and _246 / 10 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]]:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] and _644 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10 > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _644:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]] * _644 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]] * _246 / 10:
                                revert with 'NH{q', 17
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 450] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                            if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 482] = stor4
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 514] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 174 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 322] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 206 len 20]
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 354] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 238 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 386] = address(_646)
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 418] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 302 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                _344 = mem[floor32(('cd', 4).length) + 97]
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if not mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 398 len 20]:
        _219 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 96] = 1
        mem[_219 + 128] = call.data[calldata.size]
        mem[_219 + 160] = 1
        mem[64] = _219 + 224
        mem[_219 + 192] = call.data[calldata.size]
        if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if 0 >= mem[_219]:
            revert with 'NH{q', 50
        mem[_219 + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 462 len 20]
        if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if 1 >= mem[_219]:
            revert with 'NH{q', 50
        mem[_219 + 64] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 494 len 20]
        if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if 0 >= mem[_219 + 96]:
            revert with 'NH{q', 50
        mem[_219 + 128] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 334 len 20]
        if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        mem[_219 + 192] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 366 len 20]
        mem[_219 + 224] = 96
        mem[_219 + 320] = mem[_219]
        idx = 0
        s = _219 + 32
        t = _219 + 352
        while idx < mem[_219]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_219 + 256] = (32 * mem[_219]) + 128
        mem[_219 + (32 * mem[_219]) + 352] = mem[_219 + 96]
        idx = 0
        s = _219 + 128
        t = _219 + (32 * mem[_219]) + 384
        while idx < mem[_219 + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_219 + 288] = (32 * mem[_219]) + (32 * mem[_219 + 96]) + 160
        mem[_219 + (32 * mem[_219]) + (32 * mem[_219 + 96]) + 384] = 1
        idx = 0
        s = _219 + 192
        t = _219 + (32 * mem[_219]) + (32 * mem[_219 + 96]) + 416
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _219 + (32 * mem[_219]) + (32 * mem[_219 + 96]) + -mem[64] + 448
    _218 = mem[64]
    mem[mem[64] + 32 len 96] = call.data[calldata.size len 96]
    mem[mem[64] + 128] = 2
    mem[mem[64] + 160 len 64] = call.data[calldata.size len 64]
    mem[mem[64] + 224] = 2
    mem[64] = mem[64] + 320
    mem[_218 + 256 len 64] = call.data[calldata.size len 64]
    if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 0 >= mem[_218]:
        revert with 'NH{q', 50
    mem[_218 + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 462 len 20]
    if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 1 >= mem[_218]:
        revert with 'NH{q', 50
    mem[_218 + 64] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 494 len 20]
    if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 2 >= mem[_218]:
        revert with 'NH{q', 50
    mem[_218 + 96] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 526 len 20]
    if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 0 >= mem[_218 + 128]:
        revert with 'NH{q', 50
    mem[_218 + 160] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 334 len 20]
    if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 0 >= mem[_218 + 224]:
        revert with 'NH{q', 50
    mem[_218 + 256] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 366 len 20]
    if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 1 >= mem[_218 + 128]:
        revert with 'NH{q', 50
    mem[_218 + 192] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 398 len 20]
    if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
        revert with 'NH{q', 50
    if 1 >= mem[_218 + 224]:
        revert with 'NH{q', 50
    mem[_218 + 288] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 430 len 20]
    mem[_218 + 320] = 96
    mem[_218 + 416] = mem[_218]
    idx = 0
    s = _218 + 32
    t = _218 + 448
    while idx < mem[_218]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_218 + 352] = (32 * mem[_218]) + 128
    mem[_218 + (32 * mem[_218]) + 448] = mem[_218 + 128]
    idx = 0
    s = _218 + 160
    t = _218 + (32 * mem[_218]) + 480
    while idx < mem[_218 + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_218 + 384] = (32 * mem[_218]) + (32 * mem[_218 + 128]) + 160
    mem[_218 + (32 * mem[_218]) + (32 * mem[_218 + 128]) + 480] = mem[_218 + 224]
    idx = 0
    s = _218 + 256
    t = _218 + (32 * mem[_218]) + (32 * mem[_218 + 128]) + 512
    while idx < mem[_218 + 224]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _218 + (32 * mem[_218]) + (32 * mem[_218 + 128]) + (32 * mem[_218 + 224]) + -mem[64] + 512
}

function sub_54734cb5(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
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
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99 > test266151307() or floor32(('cd', 132).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99] = 7
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 355
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131 len 224] = call.data[calldata.size len 224]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] = cd[4]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] = cd[36]
    if cd[4] > cd[36]:
        revert with 0, 'SafeMath: subtraction overflow'
    if cd[36] < cd[4]:
        revert with 'NH{q', 17
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = cd[36] - cd[4]
    if not cd[36] - cd[4]:
        if cd[4] > -1:
            revert with 'NH{q', 17
        if cd[4] < cd[4]:
            revert with 0, 'SafeMath: addition overflow'
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = cd[4]
        if not cd[36] - cd[4]:
            if cd[4] > -1:
                revert with 'NH{q', 17
            if cd[4] < cd[4]:
                revert with 0, 'SafeMath: addition overflow'
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = cd[4]
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _424 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _426 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 355] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 359] = cd[4]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 391] = 128
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 487] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 519
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 423] = (32 * ('cd', 132).length) + 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 519] = ('cd', 68).length
            idx = 0
            s = 128
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 551
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 455] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 551] = ('cd', 100).length
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 583
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + (32 * mem[floor32(('cd', 68).length) + 97]) + -mem[64] + 579]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1323 = mem[_1319]
            require mem[_1319] == mem[_1319]
            mem[0] = address(_424)
            mem[32] = 3
            if stor3[address(_424)] and _1323 > -1 / stor3[address(_424)]:
                revert with 'NH{q', 17
            if not stor3[address(_426)]:
                revert with 'NH{q', 18
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_424)] * _1323 / stor3[address(_426)]
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1358 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1366 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = mem[64] + 164
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * ('cd', 132).length) + 160
            mem[mem[64] + (32 * ('cd', 132).length) + 164] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + (32 * ('cd', 132).length) + 196
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            _2763 = mem[floor32(('cd', 68).length) + 97]
            mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 196] = mem[floor32(('cd', 68).length) + 97]
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 132).length, data=mem[mem[64] + 164 len (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + (32 * _2763) + 64]), (32 * ('cd', 132).length) + 160, (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3787 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3791 = mem[_3787]
            require mem[_3787] == mem[_3787]
            mem[0] = address(_1358)
            mem[32] = 3
            if stor3[address(_1358)] and _3791 > -1 / stor3[address(_1358)]:
                revert with 'NH{q', 17
            if not stor3[address(_1366)]:
                revert with 'NH{q', 18
            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_1358)] * _3791 / stor3[address(_1366)]
            idx = 0
            while idx < 20:
                if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] <= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]:
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5186 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5264 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5280 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5186
                        mem[mem[64] + 36] = 128
                        _5385 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5385:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5385) + 160
                        mem[mem[64] + (32 * _5385) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5385) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5385) + (32 * mem[96]) + 192
                        _6367 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5385) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5385) + (32 * mem[96]) + 228
                        while s < _6367:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5186, 128, (32 * _5385) + 160, (32 * _5385) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5385) + (32 * mem[96]) + (32 * _6367) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6719 = mem[_6687]
                        require mem[_6687] == mem[_6687]
                        mem[0] = address(_5264)
                        mem[32] = 3
                        if stor3[address(_5264)] and _6719 > -1 / stor3[address(_5264)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5280)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5264)] * _6719 / stor3[address(_5280)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5352 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5458 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5492 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5352
                            mem[mem[64] + 36] = 128
                            _5560 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5560:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5560) + 160
                            mem[mem[64] + (32 * _5560) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5560) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5560) + (32 * mem[96]) + 192
                            _6365 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5560) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5560) + (32 * mem[96]) + 228
                            while s < _6365:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5352, 128, (32 * _5560) + 160, (32 * _5560) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5560) + (32 * mem[96]) + (32 * _6365) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6685 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6717 = mem[_6685]
                            require mem[_6685] == mem[_6685]
                            mem[0] = address(_5458)
                            mem[32] = 3
                            if stor3[address(_5458)] and _6717 > -1 / stor3[address(_5458)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5492)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5458)] * _6717 / stor3[address(_5492)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5538 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5620 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5640 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5538
                            mem[mem[64] + 36] = 128
                            _5682 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5682:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5682) + 160
                            mem[mem[64] + (32 * _5682) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5682) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5682) + (32 * mem[96]) + 192
                            _6364 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5682) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5682) + (32 * mem[96]) + 228
                            while s < _6364:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5538, 128, (32 * _5682) + 160, (32 * _5682) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5682) + (32 * mem[96]) + (32 * _6364) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6684 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6716 = mem[_6684]
                            require mem[_6684] == mem[_6684]
                            mem[0] = address(_5620)
                            mem[32] = 3
                            if stor3[address(_5620)] and _6716 > -1 / stor3[address(_5620)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5640)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5620)] * _6716 / stor3[address(_5640)]
                else:
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5187 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5266 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5282 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5187
                        mem[mem[64] + 36] = 128
                        _5387 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5387:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5387) + 160
                        mem[mem[64] + (32 * _5387) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5387) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5387) + (32 * mem[96]) + 192
                        _6371 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5387) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5387) + (32 * mem[96]) + 228
                        while s < _6371:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5187, 128, (32 * _5387) + 160, (32 * _5387) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5387) + (32 * mem[96]) + (32 * _6371) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6723 = mem[_6691]
                        require mem[_6691] == mem[_6691]
                        mem[0] = address(_5266)
                        mem[32] = 3
                        if stor3[address(_5266)] and _6723 > -1 / stor3[address(_5266)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5282)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5266)] * _6723 / stor3[address(_5282)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5354 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5463 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5496 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5354
                            mem[mem[64] + 36] = 128
                            _5562 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5562:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5562) + 160
                            mem[mem[64] + (32 * _5562) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5562) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5562) + (32 * mem[96]) + 192
                            _6369 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5562) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5562) + (32 * mem[96]) + 228
                            while s < _6369:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5354, 128, (32 * _5562) + 160, (32 * _5562) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5562) + (32 * mem[96]) + (32 * _6369) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6721 = mem[_6689]
                            require mem[_6689] == mem[_6689]
                            mem[0] = address(_5463)
                            mem[32] = 3
                            if stor3[address(_5463)] and _6721 > -1 / stor3[address(_5463)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5496)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5463)] * _6721 / stor3[address(_5496)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 381966 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5539 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5624 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5642 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5539
                            mem[mem[64] + 36] = 128
                            _5683 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5683:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5683) + 160
                            mem[mem[64] + (32 * _5683) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5683) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5683) + (32 * mem[96]) + 192
                            _6368 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5683) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5683) + (32 * mem[96]) + 228
                            while s < _6368:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5539, 128, (32 * _5683) + 160, (32 * _5683) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5683) + (32 * mem[96]) + (32 * _6368) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6688 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6720 = mem[_6688]
                            require mem[_6688] == mem[_6688]
                            mem[0] = address(_5624)
                            mem[32] = 3
                            if stor3[address(_5624)] and _6720 > -1 / stor3[address(_5624)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5642)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5624)] * _6720 / stor3[address(_5642)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if cd[36] - cd[4] and 618034 > -1 / cd[36] - cd[4]:
                revert with 'NH{q', 17
            if not cd[36] - cd[4]:
                revert with 'NH{q', 18
            if (618034 * cd[36]) - (618034 * cd[4]) / cd[36] - cd[4] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if cd[4] > -((618034 * cd[36]) - (618034 * cd[4]) / 10^6) - 1:
                revert with 'NH{q', 17
            if cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6) < cd[4]:
                revert with 0, 'SafeMath: addition overflow'
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _448 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _453 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 355] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 359] = cd[4]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 391] = 128
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 487] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 519
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 423] = (32 * ('cd', 132).length) + 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 519] = ('cd', 68).length
            idx = 0
            s = 128
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 551
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 455] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 551] = ('cd', 100).length
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 583
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + (32 * mem[floor32(('cd', 68).length) + 97]) + -mem[64] + 579]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1322 = mem[_1318]
            require mem[_1318] == mem[_1318]
            mem[0] = address(_448)
            mem[32] = 3
            if stor3[address(_448)] and _1322 > -1 / stor3[address(_448)]:
                revert with 'NH{q', 17
            if not stor3[address(_453)]:
                revert with 'NH{q', 18
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_448)] * _1322 / stor3[address(_453)]
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1356 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1364 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = mem[64] + 164
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * ('cd', 132).length) + 160
            mem[mem[64] + (32 * ('cd', 132).length) + 164] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + (32 * ('cd', 132).length) + 196
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            _2762 = mem[floor32(('cd', 68).length) + 97]
            mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 196] = mem[floor32(('cd', 68).length) + 97]
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 32], mem[floor32(('cd', 68).length) + 97], mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228 len 32 * _2762]), (32 * ('cd', 132).length) + 160, (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3790 = mem[_3786]
            require mem[_3786] == mem[_3786]
            mem[0] = address(_1356)
            mem[32] = 3
            if stor3[address(_1356)] and _3790 > -1 / stor3[address(_1356)]:
                revert with 'NH{q', 17
            if not stor3[address(_1364)]:
                revert with 'NH{q', 18
            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_1356)] * _3790 / stor3[address(_1364)]
            idx = 0
            while idx < 20:
                if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] <= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]:
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5184 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5260 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5276 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5184
                        mem[mem[64] + 36] = 128
                        _5381 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5381:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5381) + 160
                        mem[mem[64] + (32 * _5381) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5381) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5381) + (32 * mem[96]) + 192
                        _6359 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5381) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5381) + (32 * mem[96]) + 228
                        while s < _6359:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5184, 128, (32 * _5381) + 160, (32 * _5381) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5381) + (32 * mem[96]) + (32 * _6359) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6679 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6711 = mem[_6679]
                        require mem[_6679] == mem[_6679]
                        mem[0] = address(_5260)
                        mem[32] = 3
                        if stor3[address(_5260)] and _6711 > -1 / stor3[address(_5260)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5276)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5260)] * _6711 / stor3[address(_5276)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5348 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5448 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5484 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5348
                            mem[mem[64] + 36] = 128
                            _5556 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5556:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5556) + 160
                            mem[mem[64] + (32 * _5556) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5556) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5556) + (32 * mem[96]) + 192
                            _6357 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5556) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5556) + (32 * mem[96]) + 228
                            while s < _6357:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5348, 128, (32 * _5556) + 160, (32 * _5556) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5556) + (32 * mem[96]) + (32 * _6357) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6677 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6709 = mem[_6677]
                            require mem[_6677] == mem[_6677]
                            mem[0] = address(_5448)
                            mem[32] = 3
                            if stor3[address(_5448)] and _6709 > -1 / stor3[address(_5448)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5484)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5448)] * _6709 / stor3[address(_5484)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5536 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5612 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5636 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5536
                            mem[mem[64] + 36] = 128
                            _5680 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5680:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5680) + 160
                            mem[mem[64] + (32 * _5680) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5680) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5680) + (32 * mem[96]) + 192
                            _6356 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5680) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5680) + (32 * mem[96]) + 228
                            while s < _6356:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5536, 128, (32 * _5680) + 160, (32 * _5680) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5680) + (32 * mem[96]) + (32 * _6356) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6676 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6708 = mem[_6676]
                            require mem[_6676] == mem[_6676]
                            mem[0] = address(_5612)
                            mem[32] = 3
                            if stor3[address(_5612)] and _6708 > -1 / stor3[address(_5612)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5636)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5612)] * _6708 / stor3[address(_5636)]
                else:
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5185 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5262 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5278 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5185
                        mem[mem[64] + 36] = 128
                        _5383 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5383:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5383) + 160
                        mem[mem[64] + (32 * _5383) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5383) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5383) + (32 * mem[96]) + 192
                        _6363 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5383) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5383) + (32 * mem[96]) + 228
                        while s < _6363:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5185, 128, (32 * _5383) + 160, (32 * _5383) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5383) + (32 * mem[96]) + (32 * _6363) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6683 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6715 = mem[_6683]
                        require mem[_6683] == mem[_6683]
                        mem[0] = address(_5262)
                        mem[32] = 3
                        if stor3[address(_5262)] and _6715 > -1 / stor3[address(_5262)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5278)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5262)] * _6715 / stor3[address(_5278)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5350 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5453 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5488 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5350
                            mem[mem[64] + 36] = 128
                            _5558 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5558:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5558) + 160
                            mem[mem[64] + (32 * _5558) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5558) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5558) + (32 * mem[96]) + 192
                            _6361 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5558) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5558) + (32 * mem[96]) + 228
                            while s < _6361:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5350, 128, (32 * _5558) + 160, (32 * _5558) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5558) + (32 * mem[96]) + (32 * _6361) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6681 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6713 = mem[_6681]
                            require mem[_6681] == mem[_6681]
                            mem[0] = address(_5453)
                            mem[32] = 3
                            if stor3[address(_5453)] and _6713 > -1 / stor3[address(_5453)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5488)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5453)] * _6713 / stor3[address(_5488)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 381966 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5537 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5616 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5638 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5537
                            mem[mem[64] + 36] = 128
                            _5681 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5681:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5681) + 160
                            mem[mem[64] + (32 * _5681) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5681) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5681) + (32 * mem[96]) + 192
                            _6360 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5681) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5681) + (32 * mem[96]) + 228
                            while s < _6360:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5537, 128, (32 * _5681) + 160, (32 * _5681) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5681) + (32 * mem[96]) + (32 * _6360) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6680 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6712 = mem[_6680]
                            require mem[_6680] == mem[_6680]
                            mem[0] = address(_5616)
                            mem[32] = 3
                            if stor3[address(_5616)] and _6712 > -1 / stor3[address(_5616)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5638)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5616)] * _6712 / stor3[address(_5638)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if cd[36] - cd[4] and 381966 > -1 / cd[36] - cd[4]:
            revert with 'NH{q', 17
        if not cd[36] - cd[4]:
            revert with 'NH{q', 18
        if (381966 * cd[36]) - (381966 * cd[4]) / cd[36] - cd[4] != 381966:
            revert with 0, 'SafeMath: multiplication overflow'
        if cd[4] > -((381966 * cd[36]) - (381966 * cd[4]) / 10^6) - 1:
            revert with 'NH{q', 17
        if cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6) < cd[4]:
            revert with 0, 'SafeMath: addition overflow'
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6)
        if not cd[36] - cd[4]:
            if cd[4] > -1:
                revert with 'NH{q', 17
            if cd[4] < cd[4]:
                revert with 0, 'SafeMath: addition overflow'
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = cd[4]
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _446 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _451 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 355] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 359] = cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6)
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 391] = 128
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 487] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 519
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 423] = (32 * ('cd', 132).length) + 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 519] = ('cd', 68).length
            idx = 0
            s = 128
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 551
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 455] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 551] = ('cd', 100).length
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 583
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + (32 * mem[floor32(('cd', 68).length) + 97]) + -mem[64] + 579]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1321 = mem[_1317]
            require mem[_1317] == mem[_1317]
            mem[0] = address(_446)
            mem[32] = 3
            if stor3[address(_446)] and _1321 > -1 / stor3[address(_446)]:
                revert with 'NH{q', 17
            if not stor3[address(_451)]:
                revert with 'NH{q', 18
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_446)] * _1321 / stor3[address(_451)]
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1354 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1362 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = mem[64] + 164
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * ('cd', 132).length) + 160
            mem[mem[64] + (32 * ('cd', 132).length) + 164] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + (32 * ('cd', 132).length) + 196
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            _2761 = mem[floor32(('cd', 68).length) + 97]
            mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 196] = mem[floor32(('cd', 68).length) + 97]
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 132).length, data=mem[mem[64] + 164 len (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 32], mem[floor32(('cd', 68).length) + 97], mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228 len 32 * _2761]), (32 * ('cd', 132).length) + 160, (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3785 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3789 = mem[_3785]
            require mem[_3785] == mem[_3785]
            mem[0] = address(_1354)
            mem[32] = 3
            if stor3[address(_1354)] and _3789 > -1 / stor3[address(_1354)]:
                revert with 'NH{q', 17
            if not stor3[address(_1362)]:
                revert with 'NH{q', 18
            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_1354)] * _3789 / stor3[address(_1362)]
            idx = 0
            while idx < 20:
                if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] <= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]:
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5182 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5256 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5272 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5182
                        mem[mem[64] + 36] = 128
                        _5377 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5377:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5377) + 160
                        mem[mem[64] + (32 * _5377) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5377) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5377) + (32 * mem[96]) + 192
                        _6351 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5377) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5377) + (32 * mem[96]) + 228
                        while s < _6351:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5182, 128, (32 * _5377) + 160, (32 * _5377) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5377) + (32 * mem[96]) + (32 * _6351) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6703 = mem[_6671]
                        require mem[_6671] == mem[_6671]
                        mem[0] = address(_5256)
                        mem[32] = 3
                        if stor3[address(_5256)] and _6703 > -1 / stor3[address(_5256)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5272)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5256)] * _6703 / stor3[address(_5272)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5344 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5438 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5476 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5344
                            mem[mem[64] + 36] = 128
                            _5552 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5552:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5552) + 160
                            mem[mem[64] + (32 * _5552) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5552) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5552) + (32 * mem[96]) + 192
                            _6349 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5552) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5552) + (32 * mem[96]) + 228
                            while s < _6349:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5344, 128, (32 * _5552) + 160, (32 * _5552) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5552) + (32 * mem[96]) + (32 * _6349) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6701 = mem[_6669]
                            require mem[_6669] == mem[_6669]
                            mem[0] = address(_5438)
                            mem[32] = 3
                            if stor3[address(_5438)] and _6701 > -1 / stor3[address(_5438)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5476)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5438)] * _6701 / stor3[address(_5476)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5534 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5604 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5632 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5534
                            mem[mem[64] + 36] = 128
                            _5678 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5678:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5678) + 160
                            mem[mem[64] + (32 * _5678) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5678) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5678) + (32 * mem[96]) + 192
                            _6348 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5678) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5678) + (32 * mem[96]) + 228
                            while s < _6348:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5534, 128, (32 * _5678) + 160, (32 * _5678) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5678) + (32 * mem[96]) + (32 * _6348) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6700 = mem[_6668]
                            require mem[_6668] == mem[_6668]
                            mem[0] = address(_5604)
                            mem[32] = 3
                            if stor3[address(_5604)] and _6700 > -1 / stor3[address(_5604)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5632)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5604)] * _6700 / stor3[address(_5632)]
                else:
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5183 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5258 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5274 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5183
                        mem[mem[64] + 36] = 128
                        _5379 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5379:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5379) + 160
                        mem[mem[64] + (32 * _5379) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5379) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5379) + (32 * mem[96]) + 192
                        _6355 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5379) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5379) + (32 * mem[96]) + 228
                        while s < _6355:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5183, 128, (32 * _5379) + 160, (32 * _5379) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5379) + (32 * mem[96]) + (32 * _6355) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6675 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6707 = mem[_6675]
                        require mem[_6675] == mem[_6675]
                        mem[0] = address(_5258)
                        mem[32] = 3
                        if stor3[address(_5258)] and _6707 > -1 / stor3[address(_5258)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5274)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5258)] * _6707 / stor3[address(_5274)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5346 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5443 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5480 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5346
                            mem[mem[64] + 36] = 128
                            _5554 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5554:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5554) + 160
                            mem[mem[64] + (32 * _5554) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5554) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5554) + (32 * mem[96]) + 192
                            _6353 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5554) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5554) + (32 * mem[96]) + 228
                            while s < _6353:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5346, 128, (32 * _5554) + 160, (32 * _5554) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5554) + (32 * mem[96]) + (32 * _6353) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6673 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6705 = mem[_6673]
                            require mem[_6673] == mem[_6673]
                            mem[0] = address(_5443)
                            mem[32] = 3
                            if stor3[address(_5443)] and _6705 > -1 / stor3[address(_5443)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5480)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5443)] * _6705 / stor3[address(_5480)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 381966 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5535 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5608 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5634 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5535
                            mem[mem[64] + 36] = 128
                            _5679 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5679:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5679) + 160
                            mem[mem[64] + (32 * _5679) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5679) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5679) + (32 * mem[96]) + 192
                            _6352 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5679) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5679) + (32 * mem[96]) + 228
                            while s < _6352:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5535, 128, (32 * _5679) + 160, (32 * _5679) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5679) + (32 * mem[96]) + (32 * _6352) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6672 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6704 = mem[_6672]
                            require mem[_6672] == mem[_6672]
                            mem[0] = address(_5608)
                            mem[32] = 3
                            if stor3[address(_5608)] and _6704 > -1 / stor3[address(_5608)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5634)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5608)] * _6704 / stor3[address(_5634)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if cd[36] - cd[4] and 618034 > -1 / cd[36] - cd[4]:
                revert with 'NH{q', 17
            if not cd[36] - cd[4]:
                revert with 'NH{q', 18
            if (618034 * cd[36]) - (618034 * cd[4]) / cd[36] - cd[4] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if cd[4] > -((618034 * cd[36]) - (618034 * cd[4]) / 10^6) - 1:
                revert with 'NH{q', 17
            if cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6) < cd[4]:
                revert with 0, 'SafeMath: addition overflow'
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _467 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _471 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 355] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 359] = cd[4] + ((381966 * cd[36]) - (381966 * cd[4]) / 10^6)
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 391] = 128
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 487] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 519
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 423] = (32 * ('cd', 132).length) + 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 519] = ('cd', 68).length
            idx = 0
            s = 128
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + 551
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 455] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 551] = ('cd', 100).length
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 583
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + (32 * mem[floor32(('cd', 68).length) + 97]) + -mem[64] + 579]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1316 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1320 = mem[_1316]
            require mem[_1316] == mem[_1316]
            mem[0] = address(_467)
            mem[32] = 3
            if stor3[address(_467)] and _1320 > -1 / stor3[address(_467)]:
                revert with 'NH{q', 17
            if not stor3[address(_471)]:
                revert with 'NH{q', 18
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_467)] * _1320 / stor3[address(_471)]
            if ('cd', 132).length < 1:
                revert with 'NH{q', 17
            if ('cd', 132).length - 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1352 = mem[(32 * ('cd', 132).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _1360 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6)
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 132).length
            idx = 0
            s = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
            t = mem[64] + 164
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = (32 * ('cd', 132).length) + 160
            mem[mem[64] + (32 * ('cd', 132).length) + 164] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + (32 * ('cd', 132).length) + 196
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            _2760 = mem[floor32(('cd', 68).length) + 97]
            mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 196] = mem[floor32(('cd', 68).length) + 97]
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228
            while idx < mem[floor32(('cd', 68).length) + 97]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args cd[4] + ((618034 * cd[36]) - (618034 * cd[4]) / 10^6), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 32], mem[floor32(('cd', 68).length) + 97], mem[mem[64] + (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 228 len 32 * _2760]), (32 * ('cd', 132).length) + 160, (32 * ('cd', 132).length) + (32 * ('cd', 68).length) + 192
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3784 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3788 = mem[_3784]
            require mem[_3784] == mem[_3784]
            mem[0] = address(_1352)
            mem[32] = 3
            if stor3[address(_1352)] and _3788 > -1 / stor3[address(_1352)]:
                revert with 'NH{q', 17
            if not stor3[address(_1360)]:
                revert with 'NH{q', 18
            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_1352)] * _3788 / stor3[address(_1360)]
            idx = 0
            while idx < 20:
                if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] - 1:
                    revert with 'NH{q', 17
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] <= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]:
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5180 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5252 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5268 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5180
                        mem[mem[64] + 36] = 128
                        _5373 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5373:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5373) + 160
                        mem[mem[64] + (32 * _5373) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5373) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5373) + (32 * mem[96]) + 192
                        _6343 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5373) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5373) + (32 * mem[96]) + 228
                        while s < _6343:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5180, 128, (32 * _5373) + 160, (32 * _5373) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5373) + (32 * mem[96]) + (32 * _6343) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6695 = mem[_6663]
                        require mem[_6663] == mem[_6663]
                        mem[0] = address(_5252)
                        mem[32] = 3
                        if stor3[address(_5252)] and _6695 > -1 / stor3[address(_5252)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5268)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5252)] * _6695 / stor3[address(_5268)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5340 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5428 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5468 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5340
                            mem[mem[64] + 36] = 128
                            _5548 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5548:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5548) + 160
                            mem[mem[64] + (32 * _5548) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5548) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5548) + (32 * mem[96]) + 192
                            _6341 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5548) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5548) + (32 * mem[96]) + 228
                            while s < _6341:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5340, 128, (32 * _5548) + 160, (32 * _5548) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5548) + (32 * mem[96]) + (32 * _6341) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6693 = mem[_6661]
                            require mem[_6661] == mem[_6661]
                            mem[0] = address(_5428)
                            mem[32] = 3
                            if stor3[address(_5428)] and _6693 > -1 / stor3[address(_5428)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5468)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5428)] * _6693 / stor3[address(_5468)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5532 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5596 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5628 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5532
                            mem[mem[64] + 36] = 128
                            _5676 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5676:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5676) + 160
                            mem[mem[64] + (32 * _5676) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5676) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5676) + (32 * mem[96]) + 192
                            _6340 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5676) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5676) + (32 * mem[96]) + 228
                            while s < _6340:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5532, 128, (32 * _5676) + 160, (32 * _5676) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5676) + (32 * mem[96]) + (32 * _6340) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6692 = mem[_6660]
                            require mem[_6660] == mem[_6660]
                            mem[0] = address(_5596)
                            mem[32] = 3
                            if stor3[address(_5596)] and _6692 > -1 / stor3[address(_5596)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5628)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = stor3[address(_5596)] * _6692 / stor3[address(_5628)]
                else:
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259]
                    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]
                    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]
                    if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                        revert with 'NH{q', 50
                    if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 0
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        _5181 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                            revert with 'NH{q', 17
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5254 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        _5270 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5181
                        mem[mem[64] + 36] = 128
                        _5375 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                        s = 0
                        t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                        u = mem[64] + 164
                        while s < _5375:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 68] = (32 * _5375) + 160
                        mem[mem[64] + (32 * _5375) + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + (32 * _5375) + 196
                        while s < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _5375) + (32 * mem[96]) + 192
                        _6347 = mem[floor32(('cd', 68).length) + 97]
                        mem[mem[64] + (32 * _5375) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                        s = 0
                        t = floor32(('cd', 68).length) + 129
                        u = mem[64] + (32 * _5375) + (32 * mem[96]) + 228
                        while s < _6347:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.0xf594ef26 with:
                             gas gas_remaining wei
                            args _5181, 128, (32 * _5375) + 160, (32 * _5375) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5375) + (32 * mem[96]) + (32 * _6347) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6699 = mem[_6667]
                        require mem[_6667] == mem[_6667]
                        mem[0] = address(_5254)
                        mem[32] = 3
                        if stor3[address(_5254)] and _6699 > -1 / stor3[address(_5254)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_5270)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5254)] * _6699 / stor3[address(_5270)]
                    else:
                        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 618034 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 17
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            revert with 'NH{q', 18
                        if 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] = 618034 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6
                        if 2 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                            revert with 'NH{q', 50
                        if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5342 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5433 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5472 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5342
                            mem[mem[64] + 36] = 128
                            _5550 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5550:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5550) + 160
                            mem[mem[64] + (32 * _5550) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5550) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5550) + (32 * mem[96]) + 192
                            _6345 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5550) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5550) + (32 * mem[96]) + 228
                            while s < _6345:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5342, 128, (32 * _5550) + 160, (32 * _5550) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5550) + (32 * mem[96]) + (32 * _6345) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6665 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6697 = mem[_6665]
                            require mem[_6665] == mem[_6665]
                            mem[0] = address(_5433)
                            mem[32] = 3
                            if stor3[address(_5433)] and _6697 > -1 / stor3[address(_5433)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5472)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5433)] * _6697 / stor3[address(_5472)]
                        else:
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] and 381966 > -1 / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 17
                            if not mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195]:
                                revert with 'NH{q', 18
                            if 381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -(381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6) < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            _5533 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + (381966 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 195] / 10^6)
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] < 1:
                                revert with 'NH{q', 17
                            if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5600 = mem[(32 * mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                                revert with 'NH{q', 50
                            _5630 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5533
                            mem[mem[64] + 36] = 128
                            _5677 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            mem[mem[64] + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                            s = 0
                            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130
                            u = mem[64] + 164
                            while s < _5677:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 68] = (32 * _5677) + 160
                            mem[mem[64] + (32 * _5677) + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + (32 * _5677) + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = (32 * _5677) + (32 * mem[96]) + 192
                            _6344 = mem[floor32(('cd', 68).length) + 97]
                            mem[mem[64] + (32 * _5677) + (32 * mem[96]) + 196] = mem[floor32(('cd', 68).length) + 97]
                            s = 0
                            t = floor32(('cd', 68).length) + 129
                            u = mem[64] + (32 * _5677) + (32 * mem[96]) + 228
                            while s < _6344:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.0xf594ef26 with:
                                 gas gas_remaining wei
                                args _5533, 128, (32 * _5677) + 160, (32 * _5677) + (32 * mem[96]) + 192, mem[mem[64] + 132 len (32 * _5677) + (32 * mem[96]) + (32 * _6344) + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6664 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6696 = mem[_6664]
                            require mem[_6664] == mem[_6664]
                            mem[0] = address(_5600)
                            mem[32] = 3
                            if stor3[address(_5600)] and _6696 > -1 / stor3[address(_5600)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_5630)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] = stor3[address(_5600)] * _6696 / stor3[address(_5630)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
        revert with 'NH{q', 50
    if 6 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
        revert with 'NH{q', 50
    if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] - 1:
        revert with 'NH{q', 17
    if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323]:
        revert with 0, 'SafeMath: addition overflow'
    if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
        revert with 'NH{q', 50
    if 5 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
        revert with 'NH{q', 50
    if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] - 1:
        revert with 'NH{q', 17
    if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 291] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] <= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 323] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]:
        if 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
            revert with 'NH{q', 50
        if 3 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] - 1:
            revert with 'NH{q', 17
        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227]:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 227] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 163] / 2
    else:
        if 4 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
            revert with 'NH{q', 50
        if 0 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 99]:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] > -mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] - 1:
            revert with 'NH{q', 17
        if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] < mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131]:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 131] + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 259] / 2
    return memory
      from mem[64]
       len 32
}



}
