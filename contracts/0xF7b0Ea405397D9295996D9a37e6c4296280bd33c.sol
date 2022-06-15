contract main {




// =====================  Runtime code  =====================


#
#  - sub_3537e402(?)
#  - sub_6017633f(?)
#
address stor1;

function _fallback() payable {
    revert
}

function sub_3f158ca5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _34 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)].length
    mem[0] = _34
    mem[ceil32(arg1.length) + 160] = stor[sha3(_34)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_34].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_34) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _67 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[mem[64] + 64 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not _67 % 32:
        return 32, mem[mem[64] + 32 len _67 + 32]
    mem[floor32(_67) + mem[64] + 64] = mem[floor32(_67) + mem[64] + -(_67 % 32) + 96 len _67 % 32]
    return 32, mem[mem[64] + 32 len floor32(_67) + 64]
}

function sub_05155d9a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
        require ext_code.size(stor1)
        staticcall stor1.0x4209fff1 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 271 len 21]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 0
    stor[sha3(sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length]))][] = Array(len=arg1.length, data=arg1[all])
}



}
