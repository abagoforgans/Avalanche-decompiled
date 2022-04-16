contract main {




// =====================  Runtime code  =====================


#
#  - sub_54734cb5(?)
#
address owner;
address operatorAddress;
address stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
address stor5;

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

function sub_97fa37ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor3[address(arg1)] and arg2 > -1 / stor3[address(arg1)]:
        revert with 'NH{q', 17
    return (stor3[address(arg1)] * arg2)
}

function sub_801bb4c1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = arg2
    stor4[address(arg1)] = arg3
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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
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
    t = mem[64] + 164
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = (32 * ('cd', 36).length) + 160
    _84 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 263] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 295
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 192
    _96 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 295] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 327
    while idx < _96:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * _84) + (32 * _96) + -mem[64] + 323]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_107] == mem[_107]
    if stor3[address(_66)] and mem[_107] > -1 / stor3[address(_66)]:
        revert with 'NH{q', 17
    if not stor3[address(_68)]:
        revert with 'NH{q', 18
    mem[mem[64]] = stor3[address(_66)] * mem[_107] / stor3[address(_68)]
    return memory
      from mem[64]
       len 32
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
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 167] = (32 * ('cd', 36).length) + 192
    _116 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 295] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 327
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 199] = (32 * ('cd', 36).length) + (32 * _116) + 224
    _135 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * _116) + 327] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * _116) + 359
    while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 231] = this.address
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + (32 * _116) + (32 * _135) + -mem[64] + 355]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _153 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_153] == mem[_153]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[96] < 1:
        revert with 'NH{q', 17
    if mem[96] - 1 >= mem[96]:
        revert with 'NH{q', 50
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] and mem[_153] > -1 / stor3[address(mem[(32 * mem[96] - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] * mem[_153] / stor3[mem[140 len 20]] <= cd[4]:
        revert with 0, 'arb failed'
    return memory
      from _153
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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
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
    t = mem[64] + 164
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = (32 * ('cd', 36).length) + 160
    _161 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 263] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 295
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 192
    _205 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 295] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 327
    while idx < _205:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * _161) + (32 * _205) + -mem[64] + 323]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _249 = mem[_248]
    require mem[_248] == mem[_248]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[96] < 1:
        revert with 'NH{q', 17
    if mem[96] - 1 >= mem[96]:
        revert with 'NH{q', 50
    mem[0] = mem[(32 * mem[96] - 1) + 140 len 20]
    mem[32] = 3
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] and _249 > -1 / stor3[address(mem[(32 * mem[96] - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] * _249 / stor3[mem[140 len 20]] <= cd[4]:
        return 0
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _258 = mem[128]
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(_258))
    call address(_258).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _263 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_263] == bool(mem[_263])
    _265 = mem[64]
    mem[mem[64]] = 0xc1e6e23a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 160
    _266 = mem[96]
    mem[mem[64] + 164] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < _266:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_265 + 68] = (32 * _266) + 192
    _287 = mem[floor32(('cd', 36).length) + 97]
    mem[_265 + (32 * _266) + 196] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = _265 + (32 * _266) + 228
    while idx < _287:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_265 + 100] = (32 * _266) + (32 * _287) + 224
    _306 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[_265 + (32 * _266) + (32 * _287) + 228] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = _265 + (32 * _266) + (32 * _287) + 260
    while idx < _306:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_265 + 132] = this.address
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _265 + (32 * _266) + (32 * _287) + (32 * _306) + -mem[64] + 256]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _324 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_324] == mem[_324]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[96] < 1:
        revert with 'NH{q', 17
    if mem[96] - 1 >= mem[96]:
        revert with 'NH{q', 50
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] and mem[_324] > -1 / stor3[address(mem[(32 * mem[96] - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] * mem[_324] / stor3[mem[140 len 20]] <= cd[4]:
        revert with 0, 'arb failed'
    return memory
      from _324
       len 32
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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
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
    t = mem[64] + 164
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = (32 * ('cd', 36).length) + 160
    _161 = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 263] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + 295
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 192
    _205 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 295] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 327
    while idx < _205:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 36).length) + (32 * _161) + (32 * _205) + -mem[64] + 323]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _249 = mem[_248]
    require mem[_248] == mem[_248]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[96] < 1:
        revert with 'NH{q', 17
    if mem[96] - 1 >= mem[96]:
        revert with 'NH{q', 50
    mem[0] = mem[(32 * mem[96] - 1) + 140 len 20]
    mem[32] = 3
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] and _249 > -1 / stor3[address(mem[(32 * mem[96] - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] * _249 / stor3[mem[140 len 20]] <= cd[4]:
        return 0
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _258 = mem[128]
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(_258))
    call address(_258).0xa9059cbb with:
         gas gas_remaining wei
        args stor2, cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _263 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_263] == bool(mem[_263])
    _265 = mem[64]
    mem[mem[64]] = 0xc1e6e23a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 160
    _266 = mem[96]
    mem[mem[64] + 164] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < _266:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_265 + 68] = (32 * _266) + 192
    _287 = mem[floor32(('cd', 36).length) + 97]
    mem[_265 + (32 * _266) + 196] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = _265 + (32 * _266) + 228
    while idx < _287:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_265 + 100] = (32 * _266) + (32 * _287) + 224
    _306 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    mem[_265 + (32 * _266) + (32 * _287) + 228] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    t = _265 + (32 * _266) + (32 * _287) + 260
    while idx < _306:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_265 + 132] = this.address
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _265 + (32 * _266) + (32 * _287) + (32 * _306) + -mem[64] + 256]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _324 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_324] == mem[_324]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[96] < 1:
        revert with 'NH{q', 17
    if mem[96] - 1 >= mem[96]:
        revert with 'NH{q', 50
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] and mem[_324] > -1 / stor3[address(mem[(32 * mem[96] - 1) + 128])]:
        revert with 'NH{q', 17
    if not stor3[mem[140 len 20]]:
        revert with 'NH{q', 18
    if stor3[address(mem[(32 * mem[96] - 1) + 128])] * mem[_324] / stor3[mem[140 len 20]] <= cd[4]:
        revert with 0, 'arb failed'
    return memory
      from _324
       len 32
}

function sub_666d3ffb(?) payable {
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = 96
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 96
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163] = 96
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195] = 13
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 643
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 416] = call.data[calldata.size len 416]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        _388 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_388))
        staticcall address(_388).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _420 = mem[_405]
        require mem[_405] == mem[_405]
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
        mem[32] = 4
        if _420 >= stor4[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                revert with 'NH{q', 50
            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
            mem[32] = 4
            _449 = sha3(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20], 4)
            _545 = mem[floor32(('cd', 4).length) + 97]
            s = 0
            while s < _545:
                if idx != s:
                    if s >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259] = mem[(32 * s) + floor32(('cd', 4).length) + 141 len 20]
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    _556 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    _558 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259]
                    _559 = mem[64]
                    mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor[_449]
                    mem[mem[64] + 36] = address(_556)
                    mem[mem[64] + 68] = address(_558)
                    mem[mem[64] + 100] = 128
                    _570 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 164
                    while idx < _570:
                        mem[u] = mem[t + 12 len 20]
                        _545 = mem[floor32(('cd', 4).length) + 97]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _559 + (32 * _570) + -mem[64] + 160]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _658 = mem[_657]
                    require mem[_657] == mem[_657]
                    _663 = mem[_657 + 32]
                    require mem[_657 + 32] == mem[_657 + 44 len 20]
                    require mem[_657 + 64] == mem[_657 + 76 len 20]
                    if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 323] = mem[_657 + 76 len 20]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 291] = address(_663)
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_449] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                        revert with 'NH{q', 17
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449] > -1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                    mem[32] = 3
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _658 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                        revert with 'NH{q', 17
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _658 <= stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449]:
                        _868 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        idx = 0
                        t = _658
                        t = 0
                        while idx < _868:
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _872 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _876 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            _877 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor[_449]
                            mem[mem[64] + 36] = address(_872)
                            mem[mem[64] + 68] = address(_876)
                            mem[mem[64] + 100] = 128
                            _880 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _880:
                                mem[v] = mem[u + 12 len 20]
                                _545 = mem[floor32(('cd', 4).length) + 97]
                                _868 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _877 + (32 * _880) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1000 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1002 = mem[_1000]
                            require mem[_1000] == mem[_1000]
                            _1004 = mem[_1000 + 32]
                            require mem[_1000 + 32] == mem[_1000 + 44 len 20]
                            require mem[_1000 + 64] == mem[_1000 + 76 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 323] = mem[_1000 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 291] = address(_1004)
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _1014 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _1018 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259]
                            _1019 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1002
                            mem[mem[64] + 36] = address(_1014)
                            mem[mem[64] + 68] = address(_1018)
                            mem[mem[64] + 100] = 128
                            _1022 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _1022:
                                mem[v] = mem[u + 12 len 20]
                                _545 = mem[floor32(('cd', 4).length) + 97]
                                _868 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1019 + (32 * _1022) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1114 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1116 = mem[_1114]
                            require mem[_1114] == mem[_1114]
                            _1118 = mem[_1114 + 32]
                            require mem[_1114 + 32] == mem[_1114 + 44 len 20]
                            require mem[_1114 + 64] == mem[_1114 + 76 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 387] = mem[_1114 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 355] = address(_1118)
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_449] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449] > -t - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _1116 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1116 <= (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449]) + t:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _545 = mem[floor32(('cd', 4).length) + 97]
                                _868 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                idx = idx + 1
                                t = _1116
                                t = t
                                continue 
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_449] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _1116 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449] > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1116:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1116 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449]:
                                revert with 'NH{q', 17
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 547] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 579] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 611] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 303 len 20]
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 451] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 335 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 483] = address(_1118)
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 515] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 399 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _545 = mem[floor32(('cd', 4).length) + 97]
                            _868 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                            idx = idx + 1
                            t = _1116
                            t = (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1116) - (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449])
                            continue 
                    else:
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_449] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                            revert with 'NH{q', 17
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                        mem[32] = 3
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _658 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449] > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _658:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _658 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449]:
                            revert with 'NH{q', 17
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 547] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 579] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                        if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = address(_663)
                        if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 451] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 335 len 20]
                        if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 483] = 0
                        _869 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        idx = 0
                        t = _658
                        t = (stor[sha3(mem[0 len 64])] * _658) - (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449])
                        while idx < _869:
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _874 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _878 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            _879 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor[_449]
                            mem[mem[64] + 36] = address(_874)
                            mem[mem[64] + 68] = address(_878)
                            mem[mem[64] + 100] = 128
                            _881 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _881:
                                mem[v] = mem[u + 12 len 20]
                                _545 = mem[floor32(('cd', 4).length) + 97]
                                _869 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _879 + (32 * _881) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1001 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1003 = mem[_1001]
                            require mem[_1001] == mem[_1001]
                            _1005 = mem[_1001 + 32]
                            require mem[_1001 + 32] == mem[_1001 + 44 len 20]
                            require mem[_1001 + 64] == mem[_1001 + 76 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 323] = mem[_1001 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 291] = address(_1005)
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _1016 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _1020 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259]
                            _1021 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1003
                            mem[mem[64] + 36] = address(_1016)
                            mem[mem[64] + 68] = address(_1020)
                            mem[mem[64] + 100] = 128
                            _1023 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _1023:
                                mem[v] = mem[u + 12 len 20]
                                _545 = mem[floor32(('cd', 4).length) + 97]
                                _869 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1021 + (32 * _1023) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1115 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1117 = mem[_1115]
                            require mem[_1115] == mem[_1115]
                            _1119 = mem[_1115 + 32]
                            require mem[_1115 + 32] == mem[_1115 + 44 len 20]
                            require mem[_1115 + 64] == mem[_1115 + 76 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 387] = mem[_1115 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 355] = address(_1119)
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_449] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449] > -t - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _1117 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1117 <= (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449]) + t:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _545 = mem[floor32(('cd', 4).length) + 97]
                                _869 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                idx = idx + 1
                                t = _1117
                                t = t
                                continue 
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_449] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _1117 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449] > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1117:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1117 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449]:
                                revert with 'NH{q', 17
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 547] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 579] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 611] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 303 len 20]
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 451] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 335 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 483] = address(_1119)
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 515] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 399 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _545 = mem[floor32(('cd', 4).length) + 97]
                            _869 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                            idx = idx + 1
                            t = _1117
                            t = (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _1117) - (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_449])
                            continue 
                if s == -1:
                    revert with 'NH{q', 17
                _545 = mem[floor32(('cd', 4).length) + 97]
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if not mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 495 len 20]:
        _387 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = mem[64]
        mem[mem[64] + 96] = 1
        mem[mem[64] + 128] = call.data[calldata.size]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[64] + 96
        mem[mem[64] + 160] = 1
        mem[64] = mem[64] + 224
        mem[_387 + 192] = call.data[calldata.size]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163] = _387 + 160
        if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        if 0 >= mem[_387]:
            revert with 'NH{q', 50
        mem[_387 + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 559 len 20]
        if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        if 1 >= mem[_387]:
            revert with 'NH{q', 50
        mem[_387 + 64] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 591 len 20]
        if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[_387 + 128] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 431 len 20]
        if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[_387 + 192] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 463 len 20]
        mem[_387 + 224] = 32
        mem[_387 + 256] = 96
        mem[_387 + 352] = mem[_387]
        idx = 0
        s = _387 + 32
        t = _387 + 384
        while idx < mem[_387]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _549 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
        mem[_387 + 288] = (32 * mem[_387]) + 128
        _554 = mem[_549]
        mem[_387 + (32 * mem[_387]) + 384] = mem[_549]
        idx = 0
        s = _549 + 32
        t = _387 + (32 * mem[_387]) + 416
        while idx < _554:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _653 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163]
        mem[_387 + 320] = (32 * mem[_387]) + (32 * _554) + 160
        _656 = mem[_653]
        mem[_387 + (32 * mem[_387]) + (32 * _554) + 416] = mem[_653]
        idx = 0
        s = _653 + 32
        t = _387 + (32 * mem[_387]) + (32 * _554) + 448
        while idx < _656:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _387 + (32 * mem[_387]) + (32 * _554) + (32 * _656) + -mem[64] + 448
    _386 = mem[64]
    mem[mem[64] + 32 len 96] = call.data[calldata.size len 96]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = mem[64]
    mem[mem[64] + 128] = 2
    mem[mem[64] + 160 len 64] = call.data[calldata.size len 64]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[64] + 128
    mem[mem[64] + 224] = 2
    mem[64] = mem[64] + 320
    mem[_386 + 256 len 64] = call.data[calldata.size len 64]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163] = _386 + 224
    if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if 0 >= mem[_386]:
        revert with 'NH{q', 50
    mem[_386 + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 559 len 20]
    if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if 1 >= mem[_386]:
        revert with 'NH{q', 50
    mem[_386 + 64] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 591 len 20]
    if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if 2 >= mem[_386]:
        revert with 'NH{q', 50
    mem[_386 + 96] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 623 len 20]
    if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_386 + 160] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 431 len 20]
    if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_386 + 256] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 463 len 20]
    if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_386 + 192] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 495 len 20]
    if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_386 + 288] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 527 len 20]
    mem[_386 + 320] = 32
    mem[_386 + 352] = 96
    mem[_386 + 448] = mem[_386]
    idx = 0
    s = _386 + 32
    t = _386 + 480
    while idx < mem[_386]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _548 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
    mem[_386 + 384] = (32 * mem[_386]) + 128
    _553 = mem[_548]
    mem[_386 + (32 * mem[_386]) + 480] = mem[_548]
    idx = 0
    s = _548 + 32
    t = _386 + (32 * mem[_386]) + 512
    while idx < _553:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _652 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163]
    mem[_386 + 416] = (32 * mem[_386]) + (32 * _553) + 160
    _655 = mem[_652]
    mem[_386 + (32 * mem[_386]) + (32 * _553) + 512] = mem[_652]
    idx = 0
    s = _652 + 32
    t = _386 + (32 * mem[_386]) + (32 * _553) + 544
    while idx < _655:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _386 + (32 * mem[_386]) + (32 * _553) + (32 * _655) + -mem[64] + 544
}

