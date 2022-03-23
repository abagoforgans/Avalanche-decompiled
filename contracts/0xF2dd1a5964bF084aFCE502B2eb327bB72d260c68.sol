contract main {




// =====================  Runtime code  =====================


#
#  - sub_03b9fa69(?)
#  - sub_7e4eccee(?)
#
address stor0;
address stor1;
address stor2;
mapping of struct sub_25b9cfca;
array of struct stor6;
array of uint256 stor7;

function sub_25b9cfca(?) {
    require calldata.size - 4 >= 32
    return sub_25b9cfca[address(arg1)].field_256
}

function sub_d590f8fc(?) {
    require calldata.size - 4 >= 64
    if arg1 != sub_d590f8fc[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 != sub_d590f8fc[arg1][5][arg2].field_512:
        revert with 0, 'oEste id no existe'
    mem[384] = sub_d590f8fc[arg1][5][arg2][1].field_0
    idx = 384
    s = 0
    while sub_d590f8fc[arg1][5][arg2][1].length + 352 > idx:
        mem[idx + 32] = sub_d590f8fc[arg1][5][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_d590f8fc[arg1][5][arg2].field_0, 
           sub_d590f8fc[arg1][5][arg2].field_512,
           Array(len=sub_d590f8fc[arg1][5][arg2][1].length, data=mem[384 len sub_d590f8fc[arg1][5][arg2][1].length]),
           sub_d590f8fc[arg1][5][arg2].field_768
}

function kill() {
    if stor1 != msg.sender:
        revert with 0, 'Caller is not owner'
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function sub_c5ab6076(?) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor0 = arg1
}

function sub_f2daadf9(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if arg1 != sub_d590f8fc[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 == sub_d590f8fc[arg1][5][arg2].field_512:
        revert with 0, 'Este id ya existe'
    sub_d590f8fc[arg1][5][arg2].field_0 = arg1
    sub_d590f8fc[arg1][5][arg2][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_d590f8fc[arg1][5][arg2].field_512 = arg2
    sub_d590f8fc[arg1][5][arg2].field_768 = block.number
    sub_d590f8fc[arg1].field_1024++
    stor[sub_d590f8fc[arg1].field_1024 + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_d590f8fc', 5)))].field_0 = arg2
}

function sub_8056403e(?) {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = uint256(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
}

function sub_a3dff17c(?) {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = uint256(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
}

function sub_d0e46d93(?) {
    require calldata.size - 4 >= 32
    if stor4[arg1].field_4352:
        mem[128] = stor4[arg1][17].field_0
        if (32 * stor4[arg1].field_4352) + 32 > 64:
            mem[160] = stor4[arg1][17].field_256
            idx = 160
            s = 1
            while (32 * stor4[arg1].field_4352) + 96 > idx:
                mem[idx + 32] = stor4[arg1][s + 17].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor4[arg1].field_4352) + 128] = 32
    mem[(32 * stor4[arg1].field_4352) + 160] = stor4[arg1].field_4352
    mem[(32 * stor4[arg1].field_4352) + 192 len floor32(stor4[arg1].field_4352)] = mem[128 len floor32(stor4[arg1].field_4352)]
    return memory
      from (32 * stor4[arg1].field_4352) + 128
       len (96 * stor4[arg1].field_4352) + 64
}

function sub_98b1358c(?) {
    require calldata.size - 4 >= 32
    if sub_d590f8fc[arg1].field_768:
        mem[128] = sub_d590f8fc[arg1][3].field_0
        if (32 * sub_d590f8fc[arg1].field_768) + 32 > 64:
            mem[160] = sub_d590f8fc[arg1][3].field_256
            idx = 160
            s = 1
            while (32 * sub_d590f8fc[arg1].field_768) + 96 > idx:
                mem[idx + 32] = sub_d590f8fc[arg1][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_d590f8fc[arg1].field_768) + 128] = 32
    mem[(32 * sub_d590f8fc[arg1].field_768) + 160] = sub_d590f8fc[arg1].field_768
    mem[(32 * sub_d590f8fc[arg1].field_768) + 192 len floor32(sub_d590f8fc[arg1].field_768)] = mem[128 len floor32(sub_d590f8fc[arg1].field_768)]
    return memory
      from (32 * sub_d590f8fc[arg1].field_768) + 128
       len (96 * sub_d590f8fc[arg1].field_768) + 64
}

function sub_70a6cbbc(?) {
    require calldata.size - 4 >= 32
    if sub_d590f8fc[arg1].field_1024:
        mem[128] = sub_d590f8fc[arg1][4].field_0
        if (32 * sub_d590f8fc[arg1].field_1024) + 32 > 64:
            mem[160] = sub_d590f8fc[arg1][4].field_256
            idx = 160
            s = 1
            while (32 * sub_d590f8fc[arg1].field_1024) + 96 > idx:
                mem[idx + 32] = sub_d590f8fc[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_d590f8fc[arg1].field_1024) + 128] = 32
    mem[(32 * sub_d590f8fc[arg1].field_1024) + 160] = sub_d590f8fc[arg1].field_1024
    mem[(32 * sub_d590f8fc[arg1].field_1024) + 192 len floor32(sub_d590f8fc[arg1].field_1024)] = mem[128 len floor32(sub_d590f8fc[arg1].field_1024)]
    return memory
      from (32 * sub_d590f8fc[arg1].field_1024) + 128
       len (96 * sub_d590f8fc[arg1].field_1024) + 64
}

function sub_e45e01c9(?) {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, 'Caller is not manager'
    if bool(sub_25b9cfca[address(arg1)].field_160) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6f457374652061646472657373206e6f20736520656e6375656e74726120726567697374726164,
                    mem[203 len 25]
    sub_25b9cfca[address(arg1)].field_256 += arg2
    require ext_code.size(stor0)
    staticcall stor0.0x17285a3e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_11430a98(?) {
    require calldata.size - 4 >= 32
    if not stor4[arg1].field_4608:
        mem[(32 * stor4[arg1].field_4608) + 128] = 32
        mem[(32 * stor4[arg1].field_4608) + 160] = stor4[arg1].field_4608
        mem[(32 * stor4[arg1].field_4608) + 192 len floor32(stor4[arg1].field_4608)] = mem[128 len floor32(stor4[arg1].field_4608)]
        return memory
          from (32 * stor4[arg1].field_4608) + 128
           len (96 * stor4[arg1].field_4608) + 64
    mem[128] = stor4[arg1][18].field_0
    idx = 128
    s = 0
    while (32 * stor4[arg1].field_4608) + 96 > idx:
        mem[idx + 32] = stor4[arg1][s + 18].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[arg1].field_4608) + 192 len floor32(stor4[arg1].field_4608)] = mem[128 len floor32(stor4[arg1].field_4608)]
    return Array(len=stor4[arg1].field_4608, data=mem[128 len floor32(stor4[arg1].field_4608)], mem[(32 * stor4[arg1].field_4608) + floor32(stor4[arg1].field_4608) + 192 len (32 * stor4[arg1].field_4608) - floor32(stor4[arg1].field_4608)]), 
}

function sub_13ba6feb(?) {
    require calldata.size - 4 >= 32
    if arg1 != sub_d590f8fc[arg1].field_0:
        revert with 0, 'oEste id no existe'
    mem[448] = sub_d590f8fc[arg1][1].field_0
    idx = 448
    s = 0
    while sub_d590f8fc[arg1][1].length + 416 > idx:
        mem[idx + 32] = sub_d590f8fc[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_d590f8fc[arg1].field_768:
        idx = ceil32(sub_d590f8fc[arg1][1].length) + 480
        s = 0
        while ceil32(sub_d590f8fc[arg1][1].length) + (32 * sub_d590f8fc[arg1].field_768) + 448 > idx:
            mem[idx + 32] = sub_d590f8fc[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_d590f8fc[arg1].field_1024:
        idx = ceil32(sub_d590f8fc[arg1][1].length) + (32 * sub_d590f8fc[arg1].field_768) + 512
        s = 0
        while ceil32(sub_d590f8fc[arg1][1].length) + (32 * sub_d590f8fc[arg1].field_768) + (32 * sub_d590f8fc[arg1].field_1024) + 480 > idx:
            mem[idx + 32] = sub_d590f8fc[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return sub_d590f8fc[arg1].field_0, 
           Array(len=sub_d590f8fc[arg1][1].length, data=mem[448 len sub_d590f8fc[arg1][1].length]),
           sub_d590f8fc[arg1].field_512
}

function sub_0166b525(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg1 == stor4[arg1].field_0:
        revert with 0, 'Este id ya existe'
    if arg1 == sub_d590f8fc[arg1].field_0:
        revert with 0, 'Este id ya existe'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 
                    32,
                    42,
                    0xfe4e6f207469656e657320737566696369656e7465732061766f6361646f7320646973706f6e69626c65,
                    mem[ceil32(arg2.length) + 238 len 22]
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x4e6f20657320756e2077616c6c6574207065726d697469646f2070617261206669726d6100,
                    mem[ceil32(arg2.length) + 233 len 27]
    if not sub_25b9cfca[msg.sender].field_256:
        revert with 0, 'No tienes firmas disponibles'
    sub_d590f8fc[arg1].field_0 = arg1
    sub_d590f8fc[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_d590f8fc[arg1].field_512 = block.number
    stor7.length++
    stor7[stor7.length] = arg1
}

function sub_f1da193c(?) payable {
    require calldata.size - 4 >= 96
    if stor2 != msg.sender:
        revert with 0, 'Caller is not manager'
    if sub_25b9cfca[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6f45737465206164647265737320796120736520656e6375656e74726120726567697374726164,
                    mem[203 len 25]
    if arg3 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x735765692071756520656e766961737465206e6f20657320656c20636f7272656374,
                    mem[198 len 30]
    sub_25b9cfca[address(arg1)].field_0 = arg1
    sub_25b9cfca[address(arg1)].field_160 = 1
    sub_25b9cfca[address(arg1)].field_256 = arg2
    require ext_code.size(stor0)
    staticcall stor0.0x17285a3e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f5f13432(?) {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, 'Caller is not manager'
    if bool(sub_25b9cfca[address(arg1)].field_160) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6f457374652061646472657373206e6f20736520656e6375656e74726120726567697374726164,
                    mem[203 len 25]
    require ext_code.size(stor0)
    if arg2 >= sub_25b9cfca[address(arg1)].field_256:
        staticcall stor0.0x17285a3e with:
                gas gas_remaining wei
               args sub_25b9cfca[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_25b9cfca[address(arg1)].field_256 = 0
    else:
        staticcall stor0.0x17285a3e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_25b9cfca[address(arg1)].field_256 -= arg2
}

function sub_7b61a85f(?) {
    require calldata.size - 4 >= 256
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    if arg1 == stor4[arg1].field_0:
        revert with 0, 'Este id ya existe'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 
                    32,
                    42,
                    0xfe4e6f207469656e657320737566696369656e7465732061766f6361646f7320646973706f6e69626c65,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 334 len 22]
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x4e6f20657320756e2077616c6c6574207065726d697469646f2070617261206669726d6100,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg6.length) + ceil32(arg7.length) + 329 len 27]
    if not sub_25b9cfca[msg.sender].field_256:
        revert with 0, 'No tienes firmas disponibles'
    stor4[arg1].field_0 = arg1
    stor4[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor4[arg1][7][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor4[arg1].field_2304 = arg4
    stor4[arg1].field_2560 = arg5
    stor4[arg1][11][].field_0 = Array(len=arg6.length, data=arg6[all])
    stor4[arg1][12][].field_0 = Array(len=arg7.length, data=arg7[all])
    stor4[arg1].field_3328 = arg8
    stor4[arg1].field_3840 = block.number
    stor6.length++
    stor6[stor6.length].field_0 = arg1
}

function sub_04892bbb(?) {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + arg5.length + 160] = 0
    if arg1 != stor4[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 == stor4[arg1][19][arg2].field_256:
        revert with 0, 'Este id ya existe'
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x4e6f20657320756e2077616c6c6574207065726d697469646f2070617261206669726d6100,
                    mem[ceil32(arg3.length) + ceil32(arg5.length) + 265 len 27]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 224] = 96
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 256] = arg4
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 288] = ceil32(arg3.length) + 128
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 320] = arg6
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 352] = arg7
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 384] = arg8
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 416] = block.number
    stor4[arg1][19][arg2].field_0 = arg1
    stor4[arg1][19][arg2].field_256 = arg2
    stor4[arg1][19][arg2][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor4[arg1][19][arg2].field_768 = arg4
    stor4[arg1][19][arg2][4][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    stor4[arg1][19][arg2].field_1280 = arg6
    stor4[arg1][19][arg2].field_1536 = arg7
    stor4[arg1][19][arg2].field_1792 = arg8
    stor4[arg1][19][arg2].field_2048 = block.number
    stor4[arg1].field_4608++
    stor[stor4[arg1].field_4608 + ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor4', 4)))].field_0 = arg2
}

function sub_78b95cd1(?) {
    require calldata.size - 4 >= 256
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if arg1 != stor4[arg1].field_0:
        revert with 0, 'oEste id no existe'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 
                    32,
                    42,
                    0xfe4e6f207469656e657320737566696369656e7465732061766f6361646f7320646973706f6e69626c65,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg8.length) + 398 len 22]
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x4e6f20657320756e2077616c6c6574207065726d697469646f2070617261206669726d6100,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg8.length) + 393 len 27]
    if not sub_25b9cfca[msg.sender].field_256:
        revert with 0, 'No tienes firmas disponibles'
    stor4[arg1].field_0 = arg1
    stor4[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor4[arg1][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor4[arg1][4][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor4[arg1][6][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor4[arg1][14][].field_0 = Array(len=arg6.length, data=arg6[all])
    stor4[arg1].field_1280 = uint8(arg7)
    stor4[arg1][8][].field_0 = Array(len=arg8.length, data=arg8[all])
    stor4[arg1].field_4096 = block.number
}

function sub_fbdc29a0(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if arg1 != sub_d590f8fc[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 == sub_d590f8fc[arg1][6][arg2].field_256:
        revert with 0, 'Este id ya existe'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 
                    32,
                    42,
                    0xfe4e6f207469656e657320737566696369656e7465732061766f6361646f7320646973706f6e69626c65,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 270 len 22]
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x4e6f20657320756e2077616c6c6574207065726d697469646f2070617261206669726d6100,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 265 len 27]
    if not sub_25b9cfca[msg.sender].field_256:
        revert with 0, 'No tienes firmas disponibles'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ceil32(arg3.length) + 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = block.number
    sub_d590f8fc[arg1][6][arg2].field_0 = arg1
    sub_d590f8fc[arg1][6][arg2].field_256 = arg2
    sub_d590f8fc[arg1][6][arg2][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_d590f8fc[arg1][6][arg2][3][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    sub_d590f8fc[arg1][6][arg2].field_1024 = block.number
    sub_d590f8fc[arg1].field_768++
    stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_d590f8fc', 5))) + sub_d590f8fc[arg1].field_768].field_0 = arg2
    require ext_code.size(stor0)
    staticcall stor0.0x17285a3e with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_25b9cfca[msg.sender].field_256--
}

function sub_b3b9d651(?) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg6.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg6.length + 192] = 0
    if arg1 != stor4[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 == stor4[arg1][20][arg2].field_256:
        revert with 0, 'Este id ya existe'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 
                    32,
                    42,
                    0xfe4e6f207469656e657320737566696369656e7465732061766f6361646f7320646973706f6e69626c65,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 302 len 22]
    if sub_25b9cfca[msg.sender].field_0 != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x4e6f20657320756e2077616c6c6574207065726d697469646f2070617261206669726d6100,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 297 len 27]
    if not sub_25b9cfca[msg.sender].field_256:
        revert with 0, 'No tienes firmas disponibles'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 256] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 288] = ceil32(arg3.length) + 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 320] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 352] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg6.length) + 384] = block.number
    stor4[arg1][20][arg2].field_0 = arg1
    stor4[arg1][20][arg2].field_256 = arg2
    stor4[arg1][20][arg2][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor4[arg1][20][arg2][3][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    stor4[arg1][20][arg2].field_1024 = arg5
    stor4[arg1][20][arg2][5][].field_0 = Array(len=Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)], data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    stor4[arg1][20][arg2].field_1536 = block.number
    stor4[arg1].field_4352++
    stor[('array', 17, ('map', ('param', 'arg1'), ('name', 'stor4', 4))) + stor4[arg1].field_4352].field_0 = arg2
    require ext_code.size(stor0)
    staticcall stor0.0x17285a3e with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_25b9cfca[msg.sender].field_256--
}

