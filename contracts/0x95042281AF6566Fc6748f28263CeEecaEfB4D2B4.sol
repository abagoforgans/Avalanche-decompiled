contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f718bf4(?)
#
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

function sub_89486bad(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg6.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 192] = 0
    if stor0 != msg.sender:
        revert with 0, 'Caller is not admin'
    if stor2[arg1].field_256 == arg2:
        stor2[arg1].field_512 = arg3
        stor2[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor2[arg1][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        mem[32] = 2
        mem[0] = sha3(arg1, 2) + 5
        stor2[arg1][5][].field_0 = Array(len=arg6.length, data=arg6[all])
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256] = 160
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288] = arg4.length + 192
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _13775 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 224
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 480 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + _13775 + arg4.length + 288], arg1
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 448 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 256
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 512 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(_13775) + arg4.length + 320], arg1
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg4.length % 32) + 416 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288] = floor32(arg4.length) + 224
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _14015 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 256
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 512 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + _14015 + floor32(arg4.length) + 320], arg1
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 288
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 512 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 544 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(_14015) + floor32(arg4.length) + 352], arg1
    else:
        if stor3[arg2]:
            revert with 0, 'The name is taken'
        stor2[arg1].field_256 = arg2
        stor3[stor2[arg1].field_256] = 0
        stor3[arg2] = 1
        stor2[arg1].field_512 = arg3
        stor2[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor2[arg1][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        mem[32] = 2
        mem[0] = sha3(arg1, 2) + 5
        stor2[arg1][5][].field_0 = Array(len=arg6.length, data=arg6[all])
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg2
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = arg3
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256] = 160
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288] = arg4.length + 192
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _13910 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 224
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 256], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 480 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + _13910 + arg4.length + 288], arg1
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 448 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 256
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 288], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 512 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(_13910) + arg4.length + 320], arg1
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg4.length % 32) + 416 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288] = floor32(arg4.length) + 224
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            _14089 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 256
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 288], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 512 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + _14089 + floor32(arg4.length) + 320], arg1
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 480 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 288
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 512 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 320], arg1
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 512] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 544 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                    emit 0xf61f717a: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(_14089) + floor32(arg4.length) + 352], arg1
}



}