function sub_70b2eaed(?) payable {
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = 96
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = 96
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163] = 96
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195] = 13
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 643
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 416] = call.data[calldata.size len 416]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        _1111 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1111))
        staticcall address(_1111).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1143 = mem[_1128]
        require mem[_1128] == mem[_1128]
        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
        mem[32] = 4
        if _1143 >= stor4[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                revert with 'NH{q', 50
            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
            mem[32] = 4
            _1178 = sha3(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20], 4)
            _1537 = mem[floor32(('cd', 4).length) + 97]
            s = 0
            while s < _1537:
                if idx != s:
                    if s >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259] = mem[(32 * s) + floor32(('cd', 4).length) + 141 len 20]
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    _1562 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    _1564 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259]
                    _1565 = mem[64]
                    mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor[_1178]
                    mem[mem[64] + 36] = address(_1562)
                    mem[mem[64] + 68] = address(_1564)
                    mem[mem[64] + 100] = 128
                    _1614 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 164
                    while idx < _1614:
                        mem[u] = mem[t + 12 len 20]
                        _1537 = mem[floor32(('cd', 4).length) + 97]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1565 + (32 * _1614) + -mem[64] + 160]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2356 = mem[_2355]
                    require mem[_2355] == mem[_2355]
                    _2385 = mem[_2355 + 32]
                    require mem[_2355 + 32] == mem[_2355 + 44 len 20]
                    require mem[_2355 + 64] == mem[_2355 + 76 len 20]
                    if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 323] = mem[_2355 + 76 len 20]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 291] = address(_2385)
                    if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_1178] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                        revert with 'NH{q', 17
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178] > -1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                        revert with 'NH{q', 50
                    mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                    mem[32] = 3
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _2356 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                        revert with 'NH{q', 17
                    if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _2356 <= stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178]:
                        _4326 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        idx = 0
                        t = _2356
                        t = 0
                        while idx < _4326:
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _4338 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _4342 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            _4343 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor[_1178]
                            mem[mem[64] + 36] = address(_4338)
                            mem[mem[64] + 68] = address(_4342)
                            mem[mem[64] + 100] = 128
                            _4378 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _4378:
                                mem[v] = mem[u + 12 len 20]
                                _1537 = mem[floor32(('cd', 4).length) + 97]
                                _4326 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4343 + (32 * _4378) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6402 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _6404 = mem[_6402]
                            require mem[_6402] == mem[_6402]
                            _6430 = mem[_6402 + 32]
                            require mem[_6402 + 32] == mem[_6402 + 44 len 20]
                            require mem[_6402 + 64] == mem[_6402 + 76 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 323] = mem[_6402 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 291] = address(_6430)
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _6464 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _6468 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259]
                            _6469 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6404
                            mem[mem[64] + 36] = address(_6464)
                            mem[mem[64] + 68] = address(_6468)
                            mem[mem[64] + 100] = 128
                            _6520 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _6520:
                                mem[v] = mem[u + 12 len 20]
                                _1537 = mem[floor32(('cd', 4).length) + 97]
                                _4326 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6469 + (32 * _6520) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8574 = mem[_8564]
                            require mem[_8564] == mem[_8564]
                            _8576 = mem[_8564 + 32]
                            require mem[_8564 + 32] == mem[_8564 + 44 len 20]
                            require mem[_8564 + 64] == mem[_8564 + 76 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 387] = mem[_8564 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 355] = address(_8576)
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_1178] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178] > -t - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _8574 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8574 <= (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178]) + t:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _1537 = mem[floor32(('cd', 4).length) + 97]
                                _4326 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                idx = idx + 1
                                t = _8574
                                t = t
                                continue 
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_1178] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _8574 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178] > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8574:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8574 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178]:
                                revert with 'NH{q', 17
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 547] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 579] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 611] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 303 len 20]
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 451] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 335 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 483] = address(_8576)
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 515] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 399 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1537 = mem[floor32(('cd', 4).length) + 97]
                            _4326 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                            idx = idx + 1
                            t = _8574
                            t = (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8574) - (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178])
                            continue 
                    else:
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_1178] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                            revert with 'NH{q', 17
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                        mem[32] = 3
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _2356 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                            revert with 'NH{q', 17
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178] > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _2356:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _2356 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178]:
                            revert with 'NH{q', 17
                        if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 547] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
                        if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 579] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                        if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = address(_2385)
                        if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 451] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 335 len 20]
                        if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                            revert with 'NH{q', 50
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 483] = 0
                        _4327 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        idx = 0
                        t = _2356
                        t = (stor[sha3(mem[0 len 64])] * _2356) - (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178])
                        while idx < _4327:
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _4340 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _4344 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            _4345 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor[_1178]
                            mem[mem[64] + 36] = address(_4340)
                            mem[mem[64] + 68] = address(_4344)
                            mem[mem[64] + 100] = 128
                            _4379 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _4379:
                                mem[v] = mem[u + 12 len 20]
                                _1537 = mem[floor32(('cd', 4).length) + 97]
                                _4327 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4345 + (32 * _4379) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6403 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _6405 = mem[_6403]
                            require mem[_6403] == mem[_6403]
                            _6431 = mem[_6403 + 32]
                            require mem[_6403 + 32] == mem[_6403 + 44 len 20]
                            require mem[_6403 + 64] == mem[_6403 + 76 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 323] = mem[_6403 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 291] = address(_6431)
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            _6466 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            _6470 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 259]
                            _6471 = mem[64]
                            mem[mem[64]] = 0x69f7495900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6405
                            mem[mem[64] + 36] = address(_6466)
                            mem[mem[64] + 68] = address(_6470)
                            mem[mem[64] + 100] = 128
                            _6521 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            u = 128
                            v = mem[64] + 164
                            while s < _6521:
                                mem[v] = mem[u + 12 len 20]
                                _1537 = mem[floor32(('cd', 4).length) + 97]
                                _4327 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                s = s + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6471 + (32 * _6521) + -mem[64] + 160]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8575 = mem[_8565]
                            require mem[_8565] == mem[_8565]
                            _8577 = mem[_8565 + 32]
                            require mem[_8565 + 32] == mem[_8565 + 44 len 20]
                            require mem[_8565 + 64] == mem[_8565 + 76 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 387] = mem[_8565 + 76 len 20]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 355] = address(_8577)
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_1178] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178] > -t - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _8575 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8575 <= (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178]) + t:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _1537 = mem[floor32(('cd', 4).length) + 97]
                                _4327 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                                idx = idx + 1
                                t = _8575
                                t = t
                                continue 
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] and stor[_1178] > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]]:
                                revert with 'NH{q', 17
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[0] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            mem[32] = 3
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] and _8575 > -1 / stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]]:
                                revert with 'NH{q', 17
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178] > stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8575:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8575 < stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178]:
                                revert with 'NH{q', 17
                            if 0 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 547] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]
                            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 579] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]
                            if 1 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 611] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]
                            if 2 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 303 len 20]
                            if 3 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 451] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 335 len 20]
                            if 4 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 483] = address(_8577)
                            if 5 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
                                revert with 'NH{q', 50
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 515] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 399 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _1537 = mem[floor32(('cd', 4).length) + 97]
                            _4327 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                            idx = idx + 1
                            t = _8575
                            t = (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 271 len 20]] * _8575) - (stor3[mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 239 len 20]] * stor[_1178])
                            continue 
                if s == -1:
                    revert with 'NH{q', 17
                _1537 = mem[floor32(('cd', 4).length) + 97]
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if not mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 495 len 20]:
        _1110 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = mem[64]
        mem[mem[64] + 96] = 1
        mem[mem[64] + 128] = call.data[calldata.size]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[64] + 96
        mem[mem[64] + 160] = 1
        mem[64] = mem[64] + 224
        mem[_1110 + 192] = call.data[calldata.size]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163] = _1110 + 160
        if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        mem[_1110 + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 559 len 20]
        if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        if 1 >= mem[_1110]:
            revert with 'NH{q', 50
        mem[_1110 + 64] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 591 len 20]
        if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[_1110 + 128] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 431 len 20]
        if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
            revert with 'NH{q', 50
        mem[_1110 + 192] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 463 len 20]
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        if not mem[_1110 + 44 len 20]:
            mem[_1110 + 224] = 0
            mem[_1110 + 256] = 0
            mem[_1110 + 288] = 0
            mem[_1110 + 320] = 192
            mem[_1110 + 416] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = _1110 + 448
            while idx < mem[_1110]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + 352] = (32 * mem[_1110]) + 224
            mem[_1110 + (32 * mem[_1110]) + 448] = 1
            idx = 0
            s = _1110 + 128
            t = _1110 + (32 * mem[_1110]) + 480
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + 384] = (32 * mem[_1110]) + 288
            mem[_1110 + (32 * mem[_1110]) + 512] = 1
            idx = 0
            s = _1110 + 192
            t = _1110 + (32 * mem[_1110]) + 544
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1110 + (32 * mem[_1110]) + -mem[64] + 576
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        mem[_1110 + 228] = this.address
        require ext_code.size(mem[_1110 + 44 len 20])
        staticcall mem[_1110 + 44 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_1110 + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1110 + ceil32(return_data.size) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        mem[0] = mem[_1110 + 44 len 20]
        mem[32] = 4
        mem[_1110 + ceil32(return_data.size) + 224] = 7
        mem[64] = _1110 + ceil32(return_data.size) + 480
        mem[_1110 + ceil32(return_data.size) + 256 len 224] = call.data[calldata.size len 224]
        mem[_1110 + ceil32(return_data.size) + 256] = stor4[mem[0]]
        mem[_1110 + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if stor4[mem[0]] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < stor4[mem[0]]:
            revert with 'NH{q', 17
        mem[_1110 + ceil32(return_data.size) + 320] = ext_call.return_data[0] - stor4[mem[0]]
        if not ext_call.return_data[0] - stor4[mem[0]]:
            if stor4[mem[0]] > -1:
                revert with 'NH{q', 17
            if stor4[mem[0]] < stor4[mem[0]]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1110 + ceil32(return_data.size) + 352] = stor4[mem[0]]
            if not ext_call.return_data[0] - stor4[mem[0]]:
                if stor4[mem[0]] > -1:
                    revert with 'NH{q', 17
                if stor4[mem[0]] < stor4[mem[0]]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1110 + ceil32(return_data.size) + 384] = stor4[mem[0]]
                if mem[_1110] < 1:
                    revert with 'NH{q', 17
                if mem[_1110] - 1 >= mem[_1110]:
                    revert with 'NH{q', 50
                _1332 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                if 0 >= mem[_1110]:
                    revert with 'NH{q', 50
                _1334 = mem[_1110 + 32]
                mem[_1110 + ceil32(return_data.size) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[_1110 + ceil32(return_data.size) + 484] = stor4[mem[0]]
                mem[_1110 + ceil32(return_data.size) + 516] = 128
                mem[_1110 + ceil32(return_data.size) + 612] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = _1110 + ceil32(return_data.size) + 644
                while idx < mem[_1110]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1110 + ceil32(return_data.size) + 548] = (32 * mem[_1110]) + 160
                mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 644] = 1
                idx = 0
                s = _1110 + 128
                t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676
                while idx < 1:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1110 + ceil32(return_data.size) + 580] = (32 * mem[_1110]) + 224
                mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 708] = 1
                idx = 0
                s = _1110 + 192
                t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740
                while idx < 1:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args stor4[mem[0]], Array(len=mem[_1110 + ceil32(return_data.size) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676], 1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
                mem[_1110 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1110 + (2 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[0] = address(_1332)
                mem[32] = 3
                if stor3[address(_1332)] and ext_call.return_data[0] > -1 / stor3[address(_1332)]:
                    revert with 'NH{q', 17
                if not stor3[address(_1334)]:
                    revert with 'NH{q', 18
                mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_1332)] * ext_call.return_data[0] / stor3[address(_1334)]
                if mem[_1110] < 1:
                    revert with 'NH{q', 17
                if mem[_1110] - 1 >= mem[_1110]:
                    revert with 'NH{q', 50
                _3372 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                if 0 >= mem[_1110]:
                    revert with 'NH{q', 50
                _3388 = mem[_1110 + 32]
                mem[_1110 + (2 * ceil32(return_data.size)) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[_1110 + (2 * ceil32(return_data.size)) + 484] = mem[_1110 + ceil32(return_data.size) + 384]
                mem[_1110 + (2 * ceil32(return_data.size)) + 516] = 128
                mem[_1110 + (2 * ceil32(return_data.size)) + 612] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = _1110 + (2 * ceil32(return_data.size)) + 644
                while idx < mem[_1110]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1110 + (2 * ceil32(return_data.size)) + 548] = (32 * mem[_1110]) + 160
                mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 644] = 1
                idx = 0
                s = _1110 + 128
                t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676
                while idx < 1:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1110 + (2 * ceil32(return_data.size)) + 580] = (32 * mem[_1110]) + 224
                mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 708] = 1
                idx = 0
                s = _1110 + 192
                t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740
                while idx < 1:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.0xf594ef26 with:
                     gas gas_remaining wei
                    args mem[_1110 + (2 * ceil32(return_data.size)) + 484], Array(len=mem[_1110 + (2 * ceil32(return_data.size)) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676], 1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
                mem[_1110 + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1110 + (4 * ceil32(return_data.size)) + 480
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[0] = address(_3372)
                mem[32] = 3
                if stor3[address(_3372)] and ext_call.return_data[0] > -1 / stor3[address(_3372)]:
                    revert with 'NH{q', 17
                if not stor3[address(_3388)]:
                    revert with 'NH{q', 18
                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_3372)] * ext_call.return_data[0] / stor3[address(_3388)]
                idx = 0
                while idx < 20:
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                        revert with 'NH{q', 17
                    if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                        revert with 'NH{q', 17
                    if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 256] = mem[_1110 + ceil32(return_data.size) + 352]
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 384]
                        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 416] = mem[_1110 + ceil32(return_data.size) + 448]
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 320] = 0
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _11492 = mem[_1110 + ceil32(return_data.size) + 256]
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _11682 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _11730 = mem[_1110 + 32]
                            _11731 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11492
                            mem[mem[64] + 36] = 128
                            _11971 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _11971:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_11731 + 68] = (32 * _11971) + 160
                            _13697 = mem[_1110 + 96]
                            mem[_11731 + (32 * _11971) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _11731 + (32 * _11971) + 196
                            while s < _13697:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_11731 + 100] = (32 * _11971) + (32 * _13697) + 192
                            _14961 = mem[_1110 + 160]
                            mem[_11731 + (32 * _11971) + (32 * _13697) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _11731 + (32 * _11971) + (32 * _13697) + 228
                            while s < _14961:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _11731 + (32 * _11971) + (32 * _13697) + (32 * _14961) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16145 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16225 = mem[_16145]
                            require mem[_16145] == mem[_16145]
                            mem[0] = address(_11682)
                            mem[32] = 3
                            if stor3[address(_11682)] and _16225 > -1 / stor3[address(_11682)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_11730)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_11682)] * _16225 / stor3[address(_11730)]
                        else:
                            if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 17
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 18
                            if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                    revert with 'NH{q', 17
                                if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                _11906 = mem[_1110 + ceil32(return_data.size) + 256]
                                if mem[_1110] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1110] - 1 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12188 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                                if 0 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12254 = mem[_1110 + 32]
                                _12255 = mem[64]
                                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11906
                                mem[mem[64] + 36] = 128
                                _12386 = mem[_1110]
                                mem[mem[64] + 132] = mem[_1110]
                                s = 0
                                t = _1110 + 32
                                u = mem[64] + 164
                                while s < _12386:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12255 + 68] = (32 * _12386) + 160
                                _13695 = mem[_1110 + 96]
                                mem[_12255 + (32 * _12386) + 164] = mem[_1110 + 96]
                                s = 0
                                t = _1110 + 128
                                u = _12255 + (32 * _12386) + 196
                                while s < _13695:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12255 + 100] = (32 * _12386) + (32 * _13695) + 192
                                _14959 = mem[_1110 + 160]
                                mem[_12255 + (32 * _12386) + (32 * _13695) + 196] = mem[_1110 + 160]
                                s = 0
                                t = _1110 + 192
                                u = _12255 + (32 * _12386) + (32 * _13695) + 228
                                while s < _14959:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _12255 + (32 * _12386) + (32 * _13695) + (32 * _14959) + -mem[64] + 224]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16143 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16223 = mem[_16143]
                                require mem[_16143] == mem[_16143]
                                mem[0] = address(_12188)
                                mem[32] = 3
                                if stor3[address(_12188)] and _16223 > -1 / stor3[address(_12188)]:
                                    revert with 'NH{q', 17
                                if not stor3[address(_12254)]:
                                    revert with 'NH{q', 18
                                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12188)] * _16223 / stor3[address(_12254)]
                            else:
                                if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                    revert with 'NH{q', 17
                                if not mem[_1110 + ceil32(return_data.size) + 320]:
                                    revert with 'NH{q', 18
                                if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                if mem[_1110 + ceil32(return_data.size) + 256] > -(618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                                    revert with 'NH{q', 17
                                if mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                _12340 = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                                if mem[_1110] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1110] - 1 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12526 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                                if 0 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12562 = mem[_1110 + 32]
                                _12563 = mem[64]
                                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _12340
                                mem[mem[64] + 36] = 128
                                _12676 = mem[_1110]
                                mem[mem[64] + 132] = mem[_1110]
                                s = 0
                                t = _1110 + 32
                                u = mem[64] + 164
                                while s < _12676:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12563 + 68] = (32 * _12676) + 160
                                _13694 = mem[_1110 + 96]
                                mem[_12563 + (32 * _12676) + 164] = mem[_1110 + 96]
                                s = 0
                                t = _1110 + 128
                                u = _12563 + (32 * _12676) + 196
                                while s < _13694:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12563 + 100] = (32 * _12676) + (32 * _13694) + 192
                                _14958 = mem[_1110 + 160]
                                mem[_12563 + (32 * _12676) + (32 * _13694) + 196] = mem[_1110 + 160]
                                s = 0
                                t = _1110 + 192
                                u = _12563 + (32 * _12676) + (32 * _13694) + 228
                                while s < _14958:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _12563 + (32 * _12676) + (32 * _13694) + (32 * _14958) + -mem[64] + 224]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16142 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16222 = mem[_16142]
                                require mem[_16142] == mem[_16142]
                                mem[0] = address(_12526)
                                mem[32] = 3
                                if stor3[address(_12526)] and _16222 > -1 / stor3[address(_12526)]:
                                    revert with 'NH{q', 17
                                if not stor3[address(_12562)]:
                                    revert with 'NH{q', 18
                                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12526)] * _16222 / stor3[address(_12562)]
                    else:
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 288] = mem[_1110 + ceil32(return_data.size) + 384]
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 352]
                        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 448] = mem[_1110 + ceil32(return_data.size) + 416]
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 320] = 0
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _11493 = mem[_1110 + ceil32(return_data.size) + 256]
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _11684 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _11732 = mem[_1110 + 32]
                            _11733 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11493
                            mem[mem[64] + 36] = 128
                            _11973 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _11973:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_11733 + 68] = (32 * _11973) + 160
                            _13701 = mem[_1110 + 96]
                            mem[_11733 + (32 * _11973) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _11733 + (32 * _11973) + 196
                            while s < _13701:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_11733 + 100] = (32 * _11973) + (32 * _13701) + 192
                            _14965 = mem[_1110 + 160]
                            mem[_11733 + (32 * _11973) + (32 * _13701) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _11733 + (32 * _11973) + (32 * _13701) + 228
                            while s < _14965:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _11733 + (32 * _11973) + (32 * _13701) + (32 * _14965) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16229 = mem[_16149]
                            require mem[_16149] == mem[_16149]
                            mem[0] = address(_11684)
                            mem[32] = 3
                            if stor3[address(_11684)] and _16229 > -1 / stor3[address(_11684)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_11732)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_11684)] * _16229 / stor3[address(_11732)]
                        else:
                            if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 17
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 18
                            if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                            if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                    revert with 'NH{q', 17
                                if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                _11908 = mem[_1110 + ceil32(return_data.size) + 256]
                                if mem[_1110] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1110] - 1 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12193 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                                if 0 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12258 = mem[_1110 + 32]
                                _12259 = mem[64]
                                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11908
                                mem[mem[64] + 36] = 128
                                _12388 = mem[_1110]
                                mem[mem[64] + 132] = mem[_1110]
                                s = 0
                                t = _1110 + 32
                                u = mem[64] + 164
                                while s < _12388:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12259 + 68] = (32 * _12388) + 160
                                _13699 = mem[_1110 + 96]
                                mem[_12259 + (32 * _12388) + 164] = mem[_1110 + 96]
                                s = 0
                                t = _1110 + 128
                                u = _12259 + (32 * _12388) + 196
                                while s < _13699:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12259 + 100] = (32 * _12388) + (32 * _13699) + 192
                                _14963 = mem[_1110 + 160]
                                mem[_12259 + (32 * _12388) + (32 * _13699) + 196] = mem[_1110 + 160]
                                s = 0
                                t = _1110 + 192
                                u = _12259 + (32 * _12388) + (32 * _13699) + 228
                                while s < _14963:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _12259 + (32 * _12388) + (32 * _13699) + (32 * _14963) + -mem[64] + 224]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16147 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16227 = mem[_16147]
                                require mem[_16147] == mem[_16147]
                                mem[0] = address(_12193)
                                mem[32] = 3
                                if stor3[address(_12193)] and _16227 > -1 / stor3[address(_12193)]:
                                    revert with 'NH{q', 17
                                if not stor3[address(_12258)]:
                                    revert with 'NH{q', 18
                                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12193)] * _16227 / stor3[address(_12258)]
                            else:
                                if mem[_1110 + ceil32(return_data.size) + 320] and 381966 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                    revert with 'NH{q', 17
                                if not mem[_1110 + ceil32(return_data.size) + 320]:
                                    revert with 'NH{q', 18
                                if 381966 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 381966:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                if mem[_1110 + ceil32(return_data.size) + 256] > -(381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                                    revert with 'NH{q', 17
                                if mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                _12341 = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                                if mem[_1110] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1110] - 1 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12530 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                                if 0 >= mem[_1110]:
                                    revert with 'NH{q', 50
                                _12564 = mem[_1110 + 32]
                                _12565 = mem[64]
                                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _12341
                                mem[mem[64] + 36] = 128
                                _12677 = mem[_1110]
                                mem[mem[64] + 132] = mem[_1110]
                                s = 0
                                t = _1110 + 32
                                u = mem[64] + 164
                                while s < _12677:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12565 + 68] = (32 * _12677) + 160
                                _13698 = mem[_1110 + 96]
                                mem[_12565 + (32 * _12677) + 164] = mem[_1110 + 96]
                                s = 0
                                t = _1110 + 128
                                u = _12565 + (32 * _12677) + 196
                                while s < _13698:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_12565 + 100] = (32 * _12677) + (32 * _13698) + 192
                                _14962 = mem[_1110 + 160]
                                mem[_12565 + (32 * _12677) + (32 * _13698) + 196] = mem[_1110 + 160]
                                s = 0
                                t = _1110 + 192
                                u = _12565 + (32 * _12677) + (32 * _13698) + 228
                                while s < _14962:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _12565 + (32 * _12677) + (32 * _13698) + (32 * _14962) + -mem[64] + 224]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _16146 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _16226 = mem[_16146]
                                require mem[_16146] == mem[_16146]
                                mem[0] = address(_12530)
                                mem[32] = 3
                                if stor3[address(_12530)] and _16226 > -1 / stor3[address(_12530)]:
                                    revert with 'NH{q', 17
                                if not stor3[address(_12564)]:
                                    revert with 'NH{q', 18
                                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 50
                                mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12530)] * _16226 / stor3[address(_12564)]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                    if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    _10958 = mem[_1110 + ceil32(return_data.size) + 288]
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    _10994 = mem[_1110 + ceil32(return_data.size) + 352]
                    if mem[_1110 + ceil32(return_data.size) + 352] > -mem[_1110 + ceil32(return_data.size) + 288] - 1:
                        revert with 'NH{q', 17
                    if mem[_1110 + ceil32(return_data.size) + 352] + mem[_1110 + ceil32(return_data.size) + 288] < mem[_1110 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    _11234 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _10994 + _10958 / 2
                    mem[mem[64] + 36] = 128
                    _11252 = mem[_1110]
                    mem[mem[64] + 132] = mem[_1110]
                    idx = 0
                    s = _1110 + 32
                    t = mem[64] + 164
                    while idx < _11252:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_11234 + 68] = (32 * _11252) + 160
                    _13692 = mem[_1110 + 96]
                    mem[_11234 + (32 * _11252) + 164] = mem[_1110 + 96]
                    idx = 0
                    s = _1110 + 128
                    t = _11234 + (32 * _11252) + 196
                    while idx < _13692:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_11234 + 100] = (32 * _11252) + (32 * _13692) + 192
                    _14956 = mem[_1110 + 160]
                    mem[_11234 + (32 * _11252) + (32 * _13692) + 196] = mem[_1110 + 160]
                    idx = 0
                    s = _1110 + 192
                    t = _11234 + (32 * _11252) + (32 * _13692) + 228
                    while idx < _14956:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11234 + (32 * _11252) + (32 * _13692) + (32 * _14956) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16220 = mem[_16140]
                    require mem[_16140] == mem[_16140]
                    if 0 >= mem[_1110]:
                        revert with 'NH{q', 50
                    _16372 = mem[_1110 + 32]
                    mem[0] = mem[_1110 + 44 len 20]
                    mem[32] = 3
                    if stor3[address(_16372)] and _10994 + _10958 / 2 > -1 / stor3[address(_16372)]:
                        revert with 'NH{q', 17
                    if not stor3[stor5]:
                        revert with 'NH{q', 18
                    if mem[_1110] < 1:
                        revert with 'NH{q', 17
                    if mem[_1110] - 1 >= mem[_1110]:
                        revert with 'NH{q', 50
                    _16532 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                    mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
                    mem[32] = 3
                    if stor3[address(_16532)] and _16220 > -1 / stor3[address(_16532)]:
                        revert with 'NH{q', 17
                    if not stor3[stor5]:
                        revert with 'NH{q', 18
                    if stor3[address(_16532)] * _16220 / stor3[stor5] <= stor3[address(_16372)] * _10994 + _10958 / 2 / stor3[stor5]:
                        _16596 = mem[64]
                        mem[mem[64]] = _10994 + _10958 / 2
                        mem[mem[64] + 32] = _16220
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = 192
                        _16644 = mem[_1110]
                        mem[mem[64] + 192] = mem[_1110]
                        idx = 0
                        s = _1110 + 32
                        t = mem[64] + 224
                        while idx < _16644:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_16596 + 128] = (32 * _16644) + 224
                        _16915 = mem[_1110 + 96]
                        mem[_16596 + (32 * _16644) + 224] = mem[_1110 + 96]
                        idx = 0
                        s = _1110 + 128
                        t = _16596 + (32 * _16644) + 256
                        while idx < _16915:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_16596 + 160] = (32 * _16644) + (32 * _16915) + 256
                        _17107 = mem[_1110 + 160]
                        mem[_16596 + (32 * _16644) + (32 * _16915) + 256] = mem[_1110 + 160]
                        idx = 0
                        s = _1110 + 192
                        t = _16596 + (32 * _16644) + (32 * _16915) + 288
                        while idx < _17107:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _16596 + (32 * _16644) + (32 * _16915) + (32 * _17107) + -mem[64] + 288
                    if stor3[address(_16372)] * _10994 + _10958 / 2 / stor3[stor5] > stor3[address(_16532)] * _16220 / stor3[stor5]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor3[address(_16532)] * _16220 / stor3[stor5] < stor3[address(_16372)] * _10994 + _10958 / 2 / stor3[stor5]:
                        revert with 'NH{q', 17
                    _16628 = mem[64]
                    mem[mem[64]] = _10994 + _10958 / 2
                    mem[mem[64] + 32] = _16220
                    mem[mem[64] + 64] = (stor3[address(_16532)] * _16220 / stor3[stor5]) - (stor3[address(_16372)] * _10994 + _10958 / 2 / stor3[stor5])
                    mem[mem[64] + 96] = 192
                    _16690 = mem[_1110]
                    mem[mem[64] + 192] = mem[_1110]
                    idx = 0
                    s = _1110 + 32
                    t = mem[64] + 224
                    while idx < _16690:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16628 + 128] = (32 * _16690) + 224
                    _16914 = mem[_1110 + 96]
                    mem[_16628 + (32 * _16690) + 224] = mem[_1110 + 96]
                    idx = 0
                    s = _1110 + 128
                    t = _16628 + (32 * _16690) + 256
                    while idx < _16914:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16628 + 160] = (32 * _16690) + (32 * _16914) + 256
                    _17106 = mem[_1110 + 160]
                    mem[_16628 + (32 * _16690) + (32 * _16914) + 256] = mem[_1110 + 160]
                    idx = 0
                    s = _1110 + 192
                    t = _16628 + (32 * _16690) + (32 * _16914) + 288
                    while idx < _17106:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _16628 + (32 * _16690) + (32 * _16914) + (32 * _17106) + -mem[64] + 288
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                _10960 = mem[_1110 + ceil32(return_data.size) + 384]
                if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                _10995 = mem[_1110 + ceil32(return_data.size) + 256]
                if mem[_1110 + ceil32(return_data.size) + 256] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 256] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 256]:
                    revert with 0, 'SafeMath: addition overflow'
                _11235 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _10995 + _10960 / 2
                mem[mem[64] + 36] = 128
                _11253 = mem[_1110]
                mem[mem[64] + 132] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 164
                while idx < _11253:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11235 + 68] = (32 * _11253) + 160
                _13693 = mem[_1110 + 96]
                mem[_11235 + (32 * _11253) + 164] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _11235 + (32 * _11253) + 196
                while idx < _13693:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11235 + 100] = (32 * _11253) + (32 * _13693) + 192
                _14957 = mem[_1110 + 160]
                mem[_11235 + (32 * _11253) + (32 * _13693) + 196] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _11235 + (32 * _11253) + (32 * _13693) + 228
                while idx < _14957:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11235 + (32 * _11253) + (32 * _13693) + (32 * _14957) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16221 = mem[_16141]
                require mem[_16141] == mem[_16141]
                if 0 >= mem[_1110]:
                    revert with 'NH{q', 50
                _16373 = mem[_1110 + 32]
                mem[0] = mem[_1110 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16373)] and _10995 + _10960 / 2 > -1 / stor3[address(_16373)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if mem[_1110] < 1:
                    revert with 'NH{q', 17
                if mem[_1110] - 1 >= mem[_1110]:
                    revert with 'NH{q', 50
                _16533 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16533)] and _16221 > -1 / stor3[address(_16533)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if stor3[address(_16533)] * _16221 / stor3[stor5] <= stor3[address(_16373)] * _10995 + _10960 / 2 / stor3[stor5]:
                    _16597 = mem[64]
                    mem[mem[64]] = _10995 + _10960 / 2
                    mem[mem[64] + 32] = _16221
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 192
                    _16645 = mem[_1110]
                    mem[mem[64] + 192] = mem[_1110]
                    idx = 0
                    s = _1110 + 32
                    t = mem[64] + 224
                    while idx < _16645:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16597 + 128] = (32 * _16645) + 224
                    _16917 = mem[_1110 + 96]
                    mem[_16597 + (32 * _16645) + 224] = mem[_1110 + 96]
                    idx = 0
                    s = _1110 + 128
                    t = _16597 + (32 * _16645) + 256
                    while idx < _16917:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16597 + 160] = (32 * _16645) + (32 * _16917) + 256
                    _17109 = mem[_1110 + 160]
                    mem[_16597 + (32 * _16645) + (32 * _16917) + 256] = mem[_1110 + 160]
                    idx = 0
                    s = _1110 + 192
                    t = _16597 + (32 * _16645) + (32 * _16917) + 288
                    while idx < _17109:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _16597 + (32 * _16645) + (32 * _16917) + (32 * _17109) + -mem[64] + 288
                if stor3[address(_16373)] * _10995 + _10960 / 2 / stor3[stor5] > stor3[address(_16533)] * _16221 / stor3[stor5]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor3[address(_16533)] * _16221 / stor3[stor5] < stor3[address(_16373)] * _10995 + _10960 / 2 / stor3[stor5]:
                    revert with 'NH{q', 17
                _16629 = mem[64]
                mem[mem[64]] = _10995 + _10960 / 2
                mem[mem[64] + 32] = _16221
                mem[mem[64] + 64] = (stor3[address(_16533)] * _16221 / stor3[stor5]) - (stor3[address(_16373)] * _10995 + _10960 / 2 / stor3[stor5])
                mem[mem[64] + 96] = 192
                _16692 = mem[_1110]
                mem[mem[64] + 192] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 224
                while idx < _16692:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16629 + 128] = (32 * _16692) + 224
                _16916 = mem[_1110 + 96]
                mem[_16629 + (32 * _16692) + 224] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _16629 + (32 * _16692) + 256
                while idx < _16916:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16629 + 160] = (32 * _16692) + (32 * _16916) + 256
                _17108 = mem[_1110 + 160]
                mem[_16629 + (32 * _16692) + (32 * _16916) + 256] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _16629 + (32 * _16692) + (32 * _16916) + 288
                while idx < _17108:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16629 + (32 * _16692) + (32 * _16916) + (32 * _17108) + -mem[64] + 288
            if ext_call.return_data[0] - stor4[mem[0]] and 618034 > -1 / ext_call.return_data[0] - stor4[mem[0]]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0] - stor4[mem[0]]:
                revert with 'NH{q', 18
            if (618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / ext_call.return_data[0] - stor4[mem[0]] != 618034:
                revert with 0, 'SafeMath: multiplication overflow'
            if stor4[mem[0]] > -((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) - 1:
                revert with 'NH{q', 17
            if stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) < stor4[mem[0]]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1110 + ceil32(return_data.size) + 384] = stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6)
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _1380 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _1386 = mem[_1110 + 32]
            mem[_1110 + ceil32(return_data.size) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_1110 + ceil32(return_data.size) + 484] = stor4[mem[0]]
            mem[_1110 + ceil32(return_data.size) + 516] = 128
            mem[_1110 + ceil32(return_data.size) + 612] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = _1110 + ceil32(return_data.size) + 644
            while idx < mem[_1110]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + ceil32(return_data.size) + 548] = (32 * mem[_1110]) + 160
            mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 644] = 1
            idx = 0
            s = _1110 + 128
            t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + ceil32(return_data.size) + 580] = (32 * mem[_1110]) + 224
            mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 708] = 1
            idx = 0
            s = _1110 + 192
            t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args stor4[mem[0]], Array(len=mem[_1110 + ceil32(return_data.size) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676], 1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
            mem[_1110 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1110 + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(_1380)
            mem[32] = 3
            if stor3[address(_1380)] and ext_call.return_data[0] > -1 / stor3[address(_1380)]:
                revert with 'NH{q', 17
            if not stor3[address(_1386)]:
                revert with 'NH{q', 18
            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_1380)] * ext_call.return_data[0] / stor3[address(_1386)]
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _3370 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _3386 = mem[_1110 + 32]
            mem[_1110 + (2 * ceil32(return_data.size)) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_1110 + (2 * ceil32(return_data.size)) + 484] = mem[_1110 + ceil32(return_data.size) + 384]
            mem[_1110 + (2 * ceil32(return_data.size)) + 516] = 128
            mem[_1110 + (2 * ceil32(return_data.size)) + 612] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = _1110 + (2 * ceil32(return_data.size)) + 644
            while idx < mem[_1110]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + (2 * ceil32(return_data.size)) + 548] = (32 * mem[_1110]) + 160
            mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 644] = 1
            idx = 0
            s = _1110 + 128
            t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + (2 * ceil32(return_data.size)) + 580] = (32 * mem[_1110]) + 224
            mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 708] = 1
            idx = 0
            s = _1110 + 192
            t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args mem[_1110 + (2 * ceil32(return_data.size)) + 484], Array(len=mem[_1110 + (2 * ceil32(return_data.size)) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676], 1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
            mem[_1110 + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1110 + (4 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(_3370)
            mem[32] = 3
            if stor3[address(_3370)] and ext_call.return_data[0] > -1 / stor3[address(_3370)]:
                revert with 'NH{q', 17
            if not stor3[address(_3386)]:
                revert with 'NH{q', 18
            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_3370)] * ext_call.return_data[0] / stor3[address(_3386)]
            idx = 0
            while idx < 20:
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 256] = mem[_1110 + ceil32(return_data.size) + 352]
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 384]
                    if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 416] = mem[_1110 + ceil32(return_data.size) + 448]
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 0
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _11490 = mem[_1110 + ceil32(return_data.size) + 256]
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11678 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11724 = mem[_1110 + 32]
                        _11725 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11490
                        mem[mem[64] + 36] = 128
                        _11967 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _11967:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11725 + 68] = (32 * _11967) + 160
                        _13687 = mem[_1110 + 96]
                        mem[_11725 + (32 * _11967) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _11725 + (32 * _11967) + 196
                        while s < _13687:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11725 + 100] = (32 * _11967) + (32 * _13687) + 192
                        _14951 = mem[_1110 + 160]
                        mem[_11725 + (32 * _11967) + (32 * _13687) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _11725 + (32 * _11967) + (32 * _13687) + 228
                        while s < _14951:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11725 + (32 * _11967) + (32 * _13687) + (32 * _14951) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16135 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16215 = mem[_16135]
                        require mem[_16135] == mem[_16135]
                        mem[0] = address(_11678)
                        mem[32] = 3
                        if stor3[address(_11678)] and _16215 > -1 / stor3[address(_11678)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_11724)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_11678)] * _16215 / stor3[address(_11724)]
                    else:
                        if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 17
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _11900 = mem[_1110 + ceil32(return_data.size) + 256]
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12174 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12246 = mem[_1110 + 32]
                            _12247 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11900
                            mem[mem[64] + 36] = 128
                            _12382 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12382:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12247 + 68] = (32 * _12382) + 160
                            _13685 = mem[_1110 + 96]
                            mem[_12247 + (32 * _12382) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12247 + (32 * _12382) + 196
                            while s < _13685:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12247 + 100] = (32 * _12382) + (32 * _13685) + 192
                            _14949 = mem[_1110 + 160]
                            mem[_12247 + (32 * _12382) + (32 * _13685) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12247 + (32 * _12382) + (32 * _13685) + 228
                            while s < _14949:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12247 + (32 * _12382) + (32 * _13685) + (32 * _14949) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16133 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16213 = mem[_16133]
                            require mem[_16133] == mem[_16133]
                            mem[0] = address(_12174)
                            mem[32] = 3
                            if stor3[address(_12174)] and _16213 > -1 / stor3[address(_12174)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12246)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12174)] * _16213 / stor3[address(_12246)]
                        else:
                            if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 17
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 18
                            if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -(618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _12338 = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12516 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12558 = mem[_1110 + 32]
                            _12559 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _12338
                            mem[mem[64] + 36] = 128
                            _12672 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12672:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12559 + 68] = (32 * _12672) + 160
                            _13684 = mem[_1110 + 96]
                            mem[_12559 + (32 * _12672) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12559 + (32 * _12672) + 196
                            while s < _13684:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12559 + 100] = (32 * _12672) + (32 * _13684) + 192
                            _14948 = mem[_1110 + 160]
                            mem[_12559 + (32 * _12672) + (32 * _13684) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12559 + (32 * _12672) + (32 * _13684) + 228
                            while s < _14948:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12559 + (32 * _12672) + (32 * _13684) + (32 * _14948) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16212 = mem[_16132]
                            require mem[_16132] == mem[_16132]
                            mem[0] = address(_12516)
                            mem[32] = 3
                            if stor3[address(_12516)] and _16212 > -1 / stor3[address(_12516)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12558)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12516)] * _16212 / stor3[address(_12558)]
                else:
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 288] = mem[_1110 + ceil32(return_data.size) + 384]
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 352]
                    if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 448] = mem[_1110 + ceil32(return_data.size) + 416]
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 0
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _11491 = mem[_1110 + ceil32(return_data.size) + 256]
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11680 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11726 = mem[_1110 + 32]
                        _11727 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11491
                        mem[mem[64] + 36] = 128
                        _11969 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _11969:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11727 + 68] = (32 * _11969) + 160
                        _13691 = mem[_1110 + 96]
                        mem[_11727 + (32 * _11969) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _11727 + (32 * _11969) + 196
                        while s < _13691:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11727 + 100] = (32 * _11969) + (32 * _13691) + 192
                        _14955 = mem[_1110 + 160]
                        mem[_11727 + (32 * _11969) + (32 * _13691) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _11727 + (32 * _11969) + (32 * _13691) + 228
                        while s < _14955:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11727 + (32 * _11969) + (32 * _13691) + (32 * _14955) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16219 = mem[_16139]
                        require mem[_16139] == mem[_16139]
                        mem[0] = address(_11680)
                        mem[32] = 3
                        if stor3[address(_11680)] and _16219 > -1 / stor3[address(_11680)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_11726)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_11680)] * _16219 / stor3[address(_11726)]
                    else:
                        if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 17
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _11902 = mem[_1110 + ceil32(return_data.size) + 256]
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12179 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12250 = mem[_1110 + 32]
                            _12251 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11902
                            mem[mem[64] + 36] = 128
                            _12384 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12384:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12251 + 68] = (32 * _12384) + 160
                            _13689 = mem[_1110 + 96]
                            mem[_12251 + (32 * _12384) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12251 + (32 * _12384) + 196
                            while s < _13689:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12251 + 100] = (32 * _12384) + (32 * _13689) + 192
                            _14953 = mem[_1110 + 160]
                            mem[_12251 + (32 * _12384) + (32 * _13689) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12251 + (32 * _12384) + (32 * _13689) + 228
                            while s < _14953:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12251 + (32 * _12384) + (32 * _13689) + (32 * _14953) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16137 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16217 = mem[_16137]
                            require mem[_16137] == mem[_16137]
                            mem[0] = address(_12179)
                            mem[32] = 3
                            if stor3[address(_12179)] and _16217 > -1 / stor3[address(_12179)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12250)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12179)] * _16217 / stor3[address(_12250)]
                        else:
                            if mem[_1110 + ceil32(return_data.size) + 320] and 381966 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 17
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 18
                            if 381966 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -(381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _12339 = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12520 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12560 = mem[_1110 + 32]
                            _12561 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _12339
                            mem[mem[64] + 36] = 128
                            _12673 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12673:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12561 + 68] = (32 * _12673) + 160
                            _13688 = mem[_1110 + 96]
                            mem[_12561 + (32 * _12673) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12561 + (32 * _12673) + 196
                            while s < _13688:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12561 + 100] = (32 * _12673) + (32 * _13688) + 192
                            _14952 = mem[_1110 + 160]
                            mem[_12561 + (32 * _12673) + (32 * _13688) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12561 + (32 * _12673) + (32 * _13688) + 228
                            while s < _14952:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12561 + (32 * _12673) + (32 * _13688) + (32 * _14952) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16136 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16216 = mem[_16136]
                            require mem[_16136] == mem[_16136]
                            mem[0] = address(_12520)
                            mem[32] = 3
                            if stor3[address(_12520)] and _16216 > -1 / stor3[address(_12520)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12560)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12520)] * _16216 / stor3[address(_12560)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                _10950 = mem[_1110 + ceil32(return_data.size) + 288]
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                _10990 = mem[_1110 + ceil32(return_data.size) + 352]
                if mem[_1110 + ceil32(return_data.size) + 352] > -mem[_1110 + ceil32(return_data.size) + 288] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 352] + mem[_1110 + ceil32(return_data.size) + 288] < mem[_1110 + ceil32(return_data.size) + 352]:
                    revert with 0, 'SafeMath: addition overflow'
                _11230 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _10990 + _10950 / 2
                mem[mem[64] + 36] = 128
                _11250 = mem[_1110]
                mem[mem[64] + 132] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 164
                while idx < _11250:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11230 + 68] = (32 * _11250) + 160
                _13682 = mem[_1110 + 96]
                mem[_11230 + (32 * _11250) + 164] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _11230 + (32 * _11250) + 196
                while idx < _13682:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11230 + 100] = (32 * _11250) + (32 * _13682) + 192
                _14946 = mem[_1110 + 160]
                mem[_11230 + (32 * _11250) + (32 * _13682) + 196] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _11230 + (32 * _11250) + (32 * _13682) + 228
                while idx < _14946:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11230 + (32 * _11250) + (32 * _13682) + (32 * _14946) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16210 = mem[_16130]
                require mem[_16130] == mem[_16130]
                if 0 >= mem[_1110]:
                    revert with 'NH{q', 50
                _16354 = mem[_1110 + 32]
                mem[0] = mem[_1110 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16354)] and _10990 + _10950 / 2 > -1 / stor3[address(_16354)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if mem[_1110] < 1:
                    revert with 'NH{q', 17
                if mem[_1110] - 1 >= mem[_1110]:
                    revert with 'NH{q', 50
                _16530 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16530)] and _16210 > -1 / stor3[address(_16530)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if stor3[address(_16530)] * _16210 / stor3[stor5] <= stor3[address(_16354)] * _10990 + _10950 / 2 / stor3[stor5]:
                    _16594 = mem[64]
                    mem[mem[64]] = _10990 + _10950 / 2
                    mem[mem[64] + 32] = _16210
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 192
                    _16642 = mem[_1110]
                    mem[mem[64] + 192] = mem[_1110]
                    idx = 0
                    s = _1110 + 32
                    t = mem[64] + 224
                    while idx < _16642:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16594 + 128] = (32 * _16642) + 224
                    _16911 = mem[_1110 + 96]
                    mem[_16594 + (32 * _16642) + 224] = mem[_1110 + 96]
                    idx = 0
                    s = _1110 + 128
                    t = _16594 + (32 * _16642) + 256
                    while idx < _16911:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16594 + 160] = (32 * _16642) + (32 * _16911) + 256
                    _17103 = mem[_1110 + 160]
                    mem[_16594 + (32 * _16642) + (32 * _16911) + 256] = mem[_1110 + 160]
                    idx = 0
                    s = _1110 + 192
                    t = _16594 + (32 * _16642) + (32 * _16911) + 288
                    while idx < _17103:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _16594 + (32 * _16642) + (32 * _16911) + (32 * _17103) + -mem[64] + 288
                if stor3[address(_16354)] * _10990 + _10950 / 2 / stor3[stor5] > stor3[address(_16530)] * _16210 / stor3[stor5]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor3[address(_16530)] * _16210 / stor3[stor5] < stor3[address(_16354)] * _10990 + _10950 / 2 / stor3[stor5]:
                    revert with 'NH{q', 17
                _16626 = mem[64]
                mem[mem[64]] = _10990 + _10950 / 2
                mem[mem[64] + 32] = _16210
                mem[mem[64] + 64] = (stor3[address(_16530)] * _16210 / stor3[stor5]) - (stor3[address(_16354)] * _10990 + _10950 / 2 / stor3[stor5])
                mem[mem[64] + 96] = 192
                _16686 = mem[_1110]
                mem[mem[64] + 192] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 224
                while idx < _16686:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16626 + 128] = (32 * _16686) + 224
                _16910 = mem[_1110 + 96]
                mem[_16626 + (32 * _16686) + 224] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _16626 + (32 * _16686) + 256
                while idx < _16910:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16626 + 160] = (32 * _16686) + (32 * _16910) + 256
                _17102 = mem[_1110 + 160]
                mem[_16626 + (32 * _16686) + (32 * _16910) + 256] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _16626 + (32 * _16686) + (32 * _16910) + 288
                while idx < _17102:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16626 + (32 * _16686) + (32 * _16910) + (32 * _17102) + -mem[64] + 288
            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            _10952 = mem[_1110 + ceil32(return_data.size) + 384]
            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            _10991 = mem[_1110 + ceil32(return_data.size) + 256]
            if mem[_1110 + ceil32(return_data.size) + 256] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 256] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 256]:
                revert with 0, 'SafeMath: addition overflow'
            _11231 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _10991 + _10952 / 2
            mem[mem[64] + 36] = 128
            _11251 = mem[_1110]
            mem[mem[64] + 132] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 164
            while idx < _11251:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11231 + 68] = (32 * _11251) + 160
            _13683 = mem[_1110 + 96]
            mem[_11231 + (32 * _11251) + 164] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _11231 + (32 * _11251) + 196
            while idx < _13683:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11231 + 100] = (32 * _11251) + (32 * _13683) + 192
            _14947 = mem[_1110 + 160]
            mem[_11231 + (32 * _11251) + (32 * _13683) + 196] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _11231 + (32 * _11251) + (32 * _13683) + 228
            while idx < _14947:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11231 + (32 * _11251) + (32 * _13683) + (32 * _14947) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16211 = mem[_16131]
            require mem[_16131] == mem[_16131]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _16355 = mem[_1110 + 32]
            mem[0] = mem[_1110 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16355)] and _10991 + _10952 / 2 > -1 / stor3[address(_16355)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _16531 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16531)] and _16211 > -1 / stor3[address(_16531)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if stor3[address(_16531)] * _16211 / stor3[stor5] <= stor3[address(_16355)] * _10991 + _10952 / 2 / stor3[stor5]:
                _16595 = mem[64]
                mem[mem[64]] = _10991 + _10952 / 2
                mem[mem[64] + 32] = _16211
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 192
                _16643 = mem[_1110]
                mem[mem[64] + 192] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 224
                while idx < _16643:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16595 + 128] = (32 * _16643) + 224
                _16913 = mem[_1110 + 96]
                mem[_16595 + (32 * _16643) + 224] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _16595 + (32 * _16643) + 256
                while idx < _16913:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16595 + 160] = (32 * _16643) + (32 * _16913) + 256
                _17105 = mem[_1110 + 160]
                mem[_16595 + (32 * _16643) + (32 * _16913) + 256] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _16595 + (32 * _16643) + (32 * _16913) + 288
                while idx < _17105:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16595 + (32 * _16643) + (32 * _16913) + (32 * _17105) + -mem[64] + 288
            if stor3[address(_16355)] * _10991 + _10952 / 2 / stor3[stor5] > stor3[address(_16531)] * _16211 / stor3[stor5]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor3[address(_16531)] * _16211 / stor3[stor5] < stor3[address(_16355)] * _10991 + _10952 / 2 / stor3[stor5]:
                revert with 'NH{q', 17
            _16627 = mem[64]
            mem[mem[64]] = _10991 + _10952 / 2
            mem[mem[64] + 32] = _16211
            mem[mem[64] + 64] = (stor3[address(_16531)] * _16211 / stor3[stor5]) - (stor3[address(_16355)] * _10991 + _10952 / 2 / stor3[stor5])
            mem[mem[64] + 96] = 192
            _16688 = mem[_1110]
            mem[mem[64] + 192] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 224
            while idx < _16688:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16627 + 128] = (32 * _16688) + 224
            _16912 = mem[_1110 + 96]
            mem[_16627 + (32 * _16688) + 224] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _16627 + (32 * _16688) + 256
            while idx < _16912:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16627 + 160] = (32 * _16688) + (32 * _16912) + 256
            _17104 = mem[_1110 + 160]
            mem[_16627 + (32 * _16688) + (32 * _16912) + 256] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _16627 + (32 * _16688) + (32 * _16912) + 288
            while idx < _17104:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16627 + (32 * _16688) + (32 * _16912) + (32 * _17104) + -mem[64] + 288
        if ext_call.return_data[0] - stor4[mem[0]] and 381966 > -1 / ext_call.return_data[0] - stor4[mem[0]]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] - stor4[mem[0]]:
            revert with 'NH{q', 18
        if (381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / ext_call.return_data[0] - stor4[mem[0]] != 381966:
            revert with 0, 'SafeMath: multiplication overflow'
        if stor4[mem[0]] > -((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6) - 1:
            revert with 'NH{q', 17
        if stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6) < stor4[mem[0]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_1110 + ceil32(return_data.size) + 352] = stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6)
        if not ext_call.return_data[0] - stor4[mem[0]]:
            if stor4[mem[0]] > -1:
                revert with 'NH{q', 17
            if stor4[mem[0]] < stor4[mem[0]]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1110 + ceil32(return_data.size) + 384] = stor4[mem[0]]
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _1378 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _1384 = mem[_1110 + 32]
            mem[_1110 + ceil32(return_data.size) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_1110 + ceil32(return_data.size) + 484] = stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6)
            mem[_1110 + ceil32(return_data.size) + 516] = 128
            mem[_1110 + ceil32(return_data.size) + 612] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = _1110 + ceil32(return_data.size) + 644
            while idx < mem[_1110]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + ceil32(return_data.size) + 548] = (32 * mem[_1110]) + 160
            mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 644] = 1
            idx = 0
            s = _1110 + 128
            t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + ceil32(return_data.size) + 580] = (32 * mem[_1110]) + 224
            mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 708] = 1
            idx = 0
            s = _1110 + 192
            t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6), Array(len=mem[_1110 + ceil32(return_data.size) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676], 1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
            mem[_1110 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1110 + (2 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(_1378)
            mem[32] = 3
            if stor3[address(_1378)] and ext_call.return_data[0] > -1 / stor3[address(_1378)]:
                revert with 'NH{q', 17
            if not stor3[address(_1384)]:
                revert with 'NH{q', 18
            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_1378)] * ext_call.return_data[0] / stor3[address(_1384)]
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _3368 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _3384 = mem[_1110 + 32]
            mem[_1110 + (2 * ceil32(return_data.size)) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_1110 + (2 * ceil32(return_data.size)) + 484] = mem[_1110 + ceil32(return_data.size) + 384]
            mem[_1110 + (2 * ceil32(return_data.size)) + 516] = 128
            mem[_1110 + (2 * ceil32(return_data.size)) + 612] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = _1110 + (2 * ceil32(return_data.size)) + 644
            while idx < mem[_1110]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + (2 * ceil32(return_data.size)) + 548] = (32 * mem[_1110]) + 160
            mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 644] = 1
            idx = 0
            s = _1110 + 128
            t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + (2 * ceil32(return_data.size)) + 580] = (32 * mem[_1110]) + 224
            mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 708] = 1
            idx = 0
            s = _1110 + 192
            t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args mem[_1110 + (2 * ceil32(return_data.size)) + 484], Array(len=mem[_1110 + (2 * ceil32(return_data.size)) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676], 1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
            mem[_1110 + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1110 + (4 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(_3368)
            mem[32] = 3
            if stor3[address(_3368)] and ext_call.return_data[0] > -1 / stor3[address(_3368)]:
                revert with 'NH{q', 17
            if not stor3[address(_3384)]:
                revert with 'NH{q', 18
            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_3368)] * ext_call.return_data[0] / stor3[address(_3384)]
            idx = 0
            while idx < 20:
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 256] = mem[_1110 + ceil32(return_data.size) + 352]
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 384]
                    if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 416] = mem[_1110 + ceil32(return_data.size) + 448]
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 0
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _11488 = mem[_1110 + ceil32(return_data.size) + 256]
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11674 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11718 = mem[_1110 + 32]
                        _11719 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11488
                        mem[mem[64] + 36] = 128
                        _11963 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _11963:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11719 + 68] = (32 * _11963) + 160
                        _13677 = mem[_1110 + 96]
                        mem[_11719 + (32 * _11963) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _11719 + (32 * _11963) + 196
                        while s < _13677:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11719 + 100] = (32 * _11963) + (32 * _13677) + 192
                        _14941 = mem[_1110 + 160]
                        mem[_11719 + (32 * _11963) + (32 * _13677) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _11719 + (32 * _11963) + (32 * _13677) + 228
                        while s < _14941:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11719 + (32 * _11963) + (32 * _13677) + (32 * _14941) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16205 = mem[_16125]
                        require mem[_16125] == mem[_16125]
                        mem[0] = address(_11674)
                        mem[32] = 3
                        if stor3[address(_11674)] and _16205 > -1 / stor3[address(_11674)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_11718)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_11674)] * _16205 / stor3[address(_11718)]
                    else:
                        if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 17
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _11894 = mem[_1110 + ceil32(return_data.size) + 256]
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12160 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12238 = mem[_1110 + 32]
                            _12239 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11894
                            mem[mem[64] + 36] = 128
                            _12378 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12378:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12239 + 68] = (32 * _12378) + 160
                            _13675 = mem[_1110 + 96]
                            mem[_12239 + (32 * _12378) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12239 + (32 * _12378) + 196
                            while s < _13675:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12239 + 100] = (32 * _12378) + (32 * _13675) + 192
                            _14939 = mem[_1110 + 160]
                            mem[_12239 + (32 * _12378) + (32 * _13675) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12239 + (32 * _12378) + (32 * _13675) + 228
                            while s < _14939:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12239 + (32 * _12378) + (32 * _13675) + (32 * _14939) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16203 = mem[_16123]
                            require mem[_16123] == mem[_16123]
                            mem[0] = address(_12160)
                            mem[32] = 3
                            if stor3[address(_12160)] and _16203 > -1 / stor3[address(_12160)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12238)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12160)] * _16203 / stor3[address(_12238)]
                        else:
                            if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 17
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 18
                            if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -(618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _12336 = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12506 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12554 = mem[_1110 + 32]
                            _12555 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _12336
                            mem[mem[64] + 36] = 128
                            _12668 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12668:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12555 + 68] = (32 * _12668) + 160
                            _13674 = mem[_1110 + 96]
                            mem[_12555 + (32 * _12668) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12555 + (32 * _12668) + 196
                            while s < _13674:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12555 + 100] = (32 * _12668) + (32 * _13674) + 192
                            _14938 = mem[_1110 + 160]
                            mem[_12555 + (32 * _12668) + (32 * _13674) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12555 + (32 * _12668) + (32 * _13674) + 228
                            while s < _14938:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12555 + (32 * _12668) + (32 * _13674) + (32 * _14938) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16122 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16202 = mem[_16122]
                            require mem[_16122] == mem[_16122]
                            mem[0] = address(_12506)
                            mem[32] = 3
                            if stor3[address(_12506)] and _16202 > -1 / stor3[address(_12506)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12554)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12506)] * _16202 / stor3[address(_12554)]
                else:
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 288] = mem[_1110 + ceil32(return_data.size) + 384]
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 352]
                    if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 448] = mem[_1110 + ceil32(return_data.size) + 416]
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 0
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _11489 = mem[_1110 + ceil32(return_data.size) + 256]
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11676 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _11720 = mem[_1110 + 32]
                        _11721 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11489
                        mem[mem[64] + 36] = 128
                        _11965 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _11965:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11721 + 68] = (32 * _11965) + 160
                        _13681 = mem[_1110 + 96]
                        mem[_11721 + (32 * _11965) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _11721 + (32 * _11965) + 196
                        while s < _13681:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11721 + 100] = (32 * _11965) + (32 * _13681) + 192
                        _14945 = mem[_1110 + 160]
                        mem[_11721 + (32 * _11965) + (32 * _13681) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _11721 + (32 * _11965) + (32 * _13681) + 228
                        while s < _14945:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11721 + (32 * _11965) + (32 * _13681) + (32 * _14945) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16209 = mem[_16129]
                        require mem[_16129] == mem[_16129]
                        mem[0] = address(_11676)
                        mem[32] = 3
                        if stor3[address(_11676)] and _16209 > -1 / stor3[address(_11676)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_11720)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_11676)] * _16209 / stor3[address(_11720)]
                    else:
                        if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 17
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                        if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _11896 = mem[_1110 + ceil32(return_data.size) + 256]
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12165 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12242 = mem[_1110 + 32]
                            _12243 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11896
                            mem[mem[64] + 36] = 128
                            _12380 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12380:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12243 + 68] = (32 * _12380) + 160
                            _13679 = mem[_1110 + 96]
                            mem[_12243 + (32 * _12380) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12243 + (32 * _12380) + 196
                            while s < _13679:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12243 + 100] = (32 * _12380) + (32 * _13679) + 192
                            _14943 = mem[_1110 + 160]
                            mem[_12243 + (32 * _12380) + (32 * _13679) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12243 + (32 * _12380) + (32 * _13679) + 228
                            while s < _14943:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12243 + (32 * _12380) + (32 * _13679) + (32 * _14943) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16207 = mem[_16127]
                            require mem[_16127] == mem[_16127]
                            mem[0] = address(_12165)
                            mem[32] = 3
                            if stor3[address(_12165)] and _16207 > -1 / stor3[address(_12165)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12242)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12165)] * _16207 / stor3[address(_12242)]
                        else:
                            if mem[_1110 + ceil32(return_data.size) + 320] and 381966 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 17
                            if not mem[_1110 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 18
                            if 381966 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            if mem[_1110 + ceil32(return_data.size) + 256] > -(381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            _12337 = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                            if mem[_1110] < 1:
                                revert with 'NH{q', 17
                            if mem[_1110] - 1 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12510 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                            if 0 >= mem[_1110]:
                                revert with 'NH{q', 50
                            _12556 = mem[_1110 + 32]
                            _12557 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _12337
                            mem[mem[64] + 36] = 128
                            _12669 = mem[_1110]
                            mem[mem[64] + 132] = mem[_1110]
                            s = 0
                            t = _1110 + 32
                            u = mem[64] + 164
                            while s < _12669:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12557 + 68] = (32 * _12669) + 160
                            _13678 = mem[_1110 + 96]
                            mem[_12557 + (32 * _12669) + 164] = mem[_1110 + 96]
                            s = 0
                            t = _1110 + 128
                            u = _12557 + (32 * _12669) + 196
                            while s < _13678:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12557 + 100] = (32 * _12669) + (32 * _13678) + 192
                            _14942 = mem[_1110 + 160]
                            mem[_12557 + (32 * _12669) + (32 * _13678) + 196] = mem[_1110 + 160]
                            s = 0
                            t = _1110 + 192
                            u = _12557 + (32 * _12669) + (32 * _13678) + 228
                            while s < _14942:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12557 + (32 * _12669) + (32 * _13678) + (32 * _14942) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16206 = mem[_16126]
                            require mem[_16126] == mem[_16126]
                            mem[0] = address(_12510)
                            mem[32] = 3
                            if stor3[address(_12510)] and _16206 > -1 / stor3[address(_12510)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12556)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 50
                            mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12510)] * _16206 / stor3[address(_12556)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                _10942 = mem[_1110 + ceil32(return_data.size) + 288]
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                _10986 = mem[_1110 + ceil32(return_data.size) + 352]
                if mem[_1110 + ceil32(return_data.size) + 352] > -mem[_1110 + ceil32(return_data.size) + 288] - 1:
                    revert with 'NH{q', 17
                if mem[_1110 + ceil32(return_data.size) + 352] + mem[_1110 + ceil32(return_data.size) + 288] < mem[_1110 + ceil32(return_data.size) + 352]:
                    revert with 0, 'SafeMath: addition overflow'
                _11226 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _10986 + _10942 / 2
                mem[mem[64] + 36] = 128
                _11248 = mem[_1110]
                mem[mem[64] + 132] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 164
                while idx < _11248:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11226 + 68] = (32 * _11248) + 160
                _13672 = mem[_1110 + 96]
                mem[_11226 + (32 * _11248) + 164] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _11226 + (32 * _11248) + 196
                while idx < _13672:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11226 + 100] = (32 * _11248) + (32 * _13672) + 192
                _14936 = mem[_1110 + 160]
                mem[_11226 + (32 * _11248) + (32 * _13672) + 196] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _11226 + (32 * _11248) + (32 * _13672) + 228
                while idx < _14936:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11226 + (32 * _11248) + (32 * _13672) + (32 * _14936) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16200 = mem[_16120]
                require mem[_16120] == mem[_16120]
                if 0 >= mem[_1110]:
                    revert with 'NH{q', 50
                _16336 = mem[_1110 + 32]
                mem[0] = mem[_1110 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16336)] and _10986 + _10942 / 2 > -1 / stor3[address(_16336)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if mem[_1110] < 1:
                    revert with 'NH{q', 17
                if mem[_1110] - 1 >= mem[_1110]:
                    revert with 'NH{q', 50
                _16528 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16528)] and _16200 > -1 / stor3[address(_16528)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if stor3[address(_16528)] * _16200 / stor3[stor5] <= stor3[address(_16336)] * _10986 + _10942 / 2 / stor3[stor5]:
                    _16592 = mem[64]
                    mem[mem[64]] = _10986 + _10942 / 2
                    mem[mem[64] + 32] = _16200
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 192
                    _16640 = mem[_1110]
                    mem[mem[64] + 192] = mem[_1110]
                    idx = 0
                    s = _1110 + 32
                    t = mem[64] + 224
                    while idx < _16640:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16592 + 128] = (32 * _16640) + 224
                    _16907 = mem[_1110 + 96]
                    mem[_16592 + (32 * _16640) + 224] = mem[_1110 + 96]
                    idx = 0
                    s = _1110 + 128
                    t = _16592 + (32 * _16640) + 256
                    while idx < _16907:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16592 + 160] = (32 * _16640) + (32 * _16907) + 256
                    _17099 = mem[_1110 + 160]
                    mem[_16592 + (32 * _16640) + (32 * _16907) + 256] = mem[_1110 + 160]
                    idx = 0
                    s = _1110 + 192
                    t = _16592 + (32 * _16640) + (32 * _16907) + 288
                    while idx < _17099:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _16592 + (32 * _16640) + (32 * _16907) + (32 * _17099) + -mem[64] + 288
                if stor3[address(_16336)] * _10986 + _10942 / 2 / stor3[stor5] > stor3[address(_16528)] * _16200 / stor3[stor5]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor3[address(_16528)] * _16200 / stor3[stor5] < stor3[address(_16336)] * _10986 + _10942 / 2 / stor3[stor5]:
                    revert with 'NH{q', 17
                _16624 = mem[64]
                mem[mem[64]] = _10986 + _10942 / 2
                mem[mem[64] + 32] = _16200
                mem[mem[64] + 64] = (stor3[address(_16528)] * _16200 / stor3[stor5]) - (stor3[address(_16336)] * _10986 + _10942 / 2 / stor3[stor5])
                mem[mem[64] + 96] = 192
                _16682 = mem[_1110]
                mem[mem[64] + 192] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 224
                while idx < _16682:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16624 + 128] = (32 * _16682) + 224
                _16906 = mem[_1110 + 96]
                mem[_16624 + (32 * _16682) + 224] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _16624 + (32 * _16682) + 256
                while idx < _16906:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16624 + 160] = (32 * _16682) + (32 * _16906) + 256
                _17098 = mem[_1110 + 160]
                mem[_16624 + (32 * _16682) + (32 * _16906) + 256] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _16624 + (32 * _16682) + (32 * _16906) + 288
                while idx < _17098:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16624 + (32 * _16682) + (32 * _16906) + (32 * _17098) + -mem[64] + 288
            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            _10944 = mem[_1110 + ceil32(return_data.size) + 384]
            if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            _10987 = mem[_1110 + ceil32(return_data.size) + 256]
            if mem[_1110 + ceil32(return_data.size) + 256] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 256] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 256]:
                revert with 0, 'SafeMath: addition overflow'
            _11227 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _10987 + _10944 / 2
            mem[mem[64] + 36] = 128
            _11249 = mem[_1110]
            mem[mem[64] + 132] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 164
            while idx < _11249:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11227 + 68] = (32 * _11249) + 160
            _13673 = mem[_1110 + 96]
            mem[_11227 + (32 * _11249) + 164] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _11227 + (32 * _11249) + 196
            while idx < _13673:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11227 + 100] = (32 * _11249) + (32 * _13673) + 192
            _14937 = mem[_1110 + 160]
            mem[_11227 + (32 * _11249) + (32 * _13673) + 196] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _11227 + (32 * _11249) + (32 * _13673) + 228
            while idx < _14937:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11227 + (32 * _11249) + (32 * _13673) + (32 * _14937) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16201 = mem[_16121]
            require mem[_16121] == mem[_16121]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _16337 = mem[_1110 + 32]
            mem[0] = mem[_1110 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16337)] and _10987 + _10944 / 2 > -1 / stor3[address(_16337)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _16529 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16529)] and _16201 > -1 / stor3[address(_16529)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if stor3[address(_16529)] * _16201 / stor3[stor5] <= stor3[address(_16337)] * _10987 + _10944 / 2 / stor3[stor5]:
                _16593 = mem[64]
                mem[mem[64]] = _10987 + _10944 / 2
                mem[mem[64] + 32] = _16201
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 192
                _16641 = mem[_1110]
                mem[mem[64] + 192] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 224
                while idx < _16641:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16593 + 128] = (32 * _16641) + 224
                _16909 = mem[_1110 + 96]
                mem[_16593 + (32 * _16641) + 224] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _16593 + (32 * _16641) + 256
                while idx < _16909:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16593 + 160] = (32 * _16641) + (32 * _16909) + 256
                _17101 = mem[_1110 + 160]
                mem[_16593 + (32 * _16641) + (32 * _16909) + 256] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _16593 + (32 * _16641) + (32 * _16909) + 288
                while idx < _17101:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16593 + (32 * _16641) + (32 * _16909) + (32 * _17101) + -mem[64] + 288
            if stor3[address(_16337)] * _10987 + _10944 / 2 / stor3[stor5] > stor3[address(_16529)] * _16201 / stor3[stor5]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor3[address(_16529)] * _16201 / stor3[stor5] < stor3[address(_16337)] * _10987 + _10944 / 2 / stor3[stor5]:
                revert with 'NH{q', 17
            _16625 = mem[64]
            mem[mem[64]] = _10987 + _10944 / 2
            mem[mem[64] + 32] = _16201
            mem[mem[64] + 64] = (stor3[address(_16529)] * _16201 / stor3[stor5]) - (stor3[address(_16337)] * _10987 + _10944 / 2 / stor3[stor5])
            mem[mem[64] + 96] = 192
            _16684 = mem[_1110]
            mem[mem[64] + 192] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 224
            while idx < _16684:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16625 + 128] = (32 * _16684) + 224
            _16908 = mem[_1110 + 96]
            mem[_16625 + (32 * _16684) + 224] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _16625 + (32 * _16684) + 256
            while idx < _16908:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16625 + 160] = (32 * _16684) + (32 * _16908) + 256
            _17100 = mem[_1110 + 160]
            mem[_16625 + (32 * _16684) + (32 * _16908) + 256] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _16625 + (32 * _16684) + (32 * _16908) + 288
            while idx < _17100:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16625 + (32 * _16684) + (32 * _16908) + (32 * _17100) + -mem[64] + 288
        if ext_call.return_data[0] - stor4[mem[0]] and 618034 > -1 / ext_call.return_data[0] - stor4[mem[0]]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] - stor4[mem[0]]:
            revert with 'NH{q', 18
        if (618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / ext_call.return_data[0] - stor4[mem[0]] != 618034:
            revert with 0, 'SafeMath: multiplication overflow'
        if stor4[mem[0]] > -((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) - 1:
            revert with 'NH{q', 17
        if stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) < stor4[mem[0]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_1110 + ceil32(return_data.size) + 384] = stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6)
        if mem[_1110] < 1:
            revert with 'NH{q', 17
        if mem[_1110] - 1 >= mem[_1110]:
            revert with 'NH{q', 50
        _1436 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        _1444 = mem[_1110 + 32]
        mem[_1110 + ceil32(return_data.size) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_1110 + ceil32(return_data.size) + 484] = stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6)
        mem[_1110 + ceil32(return_data.size) + 516] = 128
        mem[_1110 + ceil32(return_data.size) + 612] = mem[_1110]
        idx = 0
        s = _1110 + 32
        t = _1110 + ceil32(return_data.size) + 644
        while idx < mem[_1110]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1110 + ceil32(return_data.size) + 548] = (32 * mem[_1110]) + 160
        mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 644] = 1
        idx = 0
        s = _1110 + 128
        t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1110 + ceil32(return_data.size) + 580] = (32 * mem[_1110]) + 224
        mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 708] = 1
        idx = 0
        s = _1110 + 192
        t = _1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6), Array(len=mem[_1110 + ceil32(return_data.size) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 676], 1, mem[_1110 + ceil32(return_data.size) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
        mem[_1110 + ceil32(return_data.size) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1110 + (2 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[0] = address(_1436)
        mem[32] = 3
        if stor3[address(_1436)] and ext_call.return_data[0] > -1 / stor3[address(_1436)]:
            revert with 'NH{q', 17
        if not stor3[address(_1444)]:
            revert with 'NH{q', 18
        mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_1436)] * ext_call.return_data[0] / stor3[address(_1444)]
        if mem[_1110] < 1:
            revert with 'NH{q', 17
        if mem[_1110] - 1 >= mem[_1110]:
            revert with 'NH{q', 50
        _3366 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        _3382 = mem[_1110 + 32]
        mem[_1110 + (2 * ceil32(return_data.size)) + 480] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_1110 + (2 * ceil32(return_data.size)) + 484] = mem[_1110 + ceil32(return_data.size) + 384]
        mem[_1110 + (2 * ceil32(return_data.size)) + 516] = 128
        mem[_1110 + (2 * ceil32(return_data.size)) + 612] = mem[_1110]
        idx = 0
        s = _1110 + 32
        t = _1110 + (2 * ceil32(return_data.size)) + 644
        while idx < mem[_1110]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1110 + (2 * ceil32(return_data.size)) + 548] = (32 * mem[_1110]) + 160
        mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 644] = 1
        idx = 0
        s = _1110 + 128
        t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1110 + (2 * ceil32(return_data.size)) + 580] = (32 * mem[_1110]) + 224
        mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 708] = 1
        idx = 0
        s = _1110 + 192
        t = _1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args mem[_1110 + (2 * ceil32(return_data.size)) + 484], Array(len=mem[_1110 + (2 * ceil32(return_data.size)) + 612 len (32 * mem[_1110]) + 32], data=1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 676], 1, mem[_1110 + (2 * ceil32(return_data.size)) + (32 * mem[_1110]) + 740]), (32 * mem[_1110]) + 160, (32 * mem[_1110]) + 224
        mem[_1110 + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1110 + (4 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[0] = address(_3366)
        mem[32] = 3
        if stor3[address(_3366)] and ext_call.return_data[0] > -1 / stor3[address(_3366)]:
            revert with 'NH{q', 17
        if not stor3[address(_3382)]:
            revert with 'NH{q', 18
        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_3366)] * ext_call.return_data[0] / stor3[address(_3382)]
        idx = 0
        while idx < 20:
            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 256] = mem[_1110 + ceil32(return_data.size) + 352]
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 384]
                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 416] = mem[_1110 + ceil32(return_data.size) + 448]
                if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if not mem[_1110 + ceil32(return_data.size) + 320]:
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 320] = 0
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                        revert with 'NH{q', 17
                    if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                    if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    _11486 = mem[_1110 + ceil32(return_data.size) + 256]
                    if mem[_1110] < 1:
                        revert with 'NH{q', 17
                    if mem[_1110] - 1 >= mem[_1110]:
                        revert with 'NH{q', 50
                    _11670 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                    if 0 >= mem[_1110]:
                        revert with 'NH{q', 50
                    _11712 = mem[_1110 + 32]
                    _11713 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11486
                    mem[mem[64] + 36] = 128
                    _11959 = mem[_1110]
                    mem[mem[64] + 132] = mem[_1110]
                    s = 0
                    t = _1110 + 32
                    u = mem[64] + 164
                    while s < _11959:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11713 + 68] = (32 * _11959) + 160
                    _13667 = mem[_1110 + 96]
                    mem[_11713 + (32 * _11959) + 164] = mem[_1110 + 96]
                    s = 0
                    t = _1110 + 128
                    u = _11713 + (32 * _11959) + 196
                    while s < _13667:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11713 + 100] = (32 * _11959) + (32 * _13667) + 192
                    _14931 = mem[_1110 + 160]
                    mem[_11713 + (32 * _11959) + (32 * _13667) + 196] = mem[_1110 + 160]
                    s = 0
                    t = _1110 + 192
                    u = _11713 + (32 * _11959) + (32 * _13667) + 228
                    while s < _14931:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11713 + (32 * _11959) + (32 * _13667) + (32 * _14931) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16195 = mem[_16115]
                    require mem[_16115] == mem[_16115]
                    mem[0] = address(_11670)
                    mem[32] = 3
                    if stor3[address(_11670)] and _16195 > -1 / stor3[address(_11670)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_11712)]:
                        revert with 'NH{q', 18
                    if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_11670)] * _16195 / stor3[address(_11712)]
                else:
                    if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 17
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256]
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _11888 = mem[_1110 + ceil32(return_data.size) + 256]
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12146 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12230 = mem[_1110 + 32]
                        _12231 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11888
                        mem[mem[64] + 36] = 128
                        _12374 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _12374:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12231 + 68] = (32 * _12374) + 160
                        _13665 = mem[_1110 + 96]
                        mem[_12231 + (32 * _12374) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _12231 + (32 * _12374) + 196
                        while s < _13665:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12231 + 100] = (32 * _12374) + (32 * _13665) + 192
                        _14929 = mem[_1110 + 160]
                        mem[_12231 + (32 * _12374) + (32 * _13665) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _12231 + (32 * _12374) + (32 * _13665) + 228
                        while s < _14929:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12231 + (32 * _12374) + (32 * _13665) + (32 * _14929) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16193 = mem[_16113]
                        require mem[_16113] == mem[_16113]
                        mem[0] = address(_12146)
                        mem[32] = 3
                        if stor3[address(_12146)] and _16193 > -1 / stor3[address(_12146)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12230)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12146)] * _16193 / stor3[address(_12230)]
                    else:
                        if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 17
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -(618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _12334 = mem[_1110 + ceil32(return_data.size) + 256] + (618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12496 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12550 = mem[_1110 + 32]
                        _12551 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _12334
                        mem[mem[64] + 36] = 128
                        _12664 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _12664:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12551 + 68] = (32 * _12664) + 160
                        _13664 = mem[_1110 + 96]
                        mem[_12551 + (32 * _12664) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _12551 + (32 * _12664) + 196
                        while s < _13664:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12551 + 100] = (32 * _12664) + (32 * _13664) + 192
                        _14928 = mem[_1110 + 160]
                        mem[_12551 + (32 * _12664) + (32 * _13664) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _12551 + (32 * _12664) + (32 * _13664) + 228
                        while s < _14928:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12551 + (32 * _12664) + (32 * _13664) + (32 * _14928) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16112 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16192 = mem[_16112]
                        require mem[_16112] == mem[_16112]
                        mem[0] = address(_12496)
                        mem[32] = 3
                        if stor3[address(_12496)] and _16192 > -1 / stor3[address(_12496)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12550)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 448] = stor3[address(_12496)] * _16192 / stor3[address(_12550)]
            else:
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 288] = mem[_1110 + ceil32(return_data.size) + 384]
                if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 384] = mem[_1110 + ceil32(return_data.size) + 352]
                if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                mem[_1110 + ceil32(return_data.size) + 448] = mem[_1110 + ceil32(return_data.size) + 416]
                if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if not mem[_1110 + ceil32(return_data.size) + 320]:
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 320] = 0
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                        revert with 'NH{q', 17
                    if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                    if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    _11487 = mem[_1110 + ceil32(return_data.size) + 256]
                    if mem[_1110] < 1:
                        revert with 'NH{q', 17
                    if mem[_1110] - 1 >= mem[_1110]:
                        revert with 'NH{q', 50
                    _11672 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                    if 0 >= mem[_1110]:
                        revert with 'NH{q', 50
                    _11714 = mem[_1110 + 32]
                    _11715 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11487
                    mem[mem[64] + 36] = 128
                    _11961 = mem[_1110]
                    mem[mem[64] + 132] = mem[_1110]
                    s = 0
                    t = _1110 + 32
                    u = mem[64] + 164
                    while s < _11961:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11715 + 68] = (32 * _11961) + 160
                    _13671 = mem[_1110 + 96]
                    mem[_11715 + (32 * _11961) + 164] = mem[_1110 + 96]
                    s = 0
                    t = _1110 + 128
                    u = _11715 + (32 * _11961) + 196
                    while s < _13671:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11715 + 100] = (32 * _11961) + (32 * _13671) + 192
                    _14935 = mem[_1110 + 160]
                    mem[_11715 + (32 * _11961) + (32 * _13671) + 196] = mem[_1110 + 160]
                    s = 0
                    t = _1110 + 192
                    u = _11715 + (32 * _11961) + (32 * _13671) + 228
                    while s < _14935:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11715 + (32 * _11961) + (32 * _13671) + (32 * _14935) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16119 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16199 = mem[_16119]
                    require mem[_16119] == mem[_16119]
                    mem[0] = address(_11672)
                    mem[32] = 3
                    if stor3[address(_11672)] and _16199 > -1 / stor3[address(_11672)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_11714)]:
                        revert with 'NH{q', 18
                    if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_11672)] * _16199 / stor3[address(_11714)]
                else:
                    if mem[_1110 + ceil32(return_data.size) + 320] and 618034 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 17
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    mem[_1110 + ceil32(return_data.size) + 320] = 618034 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6
                    if 2 >= mem[_1110 + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 50
                    if not mem[_1110 + ceil32(return_data.size) + 320]:
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256]
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _11890 = mem[_1110 + ceil32(return_data.size) + 256]
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12151 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12234 = mem[_1110 + 32]
                        _12235 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11890
                        mem[mem[64] + 36] = 128
                        _12376 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _12376:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12235 + 68] = (32 * _12376) + 160
                        _13669 = mem[_1110 + 96]
                        mem[_12235 + (32 * _12376) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _12235 + (32 * _12376) + 196
                        while s < _13669:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12235 + 100] = (32 * _12376) + (32 * _13669) + 192
                        _14933 = mem[_1110 + 160]
                        mem[_12235 + (32 * _12376) + (32 * _13669) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _12235 + (32 * _12376) + (32 * _13669) + 228
                        while s < _14933:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12235 + (32 * _12376) + (32 * _13669) + (32 * _14933) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16197 = mem[_16117]
                        require mem[_16117] == mem[_16117]
                        mem[0] = address(_12151)
                        mem[32] = 3
                        if stor3[address(_12151)] and _16197 > -1 / stor3[address(_12151)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12234)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12151)] * _16197 / stor3[address(_12234)]
                    else:
                        if mem[_1110 + ceil32(return_data.size) + 320] and 381966 > -1 / mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 17
                        if not mem[_1110 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 18
                        if 381966 * mem[_1110 + ceil32(return_data.size) + 320] / mem[_1110 + ceil32(return_data.size) + 320] != 381966:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        if mem[_1110 + ceil32(return_data.size) + 256] > -(381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) - 1:
                            revert with 'NH{q', 17
                        if mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6) < mem[_1110 + ceil32(return_data.size) + 256]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 352] = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        _12335 = mem[_1110 + ceil32(return_data.size) + 256] + (381966 * mem[_1110 + ceil32(return_data.size) + 320] / 10^6)
                        if mem[_1110] < 1:
                            revert with 'NH{q', 17
                        if mem[_1110] - 1 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12500 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
                        if 0 >= mem[_1110]:
                            revert with 'NH{q', 50
                        _12552 = mem[_1110 + 32]
                        _12553 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _12335
                        mem[mem[64] + 36] = 128
                        _12665 = mem[_1110]
                        mem[mem[64] + 132] = mem[_1110]
                        s = 0
                        t = _1110 + 32
                        u = mem[64] + 164
                        while s < _12665:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12553 + 68] = (32 * _12665) + 160
                        _13668 = mem[_1110 + 96]
                        mem[_12553 + (32 * _12665) + 164] = mem[_1110 + 96]
                        s = 0
                        t = _1110 + 128
                        u = _12553 + (32 * _12665) + 196
                        while s < _13668:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12553 + 100] = (32 * _12665) + (32 * _13668) + 192
                        _14932 = mem[_1110 + 160]
                        mem[_12553 + (32 * _12665) + (32 * _13668) + 196] = mem[_1110 + 160]
                        s = 0
                        t = _1110 + 192
                        u = _12553 + (32 * _12665) + (32 * _13668) + 228
                        while s < _14932:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12553 + (32 * _12665) + (32 * _13668) + (32 * _14932) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16116 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16196 = mem[_16116]
                        require mem[_16116] == mem[_16116]
                        mem[0] = address(_12500)
                        mem[32] = 3
                        if stor3[address(_12500)] and _16196 > -1 / stor3[address(_12500)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12552)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 50
                        mem[_1110 + ceil32(return_data.size) + 416] = stor3[address(_12500)] * _16196 / stor3[address(_12552)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        if 6 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        if mem[_1110 + ceil32(return_data.size) + 448] > -mem[_1110 + ceil32(return_data.size) + 352] - 1:
            revert with 'NH{q', 17
        if mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352] < mem[_1110 + ceil32(return_data.size) + 448]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        if 5 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        if mem[_1110 + ceil32(return_data.size) + 416] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
            revert with 'NH{q', 17
        if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 416]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_1110 + ceil32(return_data.size) + 416] + mem[_1110 + ceil32(return_data.size) + 384] <= mem[_1110 + ceil32(return_data.size) + 448] + mem[_1110 + ceil32(return_data.size) + 352]:
            if 1 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            _10934 = mem[_1110 + ceil32(return_data.size) + 288]
            if 3 >= mem[_1110 + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            _10982 = mem[_1110 + ceil32(return_data.size) + 352]
            if mem[_1110 + ceil32(return_data.size) + 352] > -mem[_1110 + ceil32(return_data.size) + 288] - 1:
                revert with 'NH{q', 17
            if mem[_1110 + ceil32(return_data.size) + 352] + mem[_1110 + ceil32(return_data.size) + 288] < mem[_1110 + ceil32(return_data.size) + 352]:
                revert with 0, 'SafeMath: addition overflow'
            _11222 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _10982 + _10934 / 2
            mem[mem[64] + 36] = 128
            _11246 = mem[_1110]
            mem[mem[64] + 132] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 164
            while idx < _11246:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11222 + 68] = (32 * _11246) + 160
            _13662 = mem[_1110 + 96]
            mem[_11222 + (32 * _11246) + 164] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _11222 + (32 * _11246) + 196
            while idx < _13662:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11222 + 100] = (32 * _11246) + (32 * _13662) + 192
            _14926 = mem[_1110 + 160]
            mem[_11222 + (32 * _11246) + (32 * _13662) + 196] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _11222 + (32 * _11246) + (32 * _13662) + 228
            while idx < _14926:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11222 + (32 * _11246) + (32 * _13662) + (32 * _14926) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16190 = mem[_16110]
            require mem[_16110] == mem[_16110]
            if 0 >= mem[_1110]:
                revert with 'NH{q', 50
            _16318 = mem[_1110 + 32]
            mem[0] = mem[_1110 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16318)] and _10982 + _10934 / 2 > -1 / stor3[address(_16318)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if mem[_1110] < 1:
                revert with 'NH{q', 17
            if mem[_1110] - 1 >= mem[_1110]:
                revert with 'NH{q', 50
            _16526 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
            mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16526)] and _16190 > -1 / stor3[address(_16526)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if stor3[address(_16526)] * _16190 / stor3[stor5] <= stor3[address(_16318)] * _10982 + _10934 / 2 / stor3[stor5]:
                _16590 = mem[64]
                mem[mem[64]] = _10982 + _10934 / 2
                mem[mem[64] + 32] = _16190
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 192
                _16638 = mem[_1110]
                mem[mem[64] + 192] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = mem[64] + 224
                while idx < _16638:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16590 + 128] = (32 * _16638) + 224
                _16903 = mem[_1110 + 96]
                mem[_16590 + (32 * _16638) + 224] = mem[_1110 + 96]
                idx = 0
                s = _1110 + 128
                t = _16590 + (32 * _16638) + 256
                while idx < _16903:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16590 + 160] = (32 * _16638) + (32 * _16903) + 256
                _17095 = mem[_1110 + 160]
                mem[_16590 + (32 * _16638) + (32 * _16903) + 256] = mem[_1110 + 160]
                idx = 0
                s = _1110 + 192
                t = _16590 + (32 * _16638) + (32 * _16903) + 288
                while idx < _17095:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16590 + (32 * _16638) + (32 * _16903) + (32 * _17095) + -mem[64] + 288
            if stor3[address(_16318)] * _10982 + _10934 / 2 / stor3[stor5] > stor3[address(_16526)] * _16190 / stor3[stor5]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor3[address(_16526)] * _16190 / stor3[stor5] < stor3[address(_16318)] * _10982 + _10934 / 2 / stor3[stor5]:
                revert with 'NH{q', 17
            _16622 = mem[64]
            mem[mem[64]] = _10982 + _10934 / 2
            mem[mem[64] + 32] = _16190
            mem[mem[64] + 64] = (stor3[address(_16526)] * _16190 / stor3[stor5]) - (stor3[address(_16318)] * _10982 + _10934 / 2 / stor3[stor5])
            mem[mem[64] + 96] = 192
            _16678 = mem[_1110]
            mem[mem[64] + 192] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 224
            while idx < _16678:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16622 + 128] = (32 * _16678) + 224
            _16902 = mem[_1110 + 96]
            mem[_16622 + (32 * _16678) + 224] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _16622 + (32 * _16678) + 256
            while idx < _16902:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16622 + 160] = (32 * _16678) + (32 * _16902) + 256
            _17094 = mem[_1110 + 160]
            mem[_16622 + (32 * _16678) + (32 * _16902) + 256] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _16622 + (32 * _16678) + (32 * _16902) + 288
            while idx < _17094:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16622 + (32 * _16678) + (32 * _16902) + (32 * _17094) + -mem[64] + 288
        if 4 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _10936 = mem[_1110 + ceil32(return_data.size) + 384]
        if 0 >= mem[_1110 + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _10983 = mem[_1110 + ceil32(return_data.size) + 256]
        if mem[_1110 + ceil32(return_data.size) + 256] > -mem[_1110 + ceil32(return_data.size) + 384] - 1:
            revert with 'NH{q', 17
        if mem[_1110 + ceil32(return_data.size) + 256] + mem[_1110 + ceil32(return_data.size) + 384] < mem[_1110 + ceil32(return_data.size) + 256]:
            revert with 0, 'SafeMath: addition overflow'
        _11223 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _10983 + _10936 / 2
        mem[mem[64] + 36] = 128
        _11247 = mem[_1110]
        mem[mem[64] + 132] = mem[_1110]
        idx = 0
        s = _1110 + 32
        t = mem[64] + 164
        while idx < _11247:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11223 + 68] = (32 * _11247) + 160
        _13663 = mem[_1110 + 96]
        mem[_11223 + (32 * _11247) + 164] = mem[_1110 + 96]
        idx = 0
        s = _1110 + 128
        t = _11223 + (32 * _11247) + 196
        while idx < _13663:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11223 + 100] = (32 * _11247) + (32 * _13663) + 192
        _14927 = mem[_1110 + 160]
        mem[_11223 + (32 * _11247) + (32 * _13663) + 196] = mem[_1110 + 160]
        idx = 0
        s = _1110 + 192
        t = _11223 + (32 * _11247) + (32 * _13663) + 228
        while idx < _14927:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _11223 + (32 * _11247) + (32 * _13663) + (32 * _14927) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16191 = mem[_16111]
        require mem[_16111] == mem[_16111]
        if 0 >= mem[_1110]:
            revert with 'NH{q', 50
        _16319 = mem[_1110 + 32]
        mem[0] = mem[_1110 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16319)] and _10983 + _10936 / 2 > -1 / stor3[address(_16319)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if mem[_1110] < 1:
            revert with 'NH{q', 17
        if mem[_1110] - 1 >= mem[_1110]:
            revert with 'NH{q', 50
        _16527 = mem[(32 * mem[_1110] - 1) + _1110 + 32]
        mem[0] = mem[(32 * mem[_1110] - 1) + _1110 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16527)] and _16191 > -1 / stor3[address(_16527)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if stor3[address(_16527)] * _16191 / stor3[stor5] <= stor3[address(_16319)] * _10983 + _10936 / 2 / stor3[stor5]:
            _16591 = mem[64]
            mem[mem[64]] = _10983 + _10936 / 2
            mem[mem[64] + 32] = _16191
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 192
            _16639 = mem[_1110]
            mem[mem[64] + 192] = mem[_1110]
            idx = 0
            s = _1110 + 32
            t = mem[64] + 224
            while idx < _16639:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16591 + 128] = (32 * _16639) + 224
            _16905 = mem[_1110 + 96]
            mem[_16591 + (32 * _16639) + 224] = mem[_1110 + 96]
            idx = 0
            s = _1110 + 128
            t = _16591 + (32 * _16639) + 256
            while idx < _16905:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16591 + 160] = (32 * _16639) + (32 * _16905) + 256
            _17097 = mem[_1110 + 160]
            mem[_16591 + (32 * _16639) + (32 * _16905) + 256] = mem[_1110 + 160]
            idx = 0
            s = _1110 + 192
            t = _16591 + (32 * _16639) + (32 * _16905) + 288
            while idx < _17097:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16591 + (32 * _16639) + (32 * _16905) + (32 * _17097) + -mem[64] + 288
        if stor3[address(_16319)] * _10983 + _10936 / 2 / stor3[stor5] > stor3[address(_16527)] * _16191 / stor3[stor5]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor3[address(_16527)] * _16191 / stor3[stor5] < stor3[address(_16319)] * _10983 + _10936 / 2 / stor3[stor5]:
            revert with 'NH{q', 17
        _16623 = mem[64]
        mem[mem[64]] = _10983 + _10936 / 2
        mem[mem[64] + 32] = _16191
        mem[mem[64] + 64] = (stor3[address(_16527)] * _16191 / stor3[stor5]) - (stor3[address(_16319)] * _10983 + _10936 / 2 / stor3[stor5])
        mem[mem[64] + 96] = 192
        _16680 = mem[_1110]
        mem[mem[64] + 192] = mem[_1110]
        idx = 0
        s = _1110 + 32
        t = mem[64] + 224
        while idx < _16680:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16623 + 128] = (32 * _16680) + 224
        _16904 = mem[_1110 + 96]
        mem[_16623 + (32 * _16680) + 224] = mem[_1110 + 96]
        idx = 0
        s = _1110 + 128
        t = _16623 + (32 * _16680) + 256
        while idx < _16904:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16623 + 160] = (32 * _16680) + (32 * _16904) + 256
        _17096 = mem[_1110 + 160]
        mem[_16623 + (32 * _16680) + (32 * _16904) + 256] = mem[_1110 + 160]
        idx = 0
        s = _1110 + 192
        t = _16623 + (32 * _16680) + (32 * _16904) + 288
        while idx < _17096:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _16623 + (32 * _16680) + (32 * _16904) + (32 * _17096) + -mem[64] + 288
    _1109 = mem[64]
    mem[mem[64] + 32 len 96] = call.data[calldata.size len 96]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = mem[64]
    mem[mem[64] + 128] = 2
    mem[mem[64] + 160 len 64] = call.data[calldata.size len 64]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131] = mem[64] + 128
    mem[mem[64] + 224] = 2
    mem[64] = mem[64] + 320
    mem[_1109 + 256 len 64] = call.data[calldata.size len 64]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 163] = _1109 + 224
    if 10 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    mem[_1109 + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 559 len 20]
    if 11 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if 1 >= mem[_1109]:
        revert with 'NH{q', 50
    mem[_1109 + 64] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 591 len 20]
    if 12 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    if 2 >= mem[_1109]:
        revert with 'NH{q', 50
    mem[_1109 + 96] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 623 len 20]
    if 6 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_1109 + 160] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 431 len 20]
    if 7 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_1109 + 256] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 463 len 20]
    if 8 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_1109 + 192] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 495 len 20]
    if 9 >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 195]:
        revert with 'NH{q', 50
    mem[_1109 + 288] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 527 len 20]
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    if not mem[_1109 + 44 len 20]:
        mem[_1109 + 320] = 0
        mem[_1109 + 352] = 0
        mem[_1109 + 384] = 0
        mem[_1109 + 416] = 192
        mem[_1109 + 512] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = _1109 + 544
        while idx < mem[_1109]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + 448] = (32 * mem[_1109]) + 224
        mem[_1109 + (32 * mem[_1109]) + 544] = 2
        idx = 0
        s = _1109 + 160
        t = _1109 + (32 * mem[_1109]) + 576
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + 480] = (32 * mem[_1109]) + 320
        mem[_1109 + (32 * mem[_1109]) + 640] = 2
        idx = 0
        s = _1109 + 256
        t = _1109 + (32 * mem[_1109]) + 672
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1109 + (32 * mem[_1109]) + -mem[64] + 736
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    mem[_1109 + 324] = this.address
    require ext_code.size(mem[_1109 + 44 len 20])
    staticcall mem[_1109 + 44 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_1109 + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _1109 + ceil32(return_data.size) + 320
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    mem[0] = mem[_1109 + 44 len 20]
    mem[32] = 4
    mem[_1109 + ceil32(return_data.size) + 320] = 7
    mem[64] = _1109 + ceil32(return_data.size) + 576
    mem[_1109 + ceil32(return_data.size) + 352 len 224] = call.data[calldata.size len 224]
    mem[_1109 + ceil32(return_data.size) + 352] = stor4[mem[0]]
    mem[_1109 + ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if stor4[mem[0]] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < stor4[mem[0]]:
        revert with 'NH{q', 17
    mem[_1109 + ceil32(return_data.size) + 416] = ext_call.return_data[0] - stor4[mem[0]]
    if not ext_call.return_data[0] - stor4[mem[0]]:
        if stor4[mem[0]] > -1:
            revert with 'NH{q', 17
        if stor4[mem[0]] < stor4[mem[0]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_1109 + ceil32(return_data.size) + 448] = stor4[mem[0]]
        if not ext_call.return_data[0] - stor4[mem[0]]:
            if stor4[mem[0]] > -1:
                revert with 'NH{q', 17
            if stor4[mem[0]] < stor4[mem[0]]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1109 + ceil32(return_data.size) + 480] = stor4[mem[0]]
            if mem[_1109] < 1:
                revert with 'NH{q', 17
            if mem[_1109] - 1 >= mem[_1109]:
                revert with 'NH{q', 50
            _1349 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
            if 0 >= mem[_1109]:
                revert with 'NH{q', 50
            _1353 = mem[_1109 + 32]
            mem[_1109 + ceil32(return_data.size) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_1109 + ceil32(return_data.size) + 580] = stor4[mem[0]]
            mem[_1109 + ceil32(return_data.size) + 612] = 128
            mem[_1109 + ceil32(return_data.size) + 708] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = _1109 + ceil32(return_data.size) + 740
            while idx < mem[_1109]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1109 + ceil32(return_data.size) + 644] = (32 * mem[_1109]) + 160
            mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 740] = 2
            idx = 0
            s = _1109 + 160
            t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1109 + ceil32(return_data.size) + 676] = (32 * mem[_1109]) + 256
            mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 836] = 2
            idx = 0
            s = _1109 + 256
            t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args stor4[mem[0]], Array(len=mem[_1109 + ceil32(return_data.size) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
            mem[_1109 + ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1109 + (2 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(_1349)
            mem[32] = 3
            if stor3[address(_1349)] and ext_call.return_data[0] > -1 / stor3[address(_1349)]:
                revert with 'NH{q', 17
            if not stor3[address(_1353)]:
                revert with 'NH{q', 18
            mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_1349)] * ext_call.return_data[0] / stor3[address(_1353)]
            if mem[_1109] < 1:
                revert with 'NH{q', 17
            if mem[_1109] - 1 >= mem[_1109]:
                revert with 'NH{q', 50
            _3364 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
            if 0 >= mem[_1109]:
                revert with 'NH{q', 50
            _3380 = mem[_1109 + 32]
            mem[_1109 + (2 * ceil32(return_data.size)) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[_1109 + (2 * ceil32(return_data.size)) + 580] = mem[_1109 + ceil32(return_data.size) + 480]
            mem[_1109 + (2 * ceil32(return_data.size)) + 612] = 128
            mem[_1109 + (2 * ceil32(return_data.size)) + 708] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = _1109 + (2 * ceil32(return_data.size)) + 740
            while idx < mem[_1109]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1109 + (2 * ceil32(return_data.size)) + 644] = (32 * mem[_1109]) + 160
            mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 740] = 2
            idx = 0
            s = _1109 + 160
            t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1109 + (2 * ceil32(return_data.size)) + 676] = (32 * mem[_1109]) + 256
            mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 836] = 2
            idx = 0
            s = _1109 + 256
            t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.0xf594ef26 with:
                 gas gas_remaining wei
                args mem[_1109 + (2 * ceil32(return_data.size)) + 580], Array(len=mem[_1109 + (2 * ceil32(return_data.size)) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
            mem[_1109 + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1109 + (4 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(_3364)
            mem[32] = 3
            if stor3[address(_3364)] and ext_call.return_data[0] > -1 / stor3[address(_3364)]:
                revert with 'NH{q', 17
            if not stor3[address(_3380)]:
                revert with 'NH{q', 18
            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_3364)] * ext_call.return_data[0] / stor3[address(_3380)]
            idx = 0
            while idx < 20:
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
                    revert with 'NH{q', 17
                if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
                    revert with 'NH{q', 17
                if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 352] = mem[_1109 + ceil32(return_data.size) + 448]
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 480]
                    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 512] = mem[_1109 + ceil32(return_data.size) + 544]
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 416] = 0
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _11484 = mem[_1109 + ceil32(return_data.size) + 352]
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _11666 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _11706 = mem[_1109 + 32]
                        _11707 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11484
                        mem[mem[64] + 36] = 128
                        _11955 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _11955:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11707 + 68] = (32 * _11955) + 160
                        _13657 = mem[_1109 + 128]
                        mem[_11707 + (32 * _11955) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _11707 + (32 * _11955) + 196
                        while s < _13657:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11707 + 100] = (32 * _11955) + (32 * _13657) + 192
                        _14921 = mem[_1109 + 224]
                        mem[_11707 + (32 * _11955) + (32 * _13657) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _11707 + (32 * _11955) + (32 * _13657) + 228
                        while s < _14921:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11707 + (32 * _11955) + (32 * _13657) + (32 * _14921) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16105 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16185 = mem[_16105]
                        require mem[_16105] == mem[_16105]
                        mem[0] = address(_11666)
                        mem[32] = 3
                        if stor3[address(_11666)] and _16185 > -1 / stor3[address(_11666)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_11706)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_11666)] * _16185 / stor3[address(_11706)]
                    else:
                        if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 17
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                                revert with 'NH{q', 17
                            if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            _11882 = mem[_1109 + ceil32(return_data.size) + 352]
                            if mem[_1109] < 1:
                                revert with 'NH{q', 17
                            if mem[_1109] - 1 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12132 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                            if 0 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12222 = mem[_1109 + 32]
                            _12223 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11882
                            mem[mem[64] + 36] = 128
                            _12370 = mem[_1109]
                            mem[mem[64] + 132] = mem[_1109]
                            s = 0
                            t = _1109 + 32
                            u = mem[64] + 164
                            while s < _12370:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12223 + 68] = (32 * _12370) + 160
                            _13655 = mem[_1109 + 128]
                            mem[_12223 + (32 * _12370) + 164] = mem[_1109 + 128]
                            s = 0
                            t = _1109 + 160
                            u = _12223 + (32 * _12370) + 196
                            while s < _13655:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12223 + 100] = (32 * _12370) + (32 * _13655) + 192
                            _14919 = mem[_1109 + 224]
                            mem[_12223 + (32 * _12370) + (32 * _13655) + 196] = mem[_1109 + 224]
                            s = 0
                            t = _1109 + 256
                            u = _12223 + (32 * _12370) + (32 * _13655) + 228
                            while s < _14919:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12223 + (32 * _12370) + (32 * _13655) + (32 * _14919) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16183 = mem[_16103]
                            require mem[_16103] == mem[_16103]
                            mem[0] = address(_12132)
                            mem[32] = 3
                            if stor3[address(_12132)] and _16183 > -1 / stor3[address(_12132)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12222)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12132)] * _16183 / stor3[address(_12222)]
                        else:
                            if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                                revert with 'NH{q', 17
                            if not mem[_1109 + ceil32(return_data.size) + 416]:
                                revert with 'NH{q', 18
                            if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            if mem[_1109 + ceil32(return_data.size) + 352] > -(618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            _12332 = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                            if mem[_1109] < 1:
                                revert with 'NH{q', 17
                            if mem[_1109] - 1 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12486 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                            if 0 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12546 = mem[_1109 + 32]
                            _12547 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _12332
                            mem[mem[64] + 36] = 128
                            _12660 = mem[_1109]
                            mem[mem[64] + 132] = mem[_1109]
                            s = 0
                            t = _1109 + 32
                            u = mem[64] + 164
                            while s < _12660:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12547 + 68] = (32 * _12660) + 160
                            _13654 = mem[_1109 + 128]
                            mem[_12547 + (32 * _12660) + 164] = mem[_1109 + 128]
                            s = 0
                            t = _1109 + 160
                            u = _12547 + (32 * _12660) + 196
                            while s < _13654:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12547 + 100] = (32 * _12660) + (32 * _13654) + 192
                            _14918 = mem[_1109 + 224]
                            mem[_12547 + (32 * _12660) + (32 * _13654) + 196] = mem[_1109 + 224]
                            s = 0
                            t = _1109 + 256
                            u = _12547 + (32 * _12660) + (32 * _13654) + 228
                            while s < _14918:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12547 + (32 * _12660) + (32 * _13654) + (32 * _14918) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16182 = mem[_16102]
                            require mem[_16102] == mem[_16102]
                            mem[0] = address(_12486)
                            mem[32] = 3
                            if stor3[address(_12486)] and _16182 > -1 / stor3[address(_12486)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12546)]:
                                revert with 'NH{q', 18
                            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12486)] * _16182 / stor3[address(_12546)]
                else:
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 384] = mem[_1109 + ceil32(return_data.size) + 480]
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 448]
                    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 544] = mem[_1109 + ceil32(return_data.size) + 512]
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 416] = 0
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _11485 = mem[_1109 + ceil32(return_data.size) + 352]
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _11668 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _11708 = mem[_1109 + 32]
                        _11709 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11485
                        mem[mem[64] + 36] = 128
                        _11957 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _11957:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11709 + 68] = (32 * _11957) + 160
                        _13661 = mem[_1109 + 128]
                        mem[_11709 + (32 * _11957) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _11709 + (32 * _11957) + 196
                        while s < _13661:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11709 + 100] = (32 * _11957) + (32 * _13661) + 192
                        _14925 = mem[_1109 + 224]
                        mem[_11709 + (32 * _11957) + (32 * _13661) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _11709 + (32 * _11957) + (32 * _13661) + 228
                        while s < _14925:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11709 + (32 * _11957) + (32 * _13661) + (32 * _14925) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16109 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16189 = mem[_16109]
                        require mem[_16109] == mem[_16109]
                        mem[0] = address(_11668)
                        mem[32] = 3
                        if stor3[address(_11668)] and _16189 > -1 / stor3[address(_11668)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_11708)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_11668)] * _16189 / stor3[address(_11708)]
                    else:
                        if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 17
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                        if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                                revert with 'NH{q', 17
                            if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            _11884 = mem[_1109 + ceil32(return_data.size) + 352]
                            if mem[_1109] < 1:
                                revert with 'NH{q', 17
                            if mem[_1109] - 1 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12137 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                            if 0 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12226 = mem[_1109 + 32]
                            _12227 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11884
                            mem[mem[64] + 36] = 128
                            _12372 = mem[_1109]
                            mem[mem[64] + 132] = mem[_1109]
                            s = 0
                            t = _1109 + 32
                            u = mem[64] + 164
                            while s < _12372:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12227 + 68] = (32 * _12372) + 160
                            _13659 = mem[_1109 + 128]
                            mem[_12227 + (32 * _12372) + 164] = mem[_1109 + 128]
                            s = 0
                            t = _1109 + 160
                            u = _12227 + (32 * _12372) + 196
                            while s < _13659:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12227 + 100] = (32 * _12372) + (32 * _13659) + 192
                            _14923 = mem[_1109 + 224]
                            mem[_12227 + (32 * _12372) + (32 * _13659) + 196] = mem[_1109 + 224]
                            s = 0
                            t = _1109 + 256
                            u = _12227 + (32 * _12372) + (32 * _13659) + 228
                            while s < _14923:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12227 + (32 * _12372) + (32 * _13659) + (32 * _14923) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16107 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16187 = mem[_16107]
                            require mem[_16107] == mem[_16107]
                            mem[0] = address(_12137)
                            mem[32] = 3
                            if stor3[address(_12137)] and _16187 > -1 / stor3[address(_12137)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12226)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12137)] * _16187 / stor3[address(_12226)]
                        else:
                            if mem[_1109 + ceil32(return_data.size) + 416] and 381966 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                                revert with 'NH{q', 17
                            if not mem[_1109 + ceil32(return_data.size) + 416]:
                                revert with 'NH{q', 18
                            if 381966 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 381966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            if mem[_1109 + ceil32(return_data.size) + 352] > -(381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                                revert with 'NH{q', 17
                            if mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            _12333 = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                            if mem[_1109] < 1:
                                revert with 'NH{q', 17
                            if mem[_1109] - 1 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12490 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                            if 0 >= mem[_1109]:
                                revert with 'NH{q', 50
                            _12548 = mem[_1109 + 32]
                            _12549 = mem[64]
                            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _12333
                            mem[mem[64] + 36] = 128
                            _12661 = mem[_1109]
                            mem[mem[64] + 132] = mem[_1109]
                            s = 0
                            t = _1109 + 32
                            u = mem[64] + 164
                            while s < _12661:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12549 + 68] = (32 * _12661) + 160
                            _13658 = mem[_1109 + 128]
                            mem[_12549 + (32 * _12661) + 164] = mem[_1109 + 128]
                            s = 0
                            t = _1109 + 160
                            u = _12549 + (32 * _12661) + 196
                            while s < _13658:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_12549 + 100] = (32 * _12661) + (32 * _13658) + 192
                            _14922 = mem[_1109 + 224]
                            mem[_12549 + (32 * _12661) + (32 * _13658) + 196] = mem[_1109 + 224]
                            s = 0
                            t = _1109 + 256
                            u = _12549 + (32 * _12661) + (32 * _13658) + 228
                            while s < _14922:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor2)
                            call stor2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _12549 + (32 * _12661) + (32 * _13658) + (32 * _14922) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16106 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _16186 = mem[_16106]
                            require mem[_16106] == mem[_16106]
                            mem[0] = address(_12490)
                            mem[32] = 3
                            if stor3[address(_12490)] and _16186 > -1 / stor3[address(_12490)]:
                                revert with 'NH{q', 17
                            if not stor3[address(_12548)]:
                                revert with 'NH{q', 18
                            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                                revert with 'NH{q', 50
                            mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12490)] * _16186 / stor3[address(_12548)]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
                if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                _10926 = mem[_1109 + ceil32(return_data.size) + 384]
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                _10978 = mem[_1109 + ceil32(return_data.size) + 448]
                if mem[_1109 + ceil32(return_data.size) + 448] > -mem[_1109 + ceil32(return_data.size) + 384] - 1:
                    revert with 'NH{q', 17
                if mem[_1109 + ceil32(return_data.size) + 448] + mem[_1109 + ceil32(return_data.size) + 384] < mem[_1109 + ceil32(return_data.size) + 448]:
                    revert with 0, 'SafeMath: addition overflow'
                _11218 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _10978 + _10926 / 2
                mem[mem[64] + 36] = 128
                _11244 = mem[_1109]
                mem[mem[64] + 132] = mem[_1109]
                idx = 0
                s = _1109 + 32
                t = mem[64] + 164
                while idx < _11244:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11218 + 68] = (32 * _11244) + 160
                _13652 = mem[_1109 + 128]
                mem[_11218 + (32 * _11244) + 164] = mem[_1109 + 128]
                idx = 0
                s = _1109 + 160
                t = _11218 + (32 * _11244) + 196
                while idx < _13652:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_11218 + 100] = (32 * _11244) + (32 * _13652) + 192
                _14916 = mem[_1109 + 224]
                mem[_11218 + (32 * _11244) + (32 * _13652) + 196] = mem[_1109 + 224]
                idx = 0
                s = _1109 + 256
                t = _11218 + (32 * _11244) + (32 * _13652) + 228
                while idx < _14916:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11218 + (32 * _11244) + (32 * _13652) + (32 * _14916) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16180 = mem[_16100]
                require mem[_16100] == mem[_16100]
                if 0 >= mem[_1109]:
                    revert with 'NH{q', 50
                _16300 = mem[_1109 + 32]
                mem[0] = mem[_1109 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16300)] and _10978 + _10926 / 2 > -1 / stor3[address(_16300)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if mem[_1109] < 1:
                    revert with 'NH{q', 17
                if mem[_1109] - 1 >= mem[_1109]:
                    revert with 'NH{q', 50
                _16524 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
                mem[32] = 3
                if stor3[address(_16524)] and _16180 > -1 / stor3[address(_16524)]:
                    revert with 'NH{q', 17
                if not stor3[stor5]:
                    revert with 'NH{q', 18
                if stor3[address(_16524)] * _16180 / stor3[stor5] <= stor3[address(_16300)] * _10978 + _10926 / 2 / stor3[stor5]:
                    _16588 = mem[64]
                    mem[mem[64]] = _10978 + _10926 / 2
                    mem[mem[64] + 32] = _16180
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 192
                    _16636 = mem[_1109]
                    mem[mem[64] + 192] = mem[_1109]
                    idx = 0
                    s = _1109 + 32
                    t = mem[64] + 224
                    while idx < _16636:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16588 + 128] = (32 * _16636) + 224
                    _16899 = mem[_1109 + 128]
                    mem[_16588 + (32 * _16636) + 224] = mem[_1109 + 128]
                    idx = 0
                    s = _1109 + 160
                    t = _16588 + (32 * _16636) + 256
                    while idx < _16899:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_16588 + 160] = (32 * _16636) + (32 * _16899) + 256
                    _17091 = mem[_1109 + 224]
                    mem[_16588 + (32 * _16636) + (32 * _16899) + 256] = mem[_1109 + 224]
                    idx = 0
                    s = _1109 + 256
                    t = _16588 + (32 * _16636) + (32 * _16899) + 288
                    while idx < _17091:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _16588 + (32 * _16636) + (32 * _16899) + (32 * _17091) + -mem[64] + 288
                if stor3[address(_16300)] * _10978 + _10926 / 2 / stor3[stor5] > stor3[address(_16524)] * _16180 / stor3[stor5]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor3[address(_16524)] * _16180 / stor3[stor5] < stor3[address(_16300)] * _10978 + _10926 / 2 / stor3[stor5]:
                    revert with 'NH{q', 17
                _16620 = mem[64]
                mem[mem[64]] = _10978 + _10926 / 2
                mem[mem[64] + 32] = _16180
                mem[mem[64] + 64] = (stor3[address(_16524)] * _16180 / stor3[stor5]) - (stor3[address(_16300)] * _10978 + _10926 / 2 / stor3[stor5])
                mem[mem[64] + 96] = 192
                _16674 = mem[_1109]
                mem[mem[64] + 192] = mem[_1109]
                idx = 0
                s = _1109 + 32
                t = mem[64] + 224
                while idx < _16674:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16620 + 128] = (32 * _16674) + 224
                _16898 = mem[_1109 + 128]
                mem[_16620 + (32 * _16674) + 224] = mem[_1109 + 128]
                idx = 0
                s = _1109 + 160
                t = _16620 + (32 * _16674) + 256
                while idx < _16898:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16620 + 160] = (32 * _16674) + (32 * _16898) + 256
                _17090 = mem[_1109 + 224]
                mem[_16620 + (32 * _16674) + (32 * _16898) + 256] = mem[_1109 + 224]
                idx = 0
                s = _1109 + 256
                t = _16620 + (32 * _16674) + (32 * _16898) + 288
                while idx < _17090:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16620 + (32 * _16674) + (32 * _16898) + (32 * _17090) + -mem[64] + 288
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            _10928 = mem[_1109 + ceil32(return_data.size) + 480]
            if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            _10979 = mem[_1109 + ceil32(return_data.size) + 352]
            if mem[_1109 + ceil32(return_data.size) + 352] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 352] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 352]:
                revert with 0, 'SafeMath: addition overflow'
            _11219 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _10979 + _10928 / 2
            mem[mem[64] + 36] = 128
            _11245 = mem[_1109]
            mem[mem[64] + 132] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 164
            while idx < _11245:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11219 + 68] = (32 * _11245) + 160
            _13653 = mem[_1109 + 128]
            mem[_11219 + (32 * _11245) + 164] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _11219 + (32 * _11245) + 196
            while idx < _13653:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11219 + 100] = (32 * _11245) + (32 * _13653) + 192
            _14917 = mem[_1109 + 224]
            mem[_11219 + (32 * _11245) + (32 * _13653) + 196] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _11219 + (32 * _11245) + (32 * _13653) + 228
            while idx < _14917:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11219 + (32 * _11245) + (32 * _13653) + (32 * _14917) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16181 = mem[_16101]
            require mem[_16101] == mem[_16101]
            if 0 >= mem[_1109]:
                revert with 'NH{q', 50
            _16301 = mem[_1109 + 32]
            mem[0] = mem[_1109 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16301)] and _10979 + _10928 / 2 > -1 / stor3[address(_16301)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if mem[_1109] < 1:
                revert with 'NH{q', 17
            if mem[_1109] - 1 >= mem[_1109]:
                revert with 'NH{q', 50
            _16525 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
            mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16525)] and _16181 > -1 / stor3[address(_16525)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if stor3[address(_16525)] * _16181 / stor3[stor5] <= stor3[address(_16301)] * _10979 + _10928 / 2 / stor3[stor5]:
                _16589 = mem[64]
                mem[mem[64]] = _10979 + _10928 / 2
                mem[mem[64] + 32] = _16181
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 192
                _16637 = mem[_1109]
                mem[mem[64] + 192] = mem[_1109]
                idx = 0
                s = _1109 + 32
                t = mem[64] + 224
                while idx < _16637:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16589 + 128] = (32 * _16637) + 224
                _16901 = mem[_1109 + 128]
                mem[_16589 + (32 * _16637) + 224] = mem[_1109 + 128]
                idx = 0
                s = _1109 + 160
                t = _16589 + (32 * _16637) + 256
                while idx < _16901:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16589 + 160] = (32 * _16637) + (32 * _16901) + 256
                _17093 = mem[_1109 + 224]
                mem[_16589 + (32 * _16637) + (32 * _16901) + 256] = mem[_1109 + 224]
                idx = 0
                s = _1109 + 256
                t = _16589 + (32 * _16637) + (32 * _16901) + 288
                while idx < _17093:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16589 + (32 * _16637) + (32 * _16901) + (32 * _17093) + -mem[64] + 288
            if stor3[address(_16301)] * _10979 + _10928 / 2 / stor3[stor5] > stor3[address(_16525)] * _16181 / stor3[stor5]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor3[address(_16525)] * _16181 / stor3[stor5] < stor3[address(_16301)] * _10979 + _10928 / 2 / stor3[stor5]:
                revert with 'NH{q', 17
            _16621 = mem[64]
            mem[mem[64]] = _10979 + _10928 / 2
            mem[mem[64] + 32] = _16181
            mem[mem[64] + 64] = (stor3[address(_16525)] * _16181 / stor3[stor5]) - (stor3[address(_16301)] * _10979 + _10928 / 2 / stor3[stor5])
            mem[mem[64] + 96] = 192
            _16676 = mem[_1109]
            mem[mem[64] + 192] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 224
            while idx < _16676:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16621 + 128] = (32 * _16676) + 224
            _16900 = mem[_1109 + 128]
            mem[_16621 + (32 * _16676) + 224] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _16621 + (32 * _16676) + 256
            while idx < _16900:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16621 + 160] = (32 * _16676) + (32 * _16900) + 256
            _17092 = mem[_1109 + 224]
            mem[_16621 + (32 * _16676) + (32 * _16900) + 256] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _16621 + (32 * _16676) + (32 * _16900) + 288
            while idx < _17092:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16621 + (32 * _16676) + (32 * _16900) + (32 * _17092) + -mem[64] + 288
        if ext_call.return_data[0] - stor4[mem[0]] and 618034 > -1 / ext_call.return_data[0] - stor4[mem[0]]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] - stor4[mem[0]]:
            revert with 'NH{q', 18
        if (618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / ext_call.return_data[0] - stor4[mem[0]] != 618034:
            revert with 0, 'SafeMath: multiplication overflow'
        if stor4[mem[0]] > -((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) - 1:
            revert with 'NH{q', 17
        if stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) < stor4[mem[0]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_1109 + ceil32(return_data.size) + 480] = stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6)
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _1399 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _1405 = mem[_1109 + 32]
        mem[_1109 + ceil32(return_data.size) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_1109 + ceil32(return_data.size) + 580] = stor4[mem[0]]
        mem[_1109 + ceil32(return_data.size) + 612] = 128
        mem[_1109 + ceil32(return_data.size) + 708] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = _1109 + ceil32(return_data.size) + 740
        while idx < mem[_1109]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + ceil32(return_data.size) + 644] = (32 * mem[_1109]) + 160
        mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 740] = 2
        idx = 0
        s = _1109 + 160
        t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + ceil32(return_data.size) + 676] = (32 * mem[_1109]) + 256
        mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 836] = 2
        idx = 0
        s = _1109 + 256
        t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args stor4[mem[0]], Array(len=mem[_1109 + ceil32(return_data.size) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
        mem[_1109 + ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1109 + (2 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[0] = address(_1399)
        mem[32] = 3
        if stor3[address(_1399)] and ext_call.return_data[0] > -1 / stor3[address(_1399)]:
            revert with 'NH{q', 17
        if not stor3[address(_1405)]:
            revert with 'NH{q', 18
        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_1399)] * ext_call.return_data[0] / stor3[address(_1405)]
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _3362 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _3378 = mem[_1109 + 32]
        mem[_1109 + (2 * ceil32(return_data.size)) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_1109 + (2 * ceil32(return_data.size)) + 580] = mem[_1109 + ceil32(return_data.size) + 480]
        mem[_1109 + (2 * ceil32(return_data.size)) + 612] = 128
        mem[_1109 + (2 * ceil32(return_data.size)) + 708] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = _1109 + (2 * ceil32(return_data.size)) + 740
        while idx < mem[_1109]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + (2 * ceil32(return_data.size)) + 644] = (32 * mem[_1109]) + 160
        mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 740] = 2
        idx = 0
        s = _1109 + 160
        t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + (2 * ceil32(return_data.size)) + 676] = (32 * mem[_1109]) + 256
        mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 836] = 2
        idx = 0
        s = _1109 + 256
        t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args mem[_1109 + (2 * ceil32(return_data.size)) + 580], Array(len=mem[_1109 + (2 * ceil32(return_data.size)) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
        mem[_1109 + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1109 + (4 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[0] = address(_3362)
        mem[32] = 3
        if stor3[address(_3362)] and ext_call.return_data[0] > -1 / stor3[address(_3362)]:
            revert with 'NH{q', 17
        if not stor3[address(_3378)]:
            revert with 'NH{q', 18
        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_3362)] * ext_call.return_data[0] / stor3[address(_3378)]
        idx = 0
        while idx < 20:
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 352] = mem[_1109 + ceil32(return_data.size) + 448]
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 480]
                if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 512] = mem[_1109 + ceil32(return_data.size) + 544]
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 0
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _11482 = mem[_1109 + ceil32(return_data.size) + 352]
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11662 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11700 = mem[_1109 + 32]
                    _11701 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11482
                    mem[mem[64] + 36] = 128
                    _11951 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _11951:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11701 + 68] = (32 * _11951) + 160
                    _13647 = mem[_1109 + 128]
                    mem[_11701 + (32 * _11951) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _11701 + (32 * _11951) + 196
                    while s < _13647:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11701 + 100] = (32 * _11951) + (32 * _13647) + 192
                    _14911 = mem[_1109 + 224]
                    mem[_11701 + (32 * _11951) + (32 * _13647) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _11701 + (32 * _11951) + (32 * _13647) + 228
                    while s < _14911:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11701 + (32 * _11951) + (32 * _13647) + (32 * _14911) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16095 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16175 = mem[_16095]
                    require mem[_16095] == mem[_16095]
                    mem[0] = address(_11662)
                    mem[32] = 3
                    if stor3[address(_11662)] and _16175 > -1 / stor3[address(_11662)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_11700)]:
                        revert with 'NH{q', 18
                    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_11662)] * _16175 / stor3[address(_11700)]
                else:
                    if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _11876 = mem[_1109 + ceil32(return_data.size) + 352]
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12118 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12214 = mem[_1109 + 32]
                        _12215 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11876
                        mem[mem[64] + 36] = 128
                        _12366 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12366:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12215 + 68] = (32 * _12366) + 160
                        _13645 = mem[_1109 + 128]
                        mem[_12215 + (32 * _12366) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12215 + (32 * _12366) + 196
                        while s < _13645:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12215 + 100] = (32 * _12366) + (32 * _13645) + 192
                        _14909 = mem[_1109 + 224]
                        mem[_12215 + (32 * _12366) + (32 * _13645) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12215 + (32 * _12366) + (32 * _13645) + 228
                        while s < _14909:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12215 + (32 * _12366) + (32 * _13645) + (32 * _14909) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16093 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16173 = mem[_16093]
                        require mem[_16093] == mem[_16093]
                        mem[0] = address(_12118)
                        mem[32] = 3
                        if stor3[address(_12118)] and _16173 > -1 / stor3[address(_12118)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12214)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12118)] * _16173 / stor3[address(_12214)]
                    else:
                        if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 17
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -(618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _12330 = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12476 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12542 = mem[_1109 + 32]
                        _12543 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _12330
                        mem[mem[64] + 36] = 128
                        _12656 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12656:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12543 + 68] = (32 * _12656) + 160
                        _13644 = mem[_1109 + 128]
                        mem[_12543 + (32 * _12656) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12543 + (32 * _12656) + 196
                        while s < _13644:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12543 + 100] = (32 * _12656) + (32 * _13644) + 192
                        _14908 = mem[_1109 + 224]
                        mem[_12543 + (32 * _12656) + (32 * _13644) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12543 + (32 * _12656) + (32 * _13644) + 228
                        while s < _14908:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12543 + (32 * _12656) + (32 * _13644) + (32 * _14908) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16172 = mem[_16092]
                        require mem[_16092] == mem[_16092]
                        mem[0] = address(_12476)
                        mem[32] = 3
                        if stor3[address(_12476)] and _16172 > -1 / stor3[address(_12476)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12542)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12476)] * _16172 / stor3[address(_12542)]
            else:
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 384] = mem[_1109 + ceil32(return_data.size) + 480]
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 448]
                if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 544] = mem[_1109 + ceil32(return_data.size) + 512]
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 0
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _11483 = mem[_1109 + ceil32(return_data.size) + 352]
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11664 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11702 = mem[_1109 + 32]
                    _11703 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11483
                    mem[mem[64] + 36] = 128
                    _11953 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _11953:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11703 + 68] = (32 * _11953) + 160
                    _13651 = mem[_1109 + 128]
                    mem[_11703 + (32 * _11953) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _11703 + (32 * _11953) + 196
                    while s < _13651:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11703 + 100] = (32 * _11953) + (32 * _13651) + 192
                    _14915 = mem[_1109 + 224]
                    mem[_11703 + (32 * _11953) + (32 * _13651) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _11703 + (32 * _11953) + (32 * _13651) + 228
                    while s < _14915:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11703 + (32 * _11953) + (32 * _13651) + (32 * _14915) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16099 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16179 = mem[_16099]
                    require mem[_16099] == mem[_16099]
                    mem[0] = address(_11664)
                    mem[32] = 3
                    if stor3[address(_11664)] and _16179 > -1 / stor3[address(_11664)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_11702)]:
                        revert with 'NH{q', 18
                    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_11664)] * _16179 / stor3[address(_11702)]
                else:
                    if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _11878 = mem[_1109 + ceil32(return_data.size) + 352]
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12123 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12218 = mem[_1109 + 32]
                        _12219 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11878
                        mem[mem[64] + 36] = 128
                        _12368 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12368:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12219 + 68] = (32 * _12368) + 160
                        _13649 = mem[_1109 + 128]
                        mem[_12219 + (32 * _12368) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12219 + (32 * _12368) + 196
                        while s < _13649:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12219 + 100] = (32 * _12368) + (32 * _13649) + 192
                        _14913 = mem[_1109 + 224]
                        mem[_12219 + (32 * _12368) + (32 * _13649) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12219 + (32 * _12368) + (32 * _13649) + 228
                        while s < _14913:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12219 + (32 * _12368) + (32 * _13649) + (32 * _14913) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16097 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16177 = mem[_16097]
                        require mem[_16097] == mem[_16097]
                        mem[0] = address(_12123)
                        mem[32] = 3
                        if stor3[address(_12123)] and _16177 > -1 / stor3[address(_12123)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12218)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12123)] * _16177 / stor3[address(_12218)]
                    else:
                        if mem[_1109 + ceil32(return_data.size) + 416] and 381966 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 17
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 18
                        if 381966 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 381966:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -(381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _12331 = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12480 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12544 = mem[_1109 + 32]
                        _12545 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _12331
                        mem[mem[64] + 36] = 128
                        _12657 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12657:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12545 + 68] = (32 * _12657) + 160
                        _13648 = mem[_1109 + 128]
                        mem[_12545 + (32 * _12657) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12545 + (32 * _12657) + 196
                        while s < _13648:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12545 + 100] = (32 * _12657) + (32 * _13648) + 192
                        _14912 = mem[_1109 + 224]
                        mem[_12545 + (32 * _12657) + (32 * _13648) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12545 + (32 * _12657) + (32 * _13648) + 228
                        while s < _14912:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12545 + (32 * _12657) + (32 * _13648) + (32 * _14912) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16096 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16176 = mem[_16096]
                        require mem[_16096] == mem[_16096]
                        mem[0] = address(_12480)
                        mem[32] = 3
                        if stor3[address(_12480)] and _16176 > -1 / stor3[address(_12480)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12544)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12480)] * _16176 / stor3[address(_12544)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
            if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            _10918 = mem[_1109 + ceil32(return_data.size) + 384]
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            _10974 = mem[_1109 + ceil32(return_data.size) + 448]
            if mem[_1109 + ceil32(return_data.size) + 448] > -mem[_1109 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 448] + mem[_1109 + ceil32(return_data.size) + 384] < mem[_1109 + ceil32(return_data.size) + 448]:
                revert with 0, 'SafeMath: addition overflow'
            _11214 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _10974 + _10918 / 2
            mem[mem[64] + 36] = 128
            _11242 = mem[_1109]
            mem[mem[64] + 132] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 164
            while idx < _11242:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11214 + 68] = (32 * _11242) + 160
            _13642 = mem[_1109 + 128]
            mem[_11214 + (32 * _11242) + 164] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _11214 + (32 * _11242) + 196
            while idx < _13642:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11214 + 100] = (32 * _11242) + (32 * _13642) + 192
            _14906 = mem[_1109 + 224]
            mem[_11214 + (32 * _11242) + (32 * _13642) + 196] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _11214 + (32 * _11242) + (32 * _13642) + 228
            while idx < _14906:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11214 + (32 * _11242) + (32 * _13642) + (32 * _14906) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16090 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16170 = mem[_16090]
            require mem[_16090] == mem[_16090]
            if 0 >= mem[_1109]:
                revert with 'NH{q', 50
            _16282 = mem[_1109 + 32]
            mem[0] = mem[_1109 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16282)] and _10974 + _10918 / 2 > -1 / stor3[address(_16282)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if mem[_1109] < 1:
                revert with 'NH{q', 17
            if mem[_1109] - 1 >= mem[_1109]:
                revert with 'NH{q', 50
            _16522 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
            mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16522)] and _16170 > -1 / stor3[address(_16522)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if stor3[address(_16522)] * _16170 / stor3[stor5] <= stor3[address(_16282)] * _10974 + _10918 / 2 / stor3[stor5]:
                _16586 = mem[64]
                mem[mem[64]] = _10974 + _10918 / 2
                mem[mem[64] + 32] = _16170
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 192
                _16634 = mem[_1109]
                mem[mem[64] + 192] = mem[_1109]
                idx = 0
                s = _1109 + 32
                t = mem[64] + 224
                while idx < _16634:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16586 + 128] = (32 * _16634) + 224
                _16895 = mem[_1109 + 128]
                mem[_16586 + (32 * _16634) + 224] = mem[_1109 + 128]
                idx = 0
                s = _1109 + 160
                t = _16586 + (32 * _16634) + 256
                while idx < _16895:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16586 + 160] = (32 * _16634) + (32 * _16895) + 256
                _17087 = mem[_1109 + 224]
                mem[_16586 + (32 * _16634) + (32 * _16895) + 256] = mem[_1109 + 224]
                idx = 0
                s = _1109 + 256
                t = _16586 + (32 * _16634) + (32 * _16895) + 288
                while idx < _17087:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16586 + (32 * _16634) + (32 * _16895) + (32 * _17087) + -mem[64] + 288
            if stor3[address(_16282)] * _10974 + _10918 / 2 / stor3[stor5] > stor3[address(_16522)] * _16170 / stor3[stor5]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor3[address(_16522)] * _16170 / stor3[stor5] < stor3[address(_16282)] * _10974 + _10918 / 2 / stor3[stor5]:
                revert with 'NH{q', 17
            _16618 = mem[64]
            mem[mem[64]] = _10974 + _10918 / 2
            mem[mem[64] + 32] = _16170
            mem[mem[64] + 64] = (stor3[address(_16522)] * _16170 / stor3[stor5]) - (stor3[address(_16282)] * _10974 + _10918 / 2 / stor3[stor5])
            mem[mem[64] + 96] = 192
            _16670 = mem[_1109]
            mem[mem[64] + 192] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 224
            while idx < _16670:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16618 + 128] = (32 * _16670) + 224
            _16894 = mem[_1109 + 128]
            mem[_16618 + (32 * _16670) + 224] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _16618 + (32 * _16670) + 256
            while idx < _16894:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16618 + 160] = (32 * _16670) + (32 * _16894) + 256
            _17086 = mem[_1109 + 224]
            mem[_16618 + (32 * _16670) + (32 * _16894) + 256] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _16618 + (32 * _16670) + (32 * _16894) + 288
            while idx < _17086:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16618 + (32 * _16670) + (32 * _16894) + (32 * _17086) + -mem[64] + 288
        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        _10920 = mem[_1109 + ceil32(return_data.size) + 480]
        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        _10975 = mem[_1109 + ceil32(return_data.size) + 352]
        if mem[_1109 + ceil32(return_data.size) + 352] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 352] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 352]:
            revert with 0, 'SafeMath: addition overflow'
        _11215 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _10975 + _10920 / 2
        mem[mem[64] + 36] = 128
        _11243 = mem[_1109]
        mem[mem[64] + 132] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 164
        while idx < _11243:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11215 + 68] = (32 * _11243) + 160
        _13643 = mem[_1109 + 128]
        mem[_11215 + (32 * _11243) + 164] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _11215 + (32 * _11243) + 196
        while idx < _13643:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11215 + 100] = (32 * _11243) + (32 * _13643) + 192
        _14907 = mem[_1109 + 224]
        mem[_11215 + (32 * _11243) + (32 * _13643) + 196] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _11215 + (32 * _11243) + (32 * _13643) + 228
        while idx < _14907:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _11215 + (32 * _11243) + (32 * _13643) + (32 * _14907) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16091 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16171 = mem[_16091]
        require mem[_16091] == mem[_16091]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _16283 = mem[_1109 + 32]
        mem[0] = mem[_1109 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16283)] and _10975 + _10920 / 2 > -1 / stor3[address(_16283)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _16523 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16523)] and _16171 > -1 / stor3[address(_16523)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if stor3[address(_16523)] * _16171 / stor3[stor5] <= stor3[address(_16283)] * _10975 + _10920 / 2 / stor3[stor5]:
            _16587 = mem[64]
            mem[mem[64]] = _10975 + _10920 / 2
            mem[mem[64] + 32] = _16171
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 192
            _16635 = mem[_1109]
            mem[mem[64] + 192] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 224
            while idx < _16635:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16587 + 128] = (32 * _16635) + 224
            _16897 = mem[_1109 + 128]
            mem[_16587 + (32 * _16635) + 224] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _16587 + (32 * _16635) + 256
            while idx < _16897:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16587 + 160] = (32 * _16635) + (32 * _16897) + 256
            _17089 = mem[_1109 + 224]
            mem[_16587 + (32 * _16635) + (32 * _16897) + 256] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _16587 + (32 * _16635) + (32 * _16897) + 288
            while idx < _17089:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16587 + (32 * _16635) + (32 * _16897) + (32 * _17089) + -mem[64] + 288
        if stor3[address(_16283)] * _10975 + _10920 / 2 / stor3[stor5] > stor3[address(_16523)] * _16171 / stor3[stor5]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor3[address(_16523)] * _16171 / stor3[stor5] < stor3[address(_16283)] * _10975 + _10920 / 2 / stor3[stor5]:
            revert with 'NH{q', 17
        _16619 = mem[64]
        mem[mem[64]] = _10975 + _10920 / 2
        mem[mem[64] + 32] = _16171
        mem[mem[64] + 64] = (stor3[address(_16523)] * _16171 / stor3[stor5]) - (stor3[address(_16283)] * _10975 + _10920 / 2 / stor3[stor5])
        mem[mem[64] + 96] = 192
        _16672 = mem[_1109]
        mem[mem[64] + 192] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 224
        while idx < _16672:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16619 + 128] = (32 * _16672) + 224
        _16896 = mem[_1109 + 128]
        mem[_16619 + (32 * _16672) + 224] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _16619 + (32 * _16672) + 256
        while idx < _16896:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16619 + 160] = (32 * _16672) + (32 * _16896) + 256
        _17088 = mem[_1109 + 224]
        mem[_16619 + (32 * _16672) + (32 * _16896) + 256] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _16619 + (32 * _16672) + (32 * _16896) + 288
        while idx < _17088:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _16619 + (32 * _16672) + (32 * _16896) + (32 * _17088) + -mem[64] + 288
    if ext_call.return_data[0] - stor4[mem[0]] and 381966 > -1 / ext_call.return_data[0] - stor4[mem[0]]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] - stor4[mem[0]]:
        revert with 'NH{q', 18
    if (381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / ext_call.return_data[0] - stor4[mem[0]] != 381966:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor4[mem[0]] > -((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6) - 1:
        revert with 'NH{q', 17
    if stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6) < stor4[mem[0]]:
        revert with 0, 'SafeMath: addition overflow'
    mem[_1109 + ceil32(return_data.size) + 448] = stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6)
    if not ext_call.return_data[0] - stor4[mem[0]]:
        if stor4[mem[0]] > -1:
            revert with 'NH{q', 17
        if stor4[mem[0]] < stor4[mem[0]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_1109 + ceil32(return_data.size) + 480] = stor4[mem[0]]
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _1397 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _1403 = mem[_1109 + 32]
        mem[_1109 + ceil32(return_data.size) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_1109 + ceil32(return_data.size) + 580] = stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6)
        mem[_1109 + ceil32(return_data.size) + 612] = 128
        mem[_1109 + ceil32(return_data.size) + 708] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = _1109 + ceil32(return_data.size) + 740
        while idx < mem[_1109]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + ceil32(return_data.size) + 644] = (32 * mem[_1109]) + 160
        mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 740] = 2
        idx = 0
        s = _1109 + 160
        t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + ceil32(return_data.size) + 676] = (32 * mem[_1109]) + 256
        mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 836] = 2
        idx = 0
        s = _1109 + 256
        t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6), Array(len=mem[_1109 + ceil32(return_data.size) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
        mem[_1109 + ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1109 + (2 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[0] = address(_1397)
        mem[32] = 3
        if stor3[address(_1397)] and ext_call.return_data[0] > -1 / stor3[address(_1397)]:
            revert with 'NH{q', 17
        if not stor3[address(_1403)]:
            revert with 'NH{q', 18
        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_1397)] * ext_call.return_data[0] / stor3[address(_1403)]
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _3360 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _3376 = mem[_1109 + 32]
        mem[_1109 + (2 * ceil32(return_data.size)) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[_1109 + (2 * ceil32(return_data.size)) + 580] = mem[_1109 + ceil32(return_data.size) + 480]
        mem[_1109 + (2 * ceil32(return_data.size)) + 612] = 128
        mem[_1109 + (2 * ceil32(return_data.size)) + 708] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = _1109 + (2 * ceil32(return_data.size)) + 740
        while idx < mem[_1109]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + (2 * ceil32(return_data.size)) + 644] = (32 * mem[_1109]) + 160
        mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 740] = 2
        idx = 0
        s = _1109 + 160
        t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1109 + (2 * ceil32(return_data.size)) + 676] = (32 * mem[_1109]) + 256
        mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 836] = 2
        idx = 0
        s = _1109 + 256
        t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0xf594ef26 with:
             gas gas_remaining wei
            args mem[_1109 + (2 * ceil32(return_data.size)) + 580], Array(len=mem[_1109 + (2 * ceil32(return_data.size)) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
        mem[_1109 + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1109 + (4 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[0] = address(_3360)
        mem[32] = 3
        if stor3[address(_3360)] and ext_call.return_data[0] > -1 / stor3[address(_3360)]:
            revert with 'NH{q', 17
        if not stor3[address(_3376)]:
            revert with 'NH{q', 18
        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_3360)] * ext_call.return_data[0] / stor3[address(_3376)]
        idx = 0
        while idx < 20:
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
                revert with 0, 'SafeMath: addition overflow'
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 352] = mem[_1109 + ceil32(return_data.size) + 448]
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 480]
                if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 512] = mem[_1109 + ceil32(return_data.size) + 544]
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 0
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _11480 = mem[_1109 + ceil32(return_data.size) + 352]
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11658 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11694 = mem[_1109 + 32]
                    _11695 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11480
                    mem[mem[64] + 36] = 128
                    _11947 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _11947:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11695 + 68] = (32 * _11947) + 160
                    _13637 = mem[_1109 + 128]
                    mem[_11695 + (32 * _11947) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _11695 + (32 * _11947) + 196
                    while s < _13637:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11695 + 100] = (32 * _11947) + (32 * _13637) + 192
                    _14901 = mem[_1109 + 224]
                    mem[_11695 + (32 * _11947) + (32 * _13637) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _11695 + (32 * _11947) + (32 * _13637) + 228
                    while s < _14901:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11695 + (32 * _11947) + (32 * _13637) + (32 * _14901) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16085 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16165 = mem[_16085]
                    require mem[_16085] == mem[_16085]
                    mem[0] = address(_11658)
                    mem[32] = 3
                    if stor3[address(_11658)] and _16165 > -1 / stor3[address(_11658)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_11694)]:
                        revert with 'NH{q', 18
                    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_11658)] * _16165 / stor3[address(_11694)]
                else:
                    if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _11870 = mem[_1109 + ceil32(return_data.size) + 352]
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12104 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12206 = mem[_1109 + 32]
                        _12207 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11870
                        mem[mem[64] + 36] = 128
                        _12362 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12362:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12207 + 68] = (32 * _12362) + 160
                        _13635 = mem[_1109 + 128]
                        mem[_12207 + (32 * _12362) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12207 + (32 * _12362) + 196
                        while s < _13635:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12207 + 100] = (32 * _12362) + (32 * _13635) + 192
                        _14899 = mem[_1109 + 224]
                        mem[_12207 + (32 * _12362) + (32 * _13635) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12207 + (32 * _12362) + (32 * _13635) + 228
                        while s < _14899:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12207 + (32 * _12362) + (32 * _13635) + (32 * _14899) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16163 = mem[_16083]
                        require mem[_16083] == mem[_16083]
                        mem[0] = address(_12104)
                        mem[32] = 3
                        if stor3[address(_12104)] and _16163 > -1 / stor3[address(_12104)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12206)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12104)] * _16163 / stor3[address(_12206)]
                    else:
                        if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 17
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 18
                        if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -(618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _12328 = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12466 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12538 = mem[_1109 + 32]
                        _12539 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _12328
                        mem[mem[64] + 36] = 128
                        _12652 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12652:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12539 + 68] = (32 * _12652) + 160
                        _13634 = mem[_1109 + 128]
                        mem[_12539 + (32 * _12652) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12539 + (32 * _12652) + 196
                        while s < _13634:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12539 + 100] = (32 * _12652) + (32 * _13634) + 192
                        _14898 = mem[_1109 + 224]
                        mem[_12539 + (32 * _12652) + (32 * _13634) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12539 + (32 * _12652) + (32 * _13634) + 228
                        while s < _14898:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12539 + (32 * _12652) + (32 * _13634) + (32 * _14898) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16162 = mem[_16082]
                        require mem[_16082] == mem[_16082]
                        mem[0] = address(_12466)
                        mem[32] = 3
                        if stor3[address(_12466)] and _16162 > -1 / stor3[address(_12466)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12538)]:
                            revert with 'NH{q', 18
                        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12466)] * _16162 / stor3[address(_12538)]
            else:
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 384] = mem[_1109 + ceil32(return_data.size) + 480]
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 448]
                if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 544] = mem[_1109 + ceil32(return_data.size) + 512]
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 0
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _11481 = mem[_1109 + ceil32(return_data.size) + 352]
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11660 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _11696 = mem[_1109 + 32]
                    _11697 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11481
                    mem[mem[64] + 36] = 128
                    _11949 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _11949:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11697 + 68] = (32 * _11949) + 160
                    _13641 = mem[_1109 + 128]
                    mem[_11697 + (32 * _11949) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _11697 + (32 * _11949) + 196
                    while s < _13641:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_11697 + 100] = (32 * _11949) + (32 * _13641) + 192
                    _14905 = mem[_1109 + 224]
                    mem[_11697 + (32 * _11949) + (32 * _13641) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _11697 + (32 * _11949) + (32 * _13641) + 228
                    while s < _14905:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11697 + (32 * _11949) + (32 * _13641) + (32 * _14905) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16089 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16169 = mem[_16089]
                    require mem[_16089] == mem[_16089]
                    mem[0] = address(_11660)
                    mem[32] = 3
                    if stor3[address(_11660)] and _16169 > -1 / stor3[address(_11660)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_11696)]:
                        revert with 'NH{q', 18
                    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_11660)] * _16169 / stor3[address(_11696)]
                else:
                    if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                    if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _11872 = mem[_1109 + ceil32(return_data.size) + 352]
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12109 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12210 = mem[_1109 + 32]
                        _12211 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11872
                        mem[mem[64] + 36] = 128
                        _12364 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12364:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12211 + 68] = (32 * _12364) + 160
                        _13639 = mem[_1109 + 128]
                        mem[_12211 + (32 * _12364) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12211 + (32 * _12364) + 196
                        while s < _13639:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12211 + 100] = (32 * _12364) + (32 * _13639) + 192
                        _14903 = mem[_1109 + 224]
                        mem[_12211 + (32 * _12364) + (32 * _13639) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12211 + (32 * _12364) + (32 * _13639) + 228
                        while s < _14903:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12211 + (32 * _12364) + (32 * _13639) + (32 * _14903) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16087 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16167 = mem[_16087]
                        require mem[_16087] == mem[_16087]
                        mem[0] = address(_12109)
                        mem[32] = 3
                        if stor3[address(_12109)] and _16167 > -1 / stor3[address(_12109)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12210)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12109)] * _16167 / stor3[address(_12210)]
                    else:
                        if mem[_1109 + ceil32(return_data.size) + 416] and 381966 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 17
                        if not mem[_1109 + ceil32(return_data.size) + 416]:
                            revert with 'NH{q', 18
                        if 381966 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 381966:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        if mem[_1109 + ceil32(return_data.size) + 352] > -(381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                            revert with 'NH{q', 17
                        if mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        _12329 = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                        if mem[_1109] < 1:
                            revert with 'NH{q', 17
                        if mem[_1109] - 1 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12470 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                        if 0 >= mem[_1109]:
                            revert with 'NH{q', 50
                        _12540 = mem[_1109 + 32]
                        _12541 = mem[64]
                        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _12329
                        mem[mem[64] + 36] = 128
                        _12653 = mem[_1109]
                        mem[mem[64] + 132] = mem[_1109]
                        s = 0
                        t = _1109 + 32
                        u = mem[64] + 164
                        while s < _12653:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12541 + 68] = (32 * _12653) + 160
                        _13638 = mem[_1109 + 128]
                        mem[_12541 + (32 * _12653) + 164] = mem[_1109 + 128]
                        s = 0
                        t = _1109 + 160
                        u = _12541 + (32 * _12653) + 196
                        while s < _13638:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_12541 + 100] = (32 * _12653) + (32 * _13638) + 192
                        _14902 = mem[_1109 + 224]
                        mem[_12541 + (32 * _12653) + (32 * _13638) + 196] = mem[_1109 + 224]
                        s = 0
                        t = _1109 + 256
                        u = _12541 + (32 * _12653) + (32 * _13638) + 228
                        while s < _14902:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12541 + (32 * _12653) + (32 * _13638) + (32 * _14902) + -mem[64] + 224]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16086 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16166 = mem[_16086]
                        require mem[_16086] == mem[_16086]
                        mem[0] = address(_12470)
                        mem[32] = 3
                        if stor3[address(_12470)] and _16166 > -1 / stor3[address(_12470)]:
                            revert with 'NH{q', 17
                        if not stor3[address(_12540)]:
                            revert with 'NH{q', 18
                        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                            revert with 'NH{q', 50
                        mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12470)] * _16166 / stor3[address(_12540)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
            if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            _10910 = mem[_1109 + ceil32(return_data.size) + 384]
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            _10970 = mem[_1109 + ceil32(return_data.size) + 448]
            if mem[_1109 + ceil32(return_data.size) + 448] > -mem[_1109 + ceil32(return_data.size) + 384] - 1:
                revert with 'NH{q', 17
            if mem[_1109 + ceil32(return_data.size) + 448] + mem[_1109 + ceil32(return_data.size) + 384] < mem[_1109 + ceil32(return_data.size) + 448]:
                revert with 0, 'SafeMath: addition overflow'
            _11210 = mem[64]
            mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _10970 + _10910 / 2
            mem[mem[64] + 36] = 128
            _11240 = mem[_1109]
            mem[mem[64] + 132] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 164
            while idx < _11240:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11210 + 68] = (32 * _11240) + 160
            _13632 = mem[_1109 + 128]
            mem[_11210 + (32 * _11240) + 164] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _11210 + (32 * _11240) + 196
            while idx < _13632:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_11210 + 100] = (32 * _11240) + (32 * _13632) + 192
            _14896 = mem[_1109 + 224]
            mem[_11210 + (32 * _11240) + (32 * _13632) + 196] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _11210 + (32 * _11240) + (32 * _13632) + 228
            while idx < _14896:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11210 + (32 * _11240) + (32 * _13632) + (32 * _14896) + -mem[64] + 224]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16080 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16160 = mem[_16080]
            require mem[_16080] == mem[_16080]
            if 0 >= mem[_1109]:
                revert with 'NH{q', 50
            _16264 = mem[_1109 + 32]
            mem[0] = mem[_1109 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16264)] and _10970 + _10910 / 2 > -1 / stor3[address(_16264)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if mem[_1109] < 1:
                revert with 'NH{q', 17
            if mem[_1109] - 1 >= mem[_1109]:
                revert with 'NH{q', 50
            _16520 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
            mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
            mem[32] = 3
            if stor3[address(_16520)] and _16160 > -1 / stor3[address(_16520)]:
                revert with 'NH{q', 17
            if not stor3[stor5]:
                revert with 'NH{q', 18
            if stor3[address(_16520)] * _16160 / stor3[stor5] <= stor3[address(_16264)] * _10970 + _10910 / 2 / stor3[stor5]:
                _16584 = mem[64]
                mem[mem[64]] = _10970 + _10910 / 2
                mem[mem[64] + 32] = _16160
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 192
                _16632 = mem[_1109]
                mem[mem[64] + 192] = mem[_1109]
                idx = 0
                s = _1109 + 32
                t = mem[64] + 224
                while idx < _16632:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16584 + 128] = (32 * _16632) + 224
                _16891 = mem[_1109 + 128]
                mem[_16584 + (32 * _16632) + 224] = mem[_1109 + 128]
                idx = 0
                s = _1109 + 160
                t = _16584 + (32 * _16632) + 256
                while idx < _16891:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_16584 + 160] = (32 * _16632) + (32 * _16891) + 256
                _17083 = mem[_1109 + 224]
                mem[_16584 + (32 * _16632) + (32 * _16891) + 256] = mem[_1109 + 224]
                idx = 0
                s = _1109 + 256
                t = _16584 + (32 * _16632) + (32 * _16891) + 288
                while idx < _17083:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _16584 + (32 * _16632) + (32 * _16891) + (32 * _17083) + -mem[64] + 288
            if stor3[address(_16264)] * _10970 + _10910 / 2 / stor3[stor5] > stor3[address(_16520)] * _16160 / stor3[stor5]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor3[address(_16520)] * _16160 / stor3[stor5] < stor3[address(_16264)] * _10970 + _10910 / 2 / stor3[stor5]:
                revert with 'NH{q', 17
            _16616 = mem[64]
            mem[mem[64]] = _10970 + _10910 / 2
            mem[mem[64] + 32] = _16160
            mem[mem[64] + 64] = (stor3[address(_16520)] * _16160 / stor3[stor5]) - (stor3[address(_16264)] * _10970 + _10910 / 2 / stor3[stor5])
            mem[mem[64] + 96] = 192
            _16666 = mem[_1109]
            mem[mem[64] + 192] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 224
            while idx < _16666:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16616 + 128] = (32 * _16666) + 224
            _16890 = mem[_1109 + 128]
            mem[_16616 + (32 * _16666) + 224] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _16616 + (32 * _16666) + 256
            while idx < _16890:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16616 + 160] = (32 * _16666) + (32 * _16890) + 256
            _17082 = mem[_1109 + 224]
            mem[_16616 + (32 * _16666) + (32 * _16890) + 256] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _16616 + (32 * _16666) + (32 * _16890) + 288
            while idx < _17082:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16616 + (32 * _16666) + (32 * _16890) + (32 * _17082) + -mem[64] + 288
        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        _10912 = mem[_1109 + ceil32(return_data.size) + 480]
        if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        _10971 = mem[_1109 + ceil32(return_data.size) + 352]
        if mem[_1109 + ceil32(return_data.size) + 352] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 352] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 352]:
            revert with 0, 'SafeMath: addition overflow'
        _11211 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _10971 + _10912 / 2
        mem[mem[64] + 36] = 128
        _11241 = mem[_1109]
        mem[mem[64] + 132] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 164
        while idx < _11241:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11211 + 68] = (32 * _11241) + 160
        _13633 = mem[_1109 + 128]
        mem[_11211 + (32 * _11241) + 164] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _11211 + (32 * _11241) + 196
        while idx < _13633:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11211 + 100] = (32 * _11241) + (32 * _13633) + 192
        _14897 = mem[_1109 + 224]
        mem[_11211 + (32 * _11241) + (32 * _13633) + 196] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _11211 + (32 * _11241) + (32 * _13633) + 228
        while idx < _14897:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _11211 + (32 * _11241) + (32 * _13633) + (32 * _14897) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16081 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16161 = mem[_16081]
        require mem[_16081] == mem[_16081]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _16265 = mem[_1109 + 32]
        mem[0] = mem[_1109 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16265)] and _10971 + _10912 / 2 > -1 / stor3[address(_16265)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _16521 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16521)] and _16161 > -1 / stor3[address(_16521)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if stor3[address(_16521)] * _16161 / stor3[stor5] <= stor3[address(_16265)] * _10971 + _10912 / 2 / stor3[stor5]:
            _16585 = mem[64]
            mem[mem[64]] = _10971 + _10912 / 2
            mem[mem[64] + 32] = _16161
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 192
            _16633 = mem[_1109]
            mem[mem[64] + 192] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 224
            while idx < _16633:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16585 + 128] = (32 * _16633) + 224
            _16893 = mem[_1109 + 128]
            mem[_16585 + (32 * _16633) + 224] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _16585 + (32 * _16633) + 256
            while idx < _16893:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16585 + 160] = (32 * _16633) + (32 * _16893) + 256
            _17085 = mem[_1109 + 224]
            mem[_16585 + (32 * _16633) + (32 * _16893) + 256] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _16585 + (32 * _16633) + (32 * _16893) + 288
            while idx < _17085:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16585 + (32 * _16633) + (32 * _16893) + (32 * _17085) + -mem[64] + 288
        if stor3[address(_16265)] * _10971 + _10912 / 2 / stor3[stor5] > stor3[address(_16521)] * _16161 / stor3[stor5]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor3[address(_16521)] * _16161 / stor3[stor5] < stor3[address(_16265)] * _10971 + _10912 / 2 / stor3[stor5]:
            revert with 'NH{q', 17
        _16617 = mem[64]
        mem[mem[64]] = _10971 + _10912 / 2
        mem[mem[64] + 32] = _16161
        mem[mem[64] + 64] = (stor3[address(_16521)] * _16161 / stor3[stor5]) - (stor3[address(_16265)] * _10971 + _10912 / 2 / stor3[stor5])
        mem[mem[64] + 96] = 192
        _16668 = mem[_1109]
        mem[mem[64] + 192] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 224
        while idx < _16668:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16617 + 128] = (32 * _16668) + 224
        _16892 = mem[_1109 + 128]
        mem[_16617 + (32 * _16668) + 224] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _16617 + (32 * _16668) + 256
        while idx < _16892:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16617 + 160] = (32 * _16668) + (32 * _16892) + 256
        _17084 = mem[_1109 + 224]
        mem[_16617 + (32 * _16668) + (32 * _16892) + 256] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _16617 + (32 * _16668) + (32 * _16892) + 288
        while idx < _17084:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _16617 + (32 * _16668) + (32 * _16892) + (32 * _17084) + -mem[64] + 288
    if ext_call.return_data[0] - stor4[mem[0]] and 618034 > -1 / ext_call.return_data[0] - stor4[mem[0]]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] - stor4[mem[0]]:
        revert with 'NH{q', 18
    if (618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / ext_call.return_data[0] - stor4[mem[0]] != 618034:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor4[mem[0]] > -((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) - 1:
        revert with 'NH{q', 17
    if stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6) < stor4[mem[0]]:
        revert with 0, 'SafeMath: addition overflow'
    mem[_1109 + ceil32(return_data.size) + 480] = stor4[mem[0]] + ((618034 * ext_call.return_data[0]) - (618034 * stor4[mem[0]]) / 10^6)
    if mem[_1109] < 1:
        revert with 'NH{q', 17
    if mem[_1109] - 1 >= mem[_1109]:
        revert with 'NH{q', 50
    _1455 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    _1461 = mem[_1109 + 32]
    mem[_1109 + ceil32(return_data.size) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[_1109 + ceil32(return_data.size) + 580] = stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6)
    mem[_1109 + ceil32(return_data.size) + 612] = 128
    mem[_1109 + ceil32(return_data.size) + 708] = mem[_1109]
    idx = 0
    s = _1109 + 32
    t = _1109 + ceil32(return_data.size) + 740
    while idx < mem[_1109]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1109 + ceil32(return_data.size) + 644] = (32 * mem[_1109]) + 160
    mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 740] = 2
    idx = 0
    s = _1109 + 160
    t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1109 + ceil32(return_data.size) + 676] = (32 * mem[_1109]) + 256
    mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 836] = 2
    idx = 0
    s = _1109 + 256
    t = _1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xf594ef26 with:
         gas gas_remaining wei
        args stor4[mem[0]] + ((381966 * ext_call.return_data[0]) - (381966 * stor4[mem[0]]) / 10^6), Array(len=mem[_1109 + ceil32(return_data.size) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + ceil32(return_data.size) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
    mem[_1109 + ceil32(return_data.size) + 576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _1109 + (2 * ceil32(return_data.size)) + 576
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[0] = address(_1455)
    mem[32] = 3
    if stor3[address(_1455)] and ext_call.return_data[0] > -1 / stor3[address(_1455)]:
        revert with 'NH{q', 17
    if not stor3[address(_1461)]:
        revert with 'NH{q', 18
    mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_1455)] * ext_call.return_data[0] / stor3[address(_1461)]
    if mem[_1109] < 1:
        revert with 'NH{q', 17
    if mem[_1109] - 1 >= mem[_1109]:
        revert with 'NH{q', 50
    _3358 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    _3374 = mem[_1109 + 32]
    mem[_1109 + (2 * ceil32(return_data.size)) + 576] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[_1109 + (2 * ceil32(return_data.size)) + 580] = mem[_1109 + ceil32(return_data.size) + 480]
    mem[_1109 + (2 * ceil32(return_data.size)) + 612] = 128
    mem[_1109 + (2 * ceil32(return_data.size)) + 708] = mem[_1109]
    idx = 0
    s = _1109 + 32
    t = _1109 + (2 * ceil32(return_data.size)) + 740
    while idx < mem[_1109]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1109 + (2 * ceil32(return_data.size)) + 644] = (32 * mem[_1109]) + 160
    mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 740] = 2
    idx = 0
    s = _1109 + 160
    t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1109 + (2 * ceil32(return_data.size)) + 676] = (32 * mem[_1109]) + 256
    mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 836] = 2
    idx = 0
    s = _1109 + 256
    t = _1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xf594ef26 with:
         gas gas_remaining wei
        args mem[_1109 + (2 * ceil32(return_data.size)) + 580], Array(len=mem[_1109 + (2 * ceil32(return_data.size)) + 708 len (32 * mem[_1109]) + 32], data=2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 772 len 64], 2, mem[_1109 + (2 * ceil32(return_data.size)) + (32 * mem[_1109]) + 868 len 64]), (32 * mem[_1109]) + 160, (32 * mem[_1109]) + 256
    mem[_1109 + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _1109 + (4 * ceil32(return_data.size)) + 576
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[0] = address(_3358)
    mem[32] = 3
    if stor3[address(_3358)] and ext_call.return_data[0] > -1 / stor3[address(_3358)]:
        revert with 'NH{q', 17
    if not stor3[address(_3374)]:
        revert with 'NH{q', 18
    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_3358)] * ext_call.return_data[0] / stor3[address(_3374)]
    idx = 0
    while idx < 20:
        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
            revert with 0, 'SafeMath: addition overflow'
        if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
            revert with 0, 'SafeMath: addition overflow'
        if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 352] = mem[_1109 + ceil32(return_data.size) + 448]
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 480]
            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 512] = mem[_1109 + ceil32(return_data.size) + 544]
            if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if not mem[_1109 + ceil32(return_data.size) + 416]:
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 416] = 0
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                    revert with 'NH{q', 17
                if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                    revert with 0, 'SafeMath: addition overflow'
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                _11478 = mem[_1109 + ceil32(return_data.size) + 352]
                if mem[_1109] < 1:
                    revert with 'NH{q', 17
                if mem[_1109] - 1 >= mem[_1109]:
                    revert with 'NH{q', 50
                _11654 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                if 0 >= mem[_1109]:
                    revert with 'NH{q', 50
                _11688 = mem[_1109 + 32]
                _11689 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _11478
                mem[mem[64] + 36] = 128
                _11943 = mem[_1109]
                mem[mem[64] + 132] = mem[_1109]
                s = 0
                t = _1109 + 32
                u = mem[64] + 164
                while s < _11943:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_11689 + 68] = (32 * _11943) + 160
                _13627 = mem[_1109 + 128]
                mem[_11689 + (32 * _11943) + 164] = mem[_1109 + 128]
                s = 0
                t = _1109 + 160
                u = _11689 + (32 * _11943) + 196
                while s < _13627:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_11689 + 100] = (32 * _11943) + (32 * _13627) + 192
                _14891 = mem[_1109 + 224]
                mem[_11689 + (32 * _11943) + (32 * _13627) + 196] = mem[_1109 + 224]
                s = 0
                t = _1109 + 256
                u = _11689 + (32 * _11943) + (32 * _13627) + 228
                while s < _14891:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11689 + (32 * _11943) + (32 * _13627) + (32 * _14891) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16075 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16155 = mem[_16075]
                require mem[_16075] == mem[_16075]
                mem[0] = address(_11654)
                mem[32] = 3
                if stor3[address(_11654)] and _16155 > -1 / stor3[address(_11654)]:
                    revert with 'NH{q', 17
                if not stor3[address(_11688)]:
                    revert with 'NH{q', 18
                if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_11654)] * _16155 / stor3[address(_11688)]
            else:
                if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 18
                if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352]
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _11864 = mem[_1109 + ceil32(return_data.size) + 352]
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12090 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12198 = mem[_1109 + 32]
                    _12199 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11864
                    mem[mem[64] + 36] = 128
                    _12358 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _12358:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12199 + 68] = (32 * _12358) + 160
                    _13625 = mem[_1109 + 128]
                    mem[_12199 + (32 * _12358) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _12199 + (32 * _12358) + 196
                    while s < _13625:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12199 + 100] = (32 * _12358) + (32 * _13625) + 192
                    _14889 = mem[_1109 + 224]
                    mem[_12199 + (32 * _12358) + (32 * _13625) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _12199 + (32 * _12358) + (32 * _13625) + 228
                    while s < _14889:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12199 + (32 * _12358) + (32 * _13625) + (32 * _14889) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16073 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16153 = mem[_16073]
                    require mem[_16073] == mem[_16073]
                    mem[0] = address(_12090)
                    mem[32] = 3
                    if stor3[address(_12090)] and _16153 > -1 / stor3[address(_12090)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_12198)]:
                        revert with 'NH{q', 18
                    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12090)] * _16153 / stor3[address(_12198)]
                else:
                    if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 18
                    if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -(618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _12326 = mem[_1109 + ceil32(return_data.size) + 352] + (618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12456 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12534 = mem[_1109 + 32]
                    _12535 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _12326
                    mem[mem[64] + 36] = 128
                    _12648 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _12648:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12535 + 68] = (32 * _12648) + 160
                    _13624 = mem[_1109 + 128]
                    mem[_12535 + (32 * _12648) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _12535 + (32 * _12648) + 196
                    while s < _13624:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12535 + 100] = (32 * _12648) + (32 * _13624) + 192
                    _14888 = mem[_1109 + 224]
                    mem[_12535 + (32 * _12648) + (32 * _13624) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _12535 + (32 * _12648) + (32 * _13624) + 228
                    while s < _14888:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12535 + (32 * _12648) + (32 * _13624) + (32 * _14888) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16072 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16152 = mem[_16072]
                    require mem[_16072] == mem[_16072]
                    mem[0] = address(_12456)
                    mem[32] = 3
                    if stor3[address(_12456)] and _16152 > -1 / stor3[address(_12456)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_12534)]:
                        revert with 'NH{q', 18
                    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 544] = stor3[address(_12456)] * _16152 / stor3[address(_12534)]
        else:
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 384] = mem[_1109 + ceil32(return_data.size) + 480]
            if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 480] = mem[_1109 + ceil32(return_data.size) + 448]
            if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            mem[_1109 + ceil32(return_data.size) + 544] = mem[_1109 + ceil32(return_data.size) + 512]
            if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                revert with 'NH{q', 50
            if not mem[_1109 + ceil32(return_data.size) + 416]:
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 416] = 0
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                    revert with 'NH{q', 17
                if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                    revert with 0, 'SafeMath: addition overflow'
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                _11479 = mem[_1109 + ceil32(return_data.size) + 352]
                if mem[_1109] < 1:
                    revert with 'NH{q', 17
                if mem[_1109] - 1 >= mem[_1109]:
                    revert with 'NH{q', 50
                _11656 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                if 0 >= mem[_1109]:
                    revert with 'NH{q', 50
                _11690 = mem[_1109 + 32]
                _11691 = mem[64]
                mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _11479
                mem[mem[64] + 36] = 128
                _11945 = mem[_1109]
                mem[mem[64] + 132] = mem[_1109]
                s = 0
                t = _1109 + 32
                u = mem[64] + 164
                while s < _11945:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_11691 + 68] = (32 * _11945) + 160
                _13631 = mem[_1109 + 128]
                mem[_11691 + (32 * _11945) + 164] = mem[_1109 + 128]
                s = 0
                t = _1109 + 160
                u = _11691 + (32 * _11945) + 196
                while s < _13631:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_11691 + 100] = (32 * _11945) + (32 * _13631) + 192
                _14895 = mem[_1109 + 224]
                mem[_11691 + (32 * _11945) + (32 * _13631) + 196] = mem[_1109 + 224]
                s = 0
                t = _1109 + 256
                u = _11691 + (32 * _11945) + (32 * _13631) + 228
                while s < _14895:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11691 + (32 * _11945) + (32 * _13631) + (32 * _14895) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16079 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16159 = mem[_16079]
                require mem[_16079] == mem[_16079]
                mem[0] = address(_11656)
                mem[32] = 3
                if stor3[address(_11656)] and _16159 > -1 / stor3[address(_11656)]:
                    revert with 'NH{q', 17
                if not stor3[address(_11690)]:
                    revert with 'NH{q', 18
                if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_11656)] * _16159 / stor3[address(_11690)]
            else:
                if mem[_1109 + ceil32(return_data.size) + 416] and 618034 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 18
                if 618034 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 618034:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                mem[_1109 + ceil32(return_data.size) + 416] = 618034 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6
                if 2 >= mem[_1109 + ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if not mem[_1109 + ceil32(return_data.size) + 416]:
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352]
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _11866 = mem[_1109 + ceil32(return_data.size) + 352]
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12095 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12202 = mem[_1109 + 32]
                    _12203 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _11866
                    mem[mem[64] + 36] = 128
                    _12360 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _12360:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12203 + 68] = (32 * _12360) + 160
                    _13629 = mem[_1109 + 128]
                    mem[_12203 + (32 * _12360) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _12203 + (32 * _12360) + 196
                    while s < _13629:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12203 + 100] = (32 * _12360) + (32 * _13629) + 192
                    _14893 = mem[_1109 + 224]
                    mem[_12203 + (32 * _12360) + (32 * _13629) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _12203 + (32 * _12360) + (32 * _13629) + 228
                    while s < _14893:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12203 + (32 * _12360) + (32 * _13629) + (32 * _14893) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16077 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16157 = mem[_16077]
                    require mem[_16077] == mem[_16077]
                    mem[0] = address(_12095)
                    mem[32] = 3
                    if stor3[address(_12095)] and _16157 > -1 / stor3[address(_12095)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_12202)]:
                        revert with 'NH{q', 18
                    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12095)] * _16157 / stor3[address(_12202)]
                else:
                    if mem[_1109 + ceil32(return_data.size) + 416] and 381966 > -1 / mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not mem[_1109 + ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 18
                    if 381966 * mem[_1109 + ceil32(return_data.size) + 416] / mem[_1109 + ceil32(return_data.size) + 416] != 381966:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    if mem[_1109 + ceil32(return_data.size) + 352] > -(381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) - 1:
                        revert with 'NH{q', 17
                    if mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6) < mem[_1109 + ceil32(return_data.size) + 352]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 448] = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    _12327 = mem[_1109 + ceil32(return_data.size) + 352] + (381966 * mem[_1109 + ceil32(return_data.size) + 416] / 10^6)
                    if mem[_1109] < 1:
                        revert with 'NH{q', 17
                    if mem[_1109] - 1 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12460 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
                    if 0 >= mem[_1109]:
                        revert with 'NH{q', 50
                    _12536 = mem[_1109 + 32]
                    _12537 = mem[64]
                    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _12327
                    mem[mem[64] + 36] = 128
                    _12649 = mem[_1109]
                    mem[mem[64] + 132] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 164
                    while s < _12649:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12537 + 68] = (32 * _12649) + 160
                    _13628 = mem[_1109 + 128]
                    mem[_12537 + (32 * _12649) + 164] = mem[_1109 + 128]
                    s = 0
                    t = _1109 + 160
                    u = _12537 + (32 * _12649) + 196
                    while s < _13628:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_12537 + 100] = (32 * _12649) + (32 * _13628) + 192
                    _14892 = mem[_1109 + 224]
                    mem[_12537 + (32 * _12649) + (32 * _13628) + 196] = mem[_1109 + 224]
                    s = 0
                    t = _1109 + 256
                    u = _12537 + (32 * _12649) + (32 * _13628) + 228
                    while s < _14892:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12537 + (32 * _12649) + (32 * _13628) + (32 * _14892) + -mem[64] + 224]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16076 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16156 = mem[_16076]
                    require mem[_16076] == mem[_16076]
                    mem[0] = address(_12460)
                    mem[32] = 3
                    if stor3[address(_12460)] and _16156 > -1 / stor3[address(_12460)]:
                        revert with 'NH{q', 17
                    if not stor3[address(_12536)]:
                        revert with 'NH{q', 18
                    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
                        revert with 'NH{q', 50
                    mem[_1109 + ceil32(return_data.size) + 512] = stor3[address(_12460)] * _16156 / stor3[address(_12536)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    if 6 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    if mem[_1109 + ceil32(return_data.size) + 544] > -mem[_1109 + ceil32(return_data.size) + 448] - 1:
        revert with 'NH{q', 17
    if mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448] < mem[_1109 + ceil32(return_data.size) + 544]:
        revert with 0, 'SafeMath: addition overflow'
    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    if 5 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    if mem[_1109 + ceil32(return_data.size) + 512] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
        revert with 'NH{q', 17
    if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 512]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_1109 + ceil32(return_data.size) + 512] + mem[_1109 + ceil32(return_data.size) + 480] <= mem[_1109 + ceil32(return_data.size) + 544] + mem[_1109 + ceil32(return_data.size) + 448]:
        if 1 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        _10902 = mem[_1109 + ceil32(return_data.size) + 384]
        if 3 >= mem[_1109 + ceil32(return_data.size) + 320]:
            revert with 'NH{q', 50
        _10966 = mem[_1109 + ceil32(return_data.size) + 448]
        if mem[_1109 + ceil32(return_data.size) + 448] > -mem[_1109 + ceil32(return_data.size) + 384] - 1:
            revert with 'NH{q', 17
        if mem[_1109 + ceil32(return_data.size) + 448] + mem[_1109 + ceil32(return_data.size) + 384] < mem[_1109 + ceil32(return_data.size) + 448]:
            revert with 0, 'SafeMath: addition overflow'
        _11206 = mem[64]
        mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _10966 + _10902 / 2
        mem[mem[64] + 36] = 128
        _11238 = mem[_1109]
        mem[mem[64] + 132] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 164
        while idx < _11238:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11206 + 68] = (32 * _11238) + 160
        _13622 = mem[_1109 + 128]
        mem[_11206 + (32 * _11238) + 164] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _11206 + (32 * _11238) + 196
        while idx < _13622:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_11206 + 100] = (32 * _11238) + (32 * _13622) + 192
        _14886 = mem[_1109 + 224]
        mem[_11206 + (32 * _11238) + (32 * _13622) + 196] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _11206 + (32 * _11238) + (32 * _13622) + 228
        while idx < _14886:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _11206 + (32 * _11238) + (32 * _13622) + (32 * _14886) + -mem[64] + 224]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16070 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16150 = mem[_16070]
        require mem[_16070] == mem[_16070]
        if 0 >= mem[_1109]:
            revert with 'NH{q', 50
        _16246 = mem[_1109 + 32]
        mem[0] = mem[_1109 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16246)] and _10966 + _10902 / 2 > -1 / stor3[address(_16246)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if mem[_1109] < 1:
            revert with 'NH{q', 17
        if mem[_1109] - 1 >= mem[_1109]:
            revert with 'NH{q', 50
        _16518 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
        mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
        mem[32] = 3
        if stor3[address(_16518)] and _16150 > -1 / stor3[address(_16518)]:
            revert with 'NH{q', 17
        if not stor3[stor5]:
            revert with 'NH{q', 18
        if stor3[address(_16518)] * _16150 / stor3[stor5] <= stor3[address(_16246)] * _10966 + _10902 / 2 / stor3[stor5]:
            _16582 = mem[64]
            mem[mem[64]] = _10966 + _10902 / 2
            mem[mem[64] + 32] = _16150
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 192
            _16630 = mem[_1109]
            mem[mem[64] + 192] = mem[_1109]
            idx = 0
            s = _1109 + 32
            t = mem[64] + 224
            while idx < _16630:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16582 + 128] = (32 * _16630) + 224
            _16887 = mem[_1109 + 128]
            mem[_16582 + (32 * _16630) + 224] = mem[_1109 + 128]
            idx = 0
            s = _1109 + 160
            t = _16582 + (32 * _16630) + 256
            while idx < _16887:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_16582 + 160] = (32 * _16630) + (32 * _16887) + 256
            _17079 = mem[_1109 + 224]
            mem[_16582 + (32 * _16630) + (32 * _16887) + 256] = mem[_1109 + 224]
            idx = 0
            s = _1109 + 256
            t = _16582 + (32 * _16630) + (32 * _16887) + 288
            while idx < _17079:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _16582 + (32 * _16630) + (32 * _16887) + (32 * _17079) + -mem[64] + 288
        if stor3[address(_16246)] * _10966 + _10902 / 2 / stor3[stor5] > stor3[address(_16518)] * _16150 / stor3[stor5]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor3[address(_16518)] * _16150 / stor3[stor5] < stor3[address(_16246)] * _10966 + _10902 / 2 / stor3[stor5]:
            revert with 'NH{q', 17
        _16614 = mem[64]
        mem[mem[64]] = _10966 + _10902 / 2
        mem[mem[64] + 32] = _16150
        mem[mem[64] + 64] = (stor3[address(_16518)] * _16150 / stor3[stor5]) - (stor3[address(_16246)] * _10966 + _10902 / 2 / stor3[stor5])
        mem[mem[64] + 96] = 192
        _16662 = mem[_1109]
        mem[mem[64] + 192] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 224
        while idx < _16662:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16614 + 128] = (32 * _16662) + 224
        _16886 = mem[_1109 + 128]
        mem[_16614 + (32 * _16662) + 224] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _16614 + (32 * _16662) + 256
        while idx < _16886:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16614 + 160] = (32 * _16662) + (32 * _16886) + 256
        _17078 = mem[_1109 + 224]
        mem[_16614 + (32 * _16662) + (32 * _16886) + 256] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _16614 + (32 * _16662) + (32 * _16886) + 288
        while idx < _17078:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _16614 + (32 * _16662) + (32 * _16886) + (32 * _17078) + -mem[64] + 288
    if 4 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    _10904 = mem[_1109 + ceil32(return_data.size) + 480]
    if 0 >= mem[_1109 + ceil32(return_data.size) + 320]:
        revert with 'NH{q', 50
    _10967 = mem[_1109 + ceil32(return_data.size) + 352]
    if mem[_1109 + ceil32(return_data.size) + 352] > -mem[_1109 + ceil32(return_data.size) + 480] - 1:
        revert with 'NH{q', 17
    if mem[_1109 + ceil32(return_data.size) + 352] + mem[_1109 + ceil32(return_data.size) + 480] < mem[_1109 + ceil32(return_data.size) + 352]:
        revert with 0, 'SafeMath: addition overflow'
    _11207 = mem[64]
    mem[mem[64]] = 0xf594ef2600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _10967 + _10904 / 2
    mem[mem[64] + 36] = 128
    _11239 = mem[_1109]
    mem[mem[64] + 132] = mem[_1109]
    idx = 0
    s = _1109 + 32
    t = mem[64] + 164
    while idx < _11239:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_11207 + 68] = (32 * _11239) + 160
    _13623 = mem[_1109 + 128]
    mem[_11207 + (32 * _11239) + 164] = mem[_1109 + 128]
    idx = 0
    s = _1109 + 160
    t = _11207 + (32 * _11239) + 196
    while idx < _13623:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_11207 + 100] = (32 * _11239) + (32 * _13623) + 192
    _14887 = mem[_1109 + 224]
    mem[_11207 + (32 * _11239) + (32 * _13623) + 196] = mem[_1109 + 224]
    idx = 0
    s = _1109 + 256
    t = _11207 + (32 * _11239) + (32 * _13623) + 228
    while idx < _14887:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _11207 + (32 * _11239) + (32 * _13623) + (32 * _14887) + -mem[64] + 224]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _16071 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _16151 = mem[_16071]
    require mem[_16071] == mem[_16071]
    if 0 >= mem[_1109]:
        revert with 'NH{q', 50
    _16247 = mem[_1109 + 32]
    mem[0] = mem[_1109 + 44 len 20]
    mem[32] = 3
    if stor3[address(_16247)] and _10967 + _10904 / 2 > -1 / stor3[address(_16247)]:
        revert with 'NH{q', 17
    if not stor3[stor5]:
        revert with 'NH{q', 18
    if mem[_1109] < 1:
        revert with 'NH{q', 17
    if mem[_1109] - 1 >= mem[_1109]:
        revert with 'NH{q', 50
    _16519 = mem[(32 * mem[_1109] - 1) + _1109 + 32]
    mem[0] = mem[(32 * mem[_1109] - 1) + _1109 + 44 len 20]
    mem[32] = 3
    if stor3[address(_16519)] and _16151 > -1 / stor3[address(_16519)]:
        revert with 'NH{q', 17
    if not stor3[stor5]:
        revert with 'NH{q', 18
    if stor3[address(_16519)] * _16151 / stor3[stor5] <= stor3[address(_16247)] * _10967 + _10904 / 2 / stor3[stor5]:
        _16583 = mem[64]
        mem[mem[64]] = _10967 + _10904 / 2
        mem[mem[64] + 32] = _16151
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 192
        _16631 = mem[_1109]
        mem[mem[64] + 192] = mem[_1109]
        idx = 0
        s = _1109 + 32
        t = mem[64] + 224
        while idx < _16631:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16583 + 128] = (32 * _16631) + 224
        _16889 = mem[_1109 + 128]
        mem[_16583 + (32 * _16631) + 224] = mem[_1109 + 128]
        idx = 0
        s = _1109 + 160
        t = _16583 + (32 * _16631) + 256
        while idx < _16889:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_16583 + 160] = (32 * _16631) + (32 * _16889) + 256
        _17081 = mem[_1109 + 224]
        mem[_16583 + (32 * _16631) + (32 * _16889) + 256] = mem[_1109 + 224]
        idx = 0
        s = _1109 + 256
        t = _16583 + (32 * _16631) + (32 * _16889) + 288
        while idx < _17081:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _16583 + (32 * _16631) + (32 * _16889) + (32 * _17081) + -mem[64] + 288
    if stor3[address(_16247)] * _10967 + _10904 / 2 / stor3[stor5] > stor3[address(_16519)] * _16151 / stor3[stor5]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor3[address(_16519)] * _16151 / stor3[stor5] < stor3[address(_16247)] * _10967 + _10904 / 2 / stor3[stor5]:
        revert with 'NH{q', 17
    _16615 = mem[64]
    mem[mem[64]] = _10967 + _10904 / 2
    mem[mem[64] + 32] = _16151
    mem[mem[64] + 64] = (stor3[address(_16519)] * _16151 / stor3[stor5]) - (stor3[address(_16247)] * _10967 + _10904 / 2 / stor3[stor5])
    mem[mem[64] + 96] = 192
    _16664 = mem[_1109]
    mem[mem[64] + 192] = mem[_1109]
    idx = 0
    s = _1109 + 32
    t = mem[64] + 224
    while idx < _16664:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_16615 + 128] = (32 * _16664) + 224
    _16888 = mem[_1109 + 128]
    mem[_16615 + (32 * _16664) + 224] = mem[_1109 + 128]
    idx = 0
    s = _1109 + 160
    t = _16615 + (32 * _16664) + 256
    while idx < _16888:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_16615 + 160] = (32 * _16664) + (32 * _16888) + 256
    _17080 = mem[_1109 + 224]
    mem[_16615 + (32 * _16664) + (32 * _16888) + 256] = mem[_1109 + 224]
    idx = 0
    s = _1109 + 256
    t = _16615 + (32 * _16664) + (32 * _16888) + 288
    while idx < _17080:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _16615 + (32 * _16664) + (32 * _16888) + (32 * _17080) + -mem[64] + 288
}



}