function sub_8741d4da(?) {
    require calldata.size - 4 >= 64
    if arg1 != sub_d590f8fc[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 != sub_d590f8fc[arg1][6][arg2].field_256:
        revert with 0, 'oEste id no existe'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[32] = sha3(arg1, 5) + 6
    mem[256] = sub_d590f8fc[arg1][6][arg2].field_0
    mem[288] = sub_d590f8fc[arg1][6][arg2].field_256
    mem[416] = sub_d590f8fc[arg1][6][arg2][2].length
    mem[448] = sub_d590f8fc[arg1][6][arg2][2].field_0
    idx = 448
    s = 0
    while sub_d590f8fc[arg1][6][arg2][2].length + 416 > idx:
        mem[idx + 32] = sub_d590f8fc[arg1][6][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[320] = 416
    mem[64] = ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 480
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 448] = sub_d590f8fc[arg1][6][arg2][3].length
    mem[0] = sha3(arg2, sha3(arg1, 5) + 6) + 3
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 480] = sub_d590f8fc[arg1][6][arg2][3].field_0
    idx = ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 480
    s = 0
    while ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + sub_d590f8fc[arg1][6][arg2][3].length + 448 > idx:
        mem[idx + 32] = sub_d590f8fc[arg1][6][arg2][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[352] = ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 448
    mem[384] = sub_d590f8fc[arg1][6][arg2].field_1024
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 480] = sub_d590f8fc[arg1][6][arg2].field_0
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 512] = sub_d590f8fc[arg1][6][arg2].field_256
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 608] = sub_d590f8fc[arg1][6][arg2].field_1024
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 544] = 160
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 640] = sub_d590f8fc[arg1][6][arg2][2].length
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 672 len ceil32(sub_d590f8fc[arg1][6][arg2][2].length)] = mem[448 len ceil32(sub_d590f8fc[arg1][6][arg2][2].length)]
    mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 576] = sub_d590f8fc[arg1][6][arg2][2].length + 192
    mem[sub_d590f8fc[arg1][6][arg2][2].length + ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 672] = sub_d590f8fc[arg1][6][arg2][3].length
    mem[sub_d590f8fc[arg1][6][arg2][2].length + ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 704 len ceil32(sub_d590f8fc[arg1][6][arg2][3].length)] = mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 480 len ceil32(sub_d590f8fc[arg1][6][arg2][3].length)]
    if not sub_d590f8fc[arg1][6][arg2][3].length % 32:
        return sub_d590f8fc[arg1][6][arg2].field_0, 
               sub_d590f8fc[arg1][6][arg2].field_256,
               Array(len=sub_d590f8fc[arg1][6][arg2][2].length, data=mem[448 len sub_d590f8fc[arg1][6][arg2][2].length], sub_d590f8fc[arg1][6][arg2][3].length, mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 480 len sub_d590f8fc[arg1][6][arg2][3].length]),
               sub_d590f8fc[arg1][6][arg2][2].length + 192,
               sub_d590f8fc[arg1][6][arg2].field_1024
    mem[floor32(sub_d590f8fc[arg1][6][arg2][3].length) + sub_d590f8fc[arg1][6][arg2][2].length + ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 704] = mem[floor32(sub_d590f8fc[arg1][6][arg2][3].length) + sub_d590f8fc[arg1][6][arg2][2].length + ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + -sub_d590f8fc[arg1][6][arg2][3].length % 32 + 736 len sub_d590f8fc[arg1][6][arg2][3].length % 32]
    return sub_d590f8fc[arg1][6][arg2].field_0, 
           sub_d590f8fc[arg1][6][arg2].field_256,
           Array(len=sub_d590f8fc[arg1][6][arg2][2].length, data=mem[448 len sub_d590f8fc[arg1][6][arg2][2].length], sub_d590f8fc[arg1][6][arg2][3].length, mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + 480 len ceil32(sub_d590f8fc[arg1][6][arg2][3].length)], mem[ceil32(sub_d590f8fc[arg1][6][arg2][2].length) + (2 * ceil32(sub_d590f8fc[arg1][6][arg2][3].length)) + sub_d590f8fc[arg1][6][arg2][2].length + 704 len floor32(sub_d590f8fc[arg1][6][arg2][3].length) + -ceil32(sub_d590f8fc[arg1][6][arg2][3].length) + 32]),
           sub_d590f8fc[arg1][6][arg2][2].length + 192,
           sub_d590f8fc[arg1][6][arg2].field_1024
}

