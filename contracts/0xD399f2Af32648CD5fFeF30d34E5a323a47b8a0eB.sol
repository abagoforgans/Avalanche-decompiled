contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of struct stor2;
mapping of address sub_73591e0c;
array of struct stor4;
array of struct stor5;
address stor6;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_73591e0c(?) {
    require calldata.size - 4 >= 32
    return sub_73591e0c[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9cf516e3(?) {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function getWallets(address arg1) {
    require calldata.size - 4 >= 32
    if stor0[address(arg1)].field_0:
        mem[128] = stor0[address(arg1)].field_0
        if (32 * stor0[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor0[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor0[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor0[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor0[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor0[address(arg1)].field_0) + 160] = stor0[address(arg1)].field_0
    mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
    return memory
      from (32 * stor0[address(arg1)].field_0) + 128
       len (96 * stor0[address(arg1)].field_0) + 64
}

function sub_40fe3150(?) {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
        mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
        return memory
          from (32 * stor2[address(arg1)].field_0) + 128
           len (96 * stor2[address(arg1)].field_0) + 64
    mem[128] = stor2[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor2[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
    return Array(len=stor2[address(arg1)].field_0, data=mem[128 len floor32(stor2[address(arg1)].field_0)], mem[(32 * stor2[address(arg1)].field_0) + floor32(stor2[address(arg1)].field_0) + 192 len (32 * stor2[address(arg1)].field_0) - floor32(stor2[address(arg1)].field_0)]), 
}

function sub_579a58db(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)].field_0:
        mem[(32 * stor1[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor1[address(arg1)].field_0) + 160] = stor1[address(arg1)].field_0
        mem[(32 * stor1[address(arg1)].field_0) + 192 len floor32(stor1[address(arg1)].field_0)] = mem[128 len floor32(stor1[address(arg1)].field_0)]
        return memory
          from (32 * stor1[address(arg1)].field_0) + 128
           len (96 * stor1[address(arg1)].field_0) + 64
    mem[128] = stor1[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor1[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor1[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[address(arg1)].field_0) + 192 len floor32(stor1[address(arg1)].field_0)] = mem[128 len floor32(stor1[address(arg1)].field_0)]
    return Array(len=stor1[address(arg1)].field_0, data=mem[128 len floor32(stor1[address(arg1)].field_0)], mem[(32 * stor1[address(arg1)].field_0) + floor32(stor1[address(arg1)].field_0) + 192 len (32 * stor1[address(arg1)].field_0) - floor32(stor1[address(arg1)].field_0)]), 
}

function sub_3882dbda(?) payable {
    require calldata.size - 4 >= 32
    stor0[msg.sender].field_0++
    stor0[msg.sender][stor0[msg.sender].field_0].field_0 = arg1
    stor1[msg.sender].field_0++
    stor1[msg.sender][stor1[msg.sender].field_0].field_0 = 0
    require ext_code.size(arg1)
    call arg1.0x7c7dc252 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(arg1)].field_0++
    stor2[address(arg1)][stor2[address(arg1)].field_0].field_0 = msg.sender or Mask(96, 160, stor2[address(arg1)][stor2[address(arg1)].field_0].field_0)
    sub_73591e0c[msg.sender] = arg1
    if msg.value:
        call stor6 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.0x9c8549fb with:
             gas gas_remaining wei
            args msg.sender, msg.value, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xde85ee8d: address(arg1), Array(len=7, data='Trailer'), msg.sender, block.timestamp
}

function sub_da64d1a3(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 17943] = code.data[2831 len 17943]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 18103] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 18135] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 18167] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 18199] = this.address
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 18231] = 224
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 18327] = stor4.length
    if not stor4.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 18263] = 256
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 18359] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 18391 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 18295] = arg3.length + 288
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 18391] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 18423 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 18263]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 18423] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 18455 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 18295]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 18391] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 18423 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 18295] = floor32(arg3.length) + 320
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 18423] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 18455 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 18295]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 18455] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 18487 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 18327]
    else:
        mem[0] = 4
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 18359] = address(stor4.field_0)
        idx = ceil32(arg3.length) + ceil32(arg4.length) + 18359
        s = 0
        while ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18359 > idx + 32:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 18263] = (32 * stor4.length) + 256
        mem[ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18359] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18391 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 18295] = arg3.length + (32 * stor4.length) + 288
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18391] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18423 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + (32 * stor4.length) + 18263]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18423] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 18455 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + (32 * stor4.length) + 18295]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18391] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + -(arg3.length % 32) + 18423 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 18295] = floor32(arg3.length) + (32 * stor4.length) + 320
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18423] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18455 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + (32 * stor4.length) + 18295]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + 18455] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * stor4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 18487 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + (32 * stor4.length) + 18327]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[msg.sender].field_0++
    stor0[msg.sender][stor0[msg.sender].field_0].field_0 = address(create.new_address)
    stor1[msg.sender].field_0++
    stor1[msg.sender][stor1[msg.sender].field_0].field_0 = 1
    stor5.length++
    stor36B6[stor5.length] = address(create.new_address)
    if not msg.value:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(create.new_address)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 128
        emit 0xde85ee8d: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) + -arg4.length + 32], msg.sender, block.timestamp, 6, 'Leader'
    else:
        call stor6 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x9c8549fb with:
             gas gas_remaining wei
            args msg.sender, msg.value, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xde85ee8d: 0, uint128(create.new_address) << 96, 128, msg.sender, block.timestamp, 6, 'Leader'
}



}
