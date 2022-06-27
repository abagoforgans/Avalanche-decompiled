contract main {




// =====================  Runtime code  =====================


#
#  - sub_4c984b48(?)
#  - sub_516a4301(?)
#  - sub_9fdd4e87(?)
#
address owner;
array of struct sub_26142335;
mapping of uint256 stor2;
address sub_d77ea8bfAddress;
mapping of address sub_da2cf0be;

function sub_26142335(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_26142335.length:
        revert with 0, 50
    return sub_26142335[arg1].field_0
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_d77ea8bf(?) payable {
    return sub_d77ea8bfAddress
}

function sub_da2cf0be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_da2cf0be[arg1[all]]
}

function sub_ecb9e11a(?) payable {
    return sub_26142335.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b2331c2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'caller is not operator'
    sub_d77ea8bfAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_20b2e7bf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(sub_da2cf0be[arg1[all]])
    call sub_da2cf0be[arg1[all]].withdraw(string arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_92de354d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_da2cf0be[arg1[all]])
    call sub_da2cf0be[arg1[all]].emergencyWithdraw(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4775aeb4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require ext_code.size(sub_da2cf0be[arg1[all]])
    staticcall sub_da2cf0be[arg1[all]].0xf14fc687 with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a7accd11(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require ext_code.size(sub_da2cf0be[arg1[all]])
    staticcall sub_da2cf0be[arg1[all]].0xa9c611dd with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2d36da47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'caller is not operator'
    require ext_code.size(sub_d77ea8bfAddress)
    staticcall sub_d77ea8bfAddress.0x6cf8ac67 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    create contract with 0 wei
                    code: code.data[7575 len 6609], address(ext_call.return_data[0])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_da2cf0be[arg1[all]] = address(create.new_address)
    require ext_code.size(sub_d77ea8bfAddress)
    call sub_d77ea8bfAddress.0x988d7016 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addOperators(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            sub_26142335.length++
            sub_26142335[sub_26142335.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
            sub_26142335[sub_26142335.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx) + arg1 + 36)])] = sub_26142335.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 160
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x4c022f03: Array(len=arg1.length, data=mem[160 len 32 * arg1.length])
}

function getAllOperators() payable {
    if sub_26142335.length > test266151307():
        revert with 0, 65
    mem[96] = sub_26142335.length
    mem[64] = (32 * sub_26142335.length) + 128
    if not sub_26142335.length:
        idx = 0
        while idx < mem[96]:
            if idx >= sub_26142335.length:
                revert with 0, 50
            mem[0] = 1
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_26142335[idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * sub_26142335.length) + 128] = 32
        _20 = mem[96]
        mem[(32 * sub_26142335.length) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_26142335.length) + (32 * _20) + -mem[64] + 192
    mem[128 len 32 * sub_26142335.length] = call.data[calldata.size len 32 * sub_26142335.length]
    idx = 0
    while idx < mem[96]:
        if idx >= sub_26142335.length:
            revert with 0, 50
        mem[0] = 1
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_26142335[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * sub_26142335.length) + 128] = 32
    _21 = mem[96]
    mem[(32 * sub_26142335.length) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _21:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_26142335.length) + (32 * _21) + -mem[64] + 192
}

function removeOperators(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            if stor2[address(cd[((32 * idx) + arg1 + 36)])] < 1:
                revert with 0, 17
            if sub_26142335.length < 1:
                revert with 0, 17
            if sub_26142335.length - 1 != stor2[address(cd[((32 * idx) + arg1 + 36)])] - 1:
                if sub_26142335.length - 1 >= sub_26142335.length:
                    revert with 0, 50
                if stor2[address(cd[((32 * idx) + arg1 + 36)])] - 1 >= sub_26142335.length:
                    revert with 0, 50
                sub_26142335[stor2[address(cd[((32 * idx) + arg1 + 36)])]].field_0 = sub_26142335[sub_26142335.length].field_0
                stor2[stor1[stor1.length].field_0] = stor2[address(cd[((32 * idx) + arg1 + 36)])]
            if not sub_26142335.length:
                revert with 0, 49
            sub_26142335[sub_26142335.length].field_0 = 0
            sub_26142335.length--
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 160
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xd0459267: Array(len=arg1.length, data=mem[160 len 32 * arg1.length])
}