function sub_babfdc5b(?) {
    require calldata.size - 4 >= 64
    if stor4[arg1].field_0 != arg1:
        revert with 0, 'oEste id no existe'
    if arg2 != stor4[arg1][19][arg2].field_256:
        revert with 0, 'oEste id no existe'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[32] = sha3(arg1, 4) + 19
    mem[384] = stor4[arg1][19][arg2].field_0
    mem[416] = stor4[arg1][19][arg2].field_256
    mem[672] = stor4[arg1][19][arg2][2].length
    mem[704] = stor4[arg1][19][arg2][2].field_0
    idx = 704
    s = 0
    while stor4[arg1][19][arg2][2].length + 672 > idx:
        mem[idx + 32] = stor4[arg1][19][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[448] = 672
    mem[480] = stor4[arg1][19][arg2].field_768
    mem[64] = ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 736
    mem[ceil32(stor4[arg1][19][arg2][2].length) + 704] = stor4[arg1][19][arg2][4].length
    mem[0] = sha3(arg2, sha3(arg1, 4) + 19) + 4
    mem[ceil32(stor4[arg1][19][arg2][2].length) + 736] = stor4[arg1][19][arg2][4].field_0
    idx = ceil32(stor4[arg1][19][arg2][2].length) + 736
    s = 0
    while ceil32(stor4[arg1][19][arg2][2].length) + stor4[arg1][19][arg2][4].length + 704 > idx:
        mem[idx + 32] = stor4[arg1][19][arg2][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[512] = ceil32(stor4[arg1][19][arg2][2].length) + 704
    mem[544] = stor4[arg1][19][arg2].field_1280
    mem[576] = stor4[arg1][19][arg2].field_1536
    mem[608] = stor4[arg1][19][arg2].field_1792
    mem[640] = stor4[arg1][19][arg2].field_2048
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 736] = stor4[arg1][19][arg2].field_0
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 768] = stor4[arg1][19][arg2].field_256
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 832] = stor4[arg1][19][arg2].field_768
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 896] = stor4[arg1][19][arg2].field_1280
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 928] = stor4[arg1][19][arg2].field_1536
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 960] = stor4[arg1][19][arg2].field_1792
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 992] = stor4[arg1][19][arg2].field_2048
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 800] = 288
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 1024] = stor4[arg1][19][arg2][2].length
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 1056 len ceil32(stor4[arg1][19][arg2][2].length)] = mem[704 len ceil32(stor4[arg1][19][arg2][2].length)]
    mem[ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 864] = stor4[arg1][19][arg2][2].length + 320
    mem[stor4[arg1][19][arg2][2].length + ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 1056] = stor4[arg1][19][arg2][4].length
    mem[stor4[arg1][19][arg2][2].length + ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 1088 len ceil32(stor4[arg1][19][arg2][4].length)] = mem[ceil32(stor4[arg1][19][arg2][2].length) + 736 len ceil32(stor4[arg1][19][arg2][4].length)]
    if not stor4[arg1][19][arg2][4].length % 32:
        return stor4[arg1][19][arg2].field_0, 
               stor4[arg1][19][arg2].field_256,
               Array(len=stor4[arg1][19][arg2][2].length, data=mem[704 len ceil32(stor4[arg1][19][arg2][2].length)], mem[(2 * ceil32(stor4[arg1][19][arg2][2].length)) + ceil32(stor4[arg1][19][arg2][4].length) + 1056 len stor4[arg1][19][arg2][4].length + stor4[arg1][19][arg2][2].length + -ceil32(stor4[arg1][19][arg2][2].length) + 32]),
               stor4[arg1][19][arg2].field_768,
               stor4[arg1][19][arg2][2].length + 320,
               stor4[arg1][19][arg2].field_1280,
               stor4[arg1][19][arg2].field_1536,
               stor4[arg1][19][arg2].field_1792,
               stor4[arg1][19][arg2].field_2048
    mem[floor32(stor4[arg1][19][arg2][4].length) + stor4[arg1][19][arg2][2].length + ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + 1088] = mem[floor32(stor4[arg1][19][arg2][4].length) + stor4[arg1][19][arg2][2].length + ceil32(stor4[arg1][19][arg2][2].length) + ceil32(stor4[arg1][19][arg2][4].length) + -stor4[arg1][19][arg2][4].length % 32 + 1120 len stor4[arg1][19][arg2][4].length % 32]
    return stor4[arg1][19][arg2].field_0, 
           stor4[arg1][19][arg2].field_256,
           Array(len=stor4[arg1][19][arg2][2].length, data=mem[704 len ceil32(stor4[arg1][19][arg2][2].length)], mem[(2 * ceil32(stor4[arg1][19][arg2][2].length)) + ceil32(stor4[arg1][19][arg2][4].length) + 1056 len floor32(stor4[arg1][19][arg2][4].length) + stor4[arg1][19][arg2][2].length + -ceil32(stor4[arg1][19][arg2][2].length) + 64]),
           stor4[arg1][19][arg2].field_768,
           stor4[arg1][19][arg2][2].length + 320,
           stor4[arg1][19][arg2].field_1280,
           stor4[arg1][19][arg2].field_1536,
           stor4[arg1][19][arg2].field_1792,
           stor4[arg1][19][arg2].field_2048
}

