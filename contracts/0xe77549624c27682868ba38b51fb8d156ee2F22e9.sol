contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
address _owner;
address sub_1655f83bAddress;

function sub_1655f83b(?) payable {
    return sub_1655f83bAddress
}

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function getPayments() payable {
    mem[64] = 96
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        stor1 = stor0[idx].field_0
        require ext_code.size(stor1)
        call stor1.0x22f3e2d4 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if mem[_11]:
            mem[mem[64]] = 0xd8d7970000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            call stor1.0xd8d79700 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getSubscriptions() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = (32 * stor0.length) + 192
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function sub_1604dd99(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + 98 > test266151307() or ceil32(ceil32(arg6.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg6 + arg6.length + 36 <= calldata.size
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 99 > test266151307() or ceil32(ceil32(arg7.length)) + 99 < 98:
        revert with 'NH{q', 65
    require arg7 + arg7.length + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'You're not the owner'
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg6.length) <= arg6.length:
            create contract with 0 wei
                            code: code.data[3152 len 8563], Array(len=ceil32(arg1.length) + ceil32(arg6.length) + 288, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, arg7.length, arg7[all], code.data[arg7.length + -ceil32(ceil32(arg7.length)) + 3183 len ceil32(arg7.length) - arg7.length]), address(arg2), address(arg3), arg4, arg5, ceil32(arg1.length) + 256
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + ceil32(arg6.length) + 8950] = arg7.length
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + ceil32(arg6.length) + 8982 len ceil32(arg7.length)] = arg7[all], code.data[arg7.length + -ceil32(ceil32(arg7.length)) + 3183 len ceil32(arg7.length) - arg7.length]
            if ceil32(arg7.length) > arg7.length:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + ceil32(arg6.length) + arg7.length + 8982] = 0
            create contract with 0 wei
                            code: code.data[3152 len 8563], Array(len=ceil32(arg1.length) + ceil32(arg6.length) + 288, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + arg6.length + 8982 len ceil32(arg7.length) - arg6.length + ceil32(arg6.length)]), address(arg2), address(arg3), arg4, arg5, ceil32(arg1.length) + 256
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + 8918] = arg6.length
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + 8950 len ceil32(arg6.length)] = arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256
        if ceil32(arg6.length) > arg6.length:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + arg6.length + 8950] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(arg1.length) + ceil32(arg6.length) + 8950] = arg7.length
        create contract with 0 wei
                        code: code.data[3152 len 8563], Array(len=ceil32(arg1.length) + ceil32(arg6.length) + 288, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + arg1.length + 8950 len ceil32(arg1.length) + ceil32(arg6.length) + -arg1.length + 32], Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], code.data[arg7.length + -ceil32(ceil32(arg7.length)) + 3183 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256), address(arg2), address(arg3), arg4, arg5, ceil32(arg1.length) + 256
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length].field_0 = address(create.new_address)
    sub_1655f83bAddress = address(create.new_address)
}



}