function sub_55ac6732(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'caller is not operator'
    mem[96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 96] = 4
    mem[ceil32(('cd', 36).length) + 292] = ('cd', 68).length
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(('cd', 36).length) + 324 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 324] = ('cd', 100).length
    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    idx = 0
    s = ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 388
    t = cd[132] + 36
    while idx < ('cd', 132).length:
        require cd[t] == uint32(cd[t])
        mem[s] = uint32(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 388] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 420
    while idx < ('cd', 164).length:
        require cd[s] < 2
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
    call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].0x1719dfc3 with:
         gas gas_remaining wei
        args 0, 160, ceil32(('cd', 36).length) + 192, ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 224, ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256, ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], 0, mem[('cd', 36).length + 324 len ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + -('cd', 36).length + 32], call.data[cd[100] + 36 len 32 * ('cd', 100).length], ('cd', 132).length, mem[ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 388 len (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_758c7fa4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while ('cd', 36).length > uint32(idx):
        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[('cd', 4).length + mem[64]] = 4
        if uint32(idx) >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
        mem[mem[64] + 100 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 100] = 0
        mem[mem[64] + 36] = tx.origin
        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
        staticcall sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].0xa9c611dd with:
                gas gas_remaining wei
               args Array(len=cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]), tx.origin
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        if s > !mem[_22]:
            revert with 0, 17
        if not mem[_22]:
            if uint32(idx) == test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s + mem[_22]
            continue 
        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[('cd', 4).length + mem[64]] = 4
        if uint32(idx) >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
        mem[mem[64]] = 0x31fb67c200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].withdraw(string arg1) with:
             gas gas_remaining wei
            args Array(len=cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(idx) == test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = s + _23
        continue 
    if not s:
        revert with 0, 'nothing to withdraw'
}