function sub_744f6137(?) {
    require calldata.size - 4 >= 64
    if arg1 != stor4[arg1].field_0:
        revert with 0, 'oEste id no existe'
    if arg2 != stor4[arg1][20][arg2].field_256:
        revert with 0, 'oEste id no existe'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[32] = sha3(arg1, 4) + 20
    mem[320] = stor4[arg1][20][arg2].field_0
    mem[352] = stor4[arg1][20][arg2].field_256
    mem[544] = stor4[arg1][20][arg2][2].length
    mem[576] = stor4[arg1][20][arg2][2].field_0
    idx = 576
    s = 0
    while stor4[arg1][20][arg2][2].length + 544 > idx:
        mem[idx + 32] = stor4[arg1][20][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[384] = 544
    mem[ceil32(stor4[arg1][20][arg2][2].length) + 576] = stor4[arg1][20][arg2][3].length
    mem[ceil32(stor4[arg1][20][arg2][2].length) + 608] = stor4[arg1][20][arg2][3].field_0
    idx = ceil32(stor4[arg1][20][arg2][2].length) + 608
    s = 0
    while ceil32(stor4[arg1][20][arg2][2].length) + stor4[arg1][20][arg2][3].length + 576 > idx:
        mem[idx + 32] = stor4[arg1][20][arg2][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[416] = ceil32(stor4[arg1][20][arg2][2].length) + 576
    mem[448] = stor4[arg1][20][arg2].field_1024
    mem[64] = ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 640
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 608] = stor4[arg1][20][arg2][5].length
    mem[0] = sha3(arg2, sha3(arg1, 4) + 20) + 5
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640] = stor4[arg1][20][arg2][5].field_0
    idx = ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640
    s = 0
    while ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][5].length + 608 > idx:
        mem[idx + 32] = stor4[arg1][20][arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[480] = ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 608
    mem[512] = stor4[arg1][20][arg2].field_1536
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 640] = stor4[arg1][20][arg2].field_0
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 672] = stor4[arg1][20][arg2].field_256
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 768] = stor4[arg1][20][arg2].field_1024
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 832] = stor4[arg1][20][arg2].field_1536
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 704] = 224
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 864] = stor4[arg1][20][arg2][2].length
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 896 len ceil32(stor4[arg1][20][arg2][2].length)] = mem[576 len ceil32(stor4[arg1][20][arg2][2].length)]
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 736] = stor4[arg1][20][arg2][2].length + 256
    mem[stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 896] = stor4[arg1][20][arg2][3].length
    mem[stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 928 len ceil32(stor4[arg1][20][arg2][3].length)] = mem[ceil32(stor4[arg1][20][arg2][2].length) + 608 len ceil32(stor4[arg1][20][arg2][3].length)]
    if not stor4[arg1][20][arg2][3].length % 32:
        mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 800] = stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + 288
        mem[stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 928] = stor4[arg1][20][arg2][5].length
        mem[stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 960 len ceil32(stor4[arg1][20][arg2][5].length)] = mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640 len ceil32(stor4[arg1][20][arg2][5].length)]
        if not stor4[arg1][20][arg2][5].length % 32:
            return stor4[arg1][20][arg2].field_0, 
                   stor4[arg1][20][arg2].field_256,
                   Array(len=stor4[arg1][20][arg2][2].length, data=mem[576 len ceil32(stor4[arg1][20][arg2][2].length)], mem[(2 * ceil32(stor4[arg1][20][arg2][2].length)) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 896 len stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + -ceil32(stor4[arg1][20][arg2][2].length) + 32], stor4[arg1][20][arg2][5].length, mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640 len stor4[arg1][20][arg2][5].length]),
                   stor4[arg1][20][arg2][2].length + 256,
                   stor4[arg1][20][arg2].field_1024,
                   stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + 288,
                   stor4[arg1][20][arg2].field_1536
        mem[floor32(stor4[arg1][20][arg2][5].length) + stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 960] = mem[floor32(stor4[arg1][20][arg2][5].length) + stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + -stor4[arg1][20][arg2][5].length % 32 + 992 len stor4[arg1][20][arg2][5].length % 32]
        return stor4[arg1][20][arg2].field_0, 
               stor4[arg1][20][arg2].field_256,
               Array(len=stor4[arg1][20][arg2][2].length, data=mem[576 len ceil32(stor4[arg1][20][arg2][2].length)], mem[(2 * ceil32(stor4[arg1][20][arg2][2].length)) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 896 len stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + -ceil32(stor4[arg1][20][arg2][2].length) + 32], stor4[arg1][20][arg2][5].length, mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640 len ceil32(stor4[arg1][20][arg2][5].length)], mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + (2 * ceil32(stor4[arg1][20][arg2][5].length)) + stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + 960 len floor32(stor4[arg1][20][arg2][5].length) + -ceil32(stor4[arg1][20][arg2][5].length) + 32]),
               stor4[arg1][20][arg2][2].length + 256,
               stor4[arg1][20][arg2].field_1024,
               stor4[arg1][20][arg2][3].length + stor4[arg1][20][arg2][2].length + 288,
               stor4[arg1][20][arg2].field_1536
    mem[floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 928] = mem[floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + -stor4[arg1][20][arg2][3].length % 32 + 960 len stor4[arg1][20][arg2][3].length % 32]
    mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 800] = floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + 320
    mem[floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 960] = stor4[arg1][20][arg2][5].length
    mem[floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 992 len ceil32(stor4[arg1][20][arg2][5].length)] = mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640 len ceil32(stor4[arg1][20][arg2][5].length)]
    if not stor4[arg1][20][arg2][5].length % 32:
        return stor4[arg1][20][arg2].field_0, 
               stor4[arg1][20][arg2].field_256,
               Array(len=stor4[arg1][20][arg2][2].length, data=mem[576 len ceil32(stor4[arg1][20][arg2][2].length)], mem[(2 * ceil32(stor4[arg1][20][arg2][2].length)) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 896 len floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + -ceil32(stor4[arg1][20][arg2][2].length) + 64], stor4[arg1][20][arg2][5].length, mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640 len stor4[arg1][20][arg2][5].length]),
               stor4[arg1][20][arg2][2].length + 256,
               stor4[arg1][20][arg2].field_1024,
               floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + 320,
               stor4[arg1][20][arg2].field_1536
    mem[floor32(stor4[arg1][20][arg2][5].length) + floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 992] = mem[floor32(stor4[arg1][20][arg2][5].length) + floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + -stor4[arg1][20][arg2][5].length % 32 + 1024 len stor4[arg1][20][arg2][5].length % 32]
    return stor4[arg1][20][arg2].field_0, 
           stor4[arg1][20][arg2].field_256,
           Array(len=stor4[arg1][20][arg2][2].length, data=mem[576 len ceil32(stor4[arg1][20][arg2][2].length)], mem[(2 * ceil32(stor4[arg1][20][arg2][2].length)) + ceil32(stor4[arg1][20][arg2][3].length) + ceil32(stor4[arg1][20][arg2][5].length) + 896 len floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + -ceil32(stor4[arg1][20][arg2][2].length) + 64], stor4[arg1][20][arg2][5].length, mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + 640 len ceil32(stor4[arg1][20][arg2][5].length)], mem[ceil32(stor4[arg1][20][arg2][2].length) + ceil32(stor4[arg1][20][arg2][3].length) + (2 * ceil32(stor4[arg1][20][arg2][5].length)) + floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + 992 len floor32(stor4[arg1][20][arg2][5].length) + -ceil32(stor4[arg1][20][arg2][5].length) + 32]),
           stor4[arg1][20][arg2][2].length + 256,
           stor4[arg1][20][arg2].field_1024,
           floor32(stor4[arg1][20][arg2][3].length) + stor4[arg1][20][arg2][2].length + 320,
           stor4[arg1][20][arg2].field_1536
}



}
