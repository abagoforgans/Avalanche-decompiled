contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;

function sub_a8134be2(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_fe255a18(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function sub_a8cbe885(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not admin'
    stor4[arg1] = 1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor0 = arg1
}

function sub_ab6c4bbc(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Caller is not admin'
    stor2[arg1].field_0 = arg2
    emit 0x4cf353d2: arg2, arg1
}

function sub_1f718bf4(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 2
    mem[96] = stor2[arg1][3].length
    mem[128] = stor2[arg1][3].field_0
    idx = 128
    s = 0
    while stor2[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor2[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 160
    mem[ceil32(stor2[arg1][3].length) + 128] = stor2[arg1][4].length
    mem[0] = sha3(arg1, 2) + 4
    mem[ceil32(stor2[arg1][3].length) + 160] = stor2[arg1][4].field_0
    idx = ceil32(stor2[arg1][3].length) + 160
    s = 0
    while ceil32(stor2[arg1][3].length) + stor2[arg1][4].length + 128 > idx:
        mem[idx + 32] = stor2[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 160] = stor2[arg1].field_0
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 192] = stor2[arg1].field_256
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 224] = stor2[arg1].field_512
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 320] = stor2[arg1].field_1280
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 256] = 192
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 352] = stor2[arg1][3].length
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 384 len ceil32(stor2[arg1][3].length)] = mem[128 len ceil32(stor2[arg1][3].length)]
    mem[ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 288] = stor2[arg1][3].length + 224
    mem[stor2[arg1][3].length + ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 384] = stor2[arg1][4].length
    mem[stor2[arg1][3].length + ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 416 len ceil32(stor2[arg1][4].length)] = mem[ceil32(stor2[arg1][3].length) + 160 len ceil32(stor2[arg1][4].length)]
    if not stor2[arg1][4].length % 32:
        return stor2[arg1].field_0, 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               Array(len=stor2[arg1][3].length, data=mem[128 len ceil32(stor2[arg1][3].length)], mem[(2 * ceil32(stor2[arg1][3].length)) + ceil32(stor2[arg1][4].length) + 384 len stor2[arg1][4].length + stor2[arg1][3].length + -ceil32(stor2[arg1][3].length) + 32]),
               stor2[arg1][3].length + 224,
               stor2[arg1].field_1280
    mem[floor32(stor2[arg1][4].length) + stor2[arg1][3].length + ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + 416] = mem[floor32(stor2[arg1][4].length) + stor2[arg1][3].length + ceil32(stor2[arg1][3].length) + ceil32(stor2[arg1][4].length) + -stor2[arg1][4].length % 32 + 448 len stor2[arg1][4].length % 32]
    return stor2[arg1].field_0, 
           stor2[arg1].field_256,
           stor2[arg1].field_512,
           Array(len=stor2[arg1][3].length, data=mem[128 len ceil32(stor2[arg1][3].length)], mem[(2 * ceil32(stor2[arg1][3].length)) + ceil32(stor2[arg1][4].length) + 384 len floor32(stor2[arg1][4].length) + stor2[arg1][3].length + -ceil32(stor2[arg1][3].length) + 64]),
           stor2[arg1][3].length + 224,
           stor2[arg1].field_1280
}

function sub_59fdd013(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 160
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    if stor0 != msg.sender:
        revert with 0, 'Caller is not admin'
    if stor2[arg1].field_256 != arg2:
        if stor3[arg2]:
            revert with 0, 'The name is taken'
        stor2[arg1].field_256 = arg2
        stor3[stor2[arg1].field_256] = 0
        stor3[arg2] = 1
    stor2[arg1].field_512 = arg3
    stor2[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor2[arg1][4][].field_0 = Array(len=arg5.length, data=arg5[all])
    mem[0] = arg1
    mem[32] = 2
    stor2[arg1].field_1280 = arg6
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg6
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 160
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg4.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg4.length + 192
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 352] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 384 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
            emit 0x6a94e339: mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 224], arg1
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 416 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            emit 0x6a94e339: mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 256], arg1
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = floor32(arg4.length) + 224
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
            emit 0x6a94e339: mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 256], arg1
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 448 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            emit 0x6a94e339: mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 288], arg1
}



}