function sub_d0347132(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if stor2[address(msg.sender)]:
        if stor2[address(msg.sender)]:
            mem[100] = 32
            mem[132] = ('cd', 4).length
            mem[164 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + 164] = 0
            require ext_code.size(sub_d77ea8bfAddress)
            staticcall sub_d77ea8bfAddress.0x6cf8ac67 with:
                    gas gas_remaining wei
                   args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 96 len 6609] = code.data[7575 len 6609]
            mem[ceil32(return_data.size) + 6705] = address(ext_call.return_data[0])
            create contract with 0 wei
                            code: code.data[7575 len 6609], address(ext_call.return_data[0])
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 96] = 4
            sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]] = address(create.new_address)
            mem[ceil32(return_data.size) + 96] = 0x988d701600000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 4).length
            mem[ceil32(return_data.size) + 196 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 132] = address(create.new_address)
            require ext_code.size(sub_d77ea8bfAddress)
            call sub_d77ea8bfAddress.0x988d7016 with:
                 gas gas_remaining wei
                args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = msg.sender
            if stor2[address(msg.sender)]:
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _182 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_182 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_182 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_182 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _182 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _198 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_198 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_198 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_198 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _198 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'caller is not operator'
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _184 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_184 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_184 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_184 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _184 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _201 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_201 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_201 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_201 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _201 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
        else:
            if owner != msg.sender:
                revert with 0, 'caller is not operator'
            mem[100] = 32
            mem[132] = ('cd', 4).length
            mem[164 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + 164] = 0
            require ext_code.size(sub_d77ea8bfAddress)
            staticcall sub_d77ea8bfAddress.0x6cf8ac67 with:
                    gas gas_remaining wei
                   args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 96 len 6609] = code.data[7575 len 6609]
            mem[ceil32(return_data.size) + 6705] = address(ext_call.return_data[0])
            create contract with 0 wei
                            code: code.data[7575 len 6609], address(ext_call.return_data[0])
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 96] = 4
            sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]] = address(create.new_address)
            mem[ceil32(return_data.size) + 96] = 0x988d701600000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 4).length
            mem[ceil32(return_data.size) + 196 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 132] = address(create.new_address)
            require ext_code.size(sub_d77ea8bfAddress)
            call sub_d77ea8bfAddress.0x988d7016 with:
                 gas gas_remaining wei
                args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = msg.sender
            if stor2[address(msg.sender)]:
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _186 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_186 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_186 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_186 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _204 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_204 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_204 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_204 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _204 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'caller is not operator'
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _188 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_188 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_188 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _188 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _188 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _207 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_207 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_207 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _207 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _207 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
    else:
        if owner != msg.sender:
            revert with 0, 'caller is not operator'
        if stor2[address(msg.sender)]:
            mem[100] = 32
            mem[132] = ('cd', 4).length
            mem[164 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + 164] = 0
            require ext_code.size(sub_d77ea8bfAddress)
            staticcall sub_d77ea8bfAddress.0x6cf8ac67 with:
                    gas gas_remaining wei
                   args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 96 len 6609] = code.data[7575 len 6609]
            mem[ceil32(return_data.size) + 6705] = address(ext_call.return_data[0])
            create contract with 0 wei
                            code: code.data[7575 len 6609], address(ext_call.return_data[0])
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 96] = 4
            sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]] = address(create.new_address)
            mem[ceil32(return_data.size) + 96] = 0x988d701600000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 4).length
            mem[ceil32(return_data.size) + 196 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 132] = address(create.new_address)
            require ext_code.size(sub_d77ea8bfAddress)
            call sub_d77ea8bfAddress.0x988d7016 with:
                 gas gas_remaining wei
                args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = msg.sender
            if stor2[address(msg.sender)]:
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _190 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_190 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_190 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_190 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _190 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _210 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[_210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[_210 + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[_210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[_210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[_210 + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[_210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = _210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_210 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _210 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'caller is not operator'
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _192 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_192 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_192 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _192 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _192 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _213 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_213 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_213 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _213 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _213 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
        else:
            if owner != msg.sender:
                revert with 0, 'caller is not operator'
            mem[100] = 32
            mem[132] = ('cd', 4).length
            mem[164 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + 164] = 0
            require ext_code.size(sub_d77ea8bfAddress)
            staticcall sub_d77ea8bfAddress.0x6cf8ac67 with:
                    gas gas_remaining wei
                   args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 96 len 6609] = code.data[7575 len 6609]
            mem[ceil32(return_data.size) + 6705] = address(ext_call.return_data[0])
            create contract with 0 wei
                            code: code.data[7575 len 6609], address(ext_call.return_data[0])
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 96] = 4
            sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]] = address(create.new_address)
            mem[ceil32(return_data.size) + 96] = 0x988d701600000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 4).length
            mem[ceil32(return_data.size) + 196 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 132] = address(create.new_address)
            require ext_code.size(sub_d77ea8bfAddress)
            call sub_d77ea8bfAddress.0x988d7016 with:
                 gas gas_remaining wei
                args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = msg.sender
            if stor2[address(msg.sender)]:
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _194 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_194 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_194 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _194 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _194 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _216 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_216 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_216 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _216 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _216 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'caller is not operator'
                idx = 0
                while ('cd', 36).length > uint32(idx):
                    if uint32(idx) >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * uint32(idx)) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[address(msg.sender)]:
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _196 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_196 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_196 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _196 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _196 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    else:
                        if owner != msg.sender:
                            revert with 0, 'caller is not operator'
                        mem[mem[64] len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                        mem[('cd', 4).length + mem[64]] = 4
                        _219 = mem[64]
                        mem[mem[64]] = 0x1719dfc300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 160
                        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]
                        mem[mem[64] + 196 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)] + mem[64] + 196] = 0
                        mem[mem[64] + 36] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 192
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 196] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + 228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + 68] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 224
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 228] = ('cd', 100).length
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + 260 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[mem[64] + 100] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        mem[mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260] = ('cd', 132).length
                        s = 0
                        t = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 292
                        u = cd[132] + 36
                        while s < ('cd', 132).length:
                            require cd[u] == uint32(cd[u])
                            mem[t] = uint32(cd[u])
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_219 + 132] = ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        mem[_219 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 292] = ('cd', 164).length
                        s = 0
                        t = cd[164] + 36
                        u = _219 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324
                        while s < ('cd', 164).length:
                            require cd[t] < 2
                            mem[u] = cd[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]])
                        call sub_da2cf0be[call.data[cd[4] + 36 len ('cd', 4).length]].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _219 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * uint32(idx)) + 36)] + 36)]) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint32(idx) == test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    continue 
}



}
