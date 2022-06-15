contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_329c66d0(?) payable {
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

function sub_44fac155(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
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
    mem[0] = sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])
    stor[sha3(sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length]))][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        emit 0x40e47162: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 64]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + 224] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 256 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        emit 0x40e47162: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96]
}

function sub_5b03cd1d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
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
    if ext_call.return_data[0]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1) and mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
        _1808 = sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])
        mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor[sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])].length) + 192
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor[sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])].length
        mem[0] = sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = stor[sha3(sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length]))]
        idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + stor[_1808].length + 160 > idx:
            mem[idx + 32] = stor[s + sha3(_1808) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        if 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len 28] >= 1:
            _3684 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            _3686 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not _3686 % 32:
                mem[mem[64] + 32] = _3686 + 96
                mem[_3686 + _3684 + 96] = arg1.length
                mem[_3686 + _3684 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xa6d056a8: mem[mem[64] len arg1.length + _3686 + _3684 + -mem[64] + 128]
                else:
                    mem[floor32(arg1.length) + _3686 + _3684 + 128] = mem[floor32(arg1.length) + _3686 + _3684 + -(arg1.length % 32) + 160 len arg1.length % 32]
                    emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _3686 + _3684 + -mem[64] + 160]
            else:
                mem[floor32(_3686) + mem[64] + 96] = mem[floor32(_3686) + mem[64] + -(_3686 % 32) + 128 len _3686 % 32]
                mem[mem[64] + 32] = floor32(_3686) + 128
                mem[floor32(_3686) + _3684 + 128] = arg1.length
                mem[floor32(_3686) + _3684 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_3686) + _3684 + -mem[64] + 160]
                else:
                    mem[floor32(arg1.length) + floor32(_3686) + _3684 + 160] = mem[floor32(arg1.length) + floor32(_3686) + _3684 + -(arg1.length % 32) + 192 len arg1.length % 32]
                    emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_3686) + _3684 + -mem[64] + 192]
        else:
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(stor1)
            staticcall stor1.0x24d7806c with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                _3771 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
                mem[mem[64] + _3771] = 0
                _5305 = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3771])
                mem[0] = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3771])
                stor[sha3(_5305)][] = Array(len=arg1.length, data=arg1[all])
                mem[mem[64]] = 32
                mem[mem[64] + 32] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _8648 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _8648 % 32:
                    emit 0x40e47162: 32, mem[mem[64] + 32 len _8648 + 32]
                    _9905 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _9907 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _9907 % 32:
                        mem[mem[64] + 32] = _9907 + 96
                        mem[_9907 + _9905 + 96] = arg1.length
                        mem[_9907 + _9905 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _9907 + _9905 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _9907 + _9905 + 128] = mem[floor32(arg1.length) + _9907 + _9905 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _9907 + _9905 + -mem[64] + 160]
                    else:
                        mem[floor32(_9907) + mem[64] + 96] = mem[floor32(_9907) + mem[64] + -(_9907 % 32) + 128 len _9907 % 32]
                        mem[mem[64] + 32] = floor32(_9907) + 128
                        mem[floor32(_9907) + _9905 + 128] = arg1.length
                        mem[floor32(_9907) + _9905 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_9907) + _9905 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_9907) + _9905 + 160] = mem[floor32(arg1.length) + floor32(_9907) + _9905 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_9907) + _9905 + -mem[64] + 192]
                else:
                    mem[floor32(_8648) + mem[64] + 64] = mem[floor32(_8648) + mem[64] + -(_8648 % 32) + 96 len _8648 % 32]
                    emit 0x40e47162: 32, mem[mem[64] + 32 len floor32(_8648) + 64]
                    _10027 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _10029 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _10029 % 32:
                        mem[mem[64] + 32] = _10029 + 96
                        mem[_10029 + _10027 + 96] = arg1.length
                        mem[_10029 + _10027 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _10029 + _10027 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _10029 + _10027 + 128] = mem[floor32(arg1.length) + _10029 + _10027 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _10029 + _10027 + -mem[64] + 160]
                    else:
                        mem[floor32(_10029) + mem[64] + 96] = mem[floor32(_10029) + mem[64] + -(_10029 % 32) + 128 len _10029 % 32]
                        mem[mem[64] + 32] = floor32(_10029) + 128
                        mem[floor32(_10029) + _10027 + 128] = arg1.length
                        mem[floor32(_10029) + _10027 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_10029) + _10027 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_10029) + _10027 + 160] = mem[floor32(arg1.length) + floor32(_10029) + _10027 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_10029) + _10027 + -mem[64] + 192]
            else:
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(stor1)
                staticcall stor1.0x4209fff1 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                                mem[mem[64] + 111 len 21]
                _3931 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
                mem[mem[64] + _3931] = 0
                _5311 = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3931])
                mem[0] = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3931])
                stor[sha3(_5311)][] = Array(len=arg1.length, data=arg1[all])
                mem[mem[64]] = 32
                mem[mem[64] + 32] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _8657 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _8657 % 32:
                    emit 0x40e47162: 32, mem[mem[64] + 32 len _8657 + 32]
                    _9917 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _9919 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _9919 % 32:
                        mem[mem[64] + 32] = _9919 + 96
                        mem[_9919 + _9917 + 96] = arg1.length
                        mem[_9919 + _9917 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _9919 + _9917 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _9919 + _9917 + 128] = mem[floor32(arg1.length) + _9919 + _9917 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _9919 + _9917 + -mem[64] + 160]
                    else:
                        mem[floor32(_9919) + mem[64] + 96] = mem[floor32(_9919) + mem[64] + -(_9919 % 32) + 128 len _9919 % 32]
                        mem[mem[64] + 32] = floor32(_9919) + 128
                        mem[floor32(_9919) + _9917 + 128] = arg1.length
                        mem[floor32(_9919) + _9917 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_9919) + _9917 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_9919) + _9917 + 160] = mem[floor32(arg1.length) + floor32(_9919) + _9917 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_9919) + _9917 + -mem[64] + 192]
                else:
                    mem[floor32(_8657) + mem[64] + 64] = mem[floor32(_8657) + mem[64] + -(_8657 % 32) + 96 len _8657 % 32]
                    emit 0x40e47162: 32, mem[mem[64] + 32 len floor32(_8657) + 64]
                    _10034 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _10036 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _10036 % 32:
                        mem[mem[64] + 32] = _10036 + 96
                        mem[_10036 + _10034 + 96] = arg1.length
                        mem[_10036 + _10034 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _10036 + _10034 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _10036 + _10034 + 128] = mem[floor32(arg1.length) + _10036 + _10034 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _10036 + _10034 + -mem[64] + 160]
                    else:
                        mem[floor32(_10036) + mem[64] + 96] = mem[floor32(_10036) + mem[64] + -(_10036 % 32) + 128 len _10036 % 32]
                        mem[mem[64] + 32] = floor32(_10036) + 128
                        mem[floor32(_10036) + _10034 + 128] = arg1.length
                        mem[floor32(_10036) + _10034 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_10036) + _10034 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_10036) + _10034 + 160] = mem[floor32(arg1.length) + floor32(_10036) + _10034 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_10036) + _10034 + -mem[64] + 192]
    else:
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
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1) and mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
        _1813 = sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])
        mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor[sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])].length) + 192
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor[sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])].length
        mem[0] = sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = stor[sha3(sha3(0, ext_call.return_data[4 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length]))]
        idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + stor[_1813].length + 160 > idx:
            mem[idx + 32] = stor[s + sha3(_1813) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        if 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len 28] >= 1:
            _3689 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            _3691 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not _3691 % 32:
                mem[mem[64] + 32] = _3691 + 96
                mem[_3691 + _3689 + 96] = arg1.length
                mem[_3691 + _3689 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xa6d056a8: mem[mem[64] len arg1.length + _3691 + _3689 + -mem[64] + 128]
                else:
                    mem[floor32(arg1.length) + _3691 + _3689 + 128] = mem[floor32(arg1.length) + _3691 + _3689 + -(arg1.length % 32) + 160 len arg1.length % 32]
                    emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _3691 + _3689 + -mem[64] + 160]
            else:
                mem[floor32(_3691) + mem[64] + 96] = mem[floor32(_3691) + mem[64] + -(_3691 % 32) + 128 len _3691 % 32]
                mem[mem[64] + 32] = floor32(_3691) + 128
                mem[floor32(_3691) + _3689 + 128] = arg1.length
                mem[floor32(_3691) + _3689 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_3691) + _3689 + -mem[64] + 160]
                else:
                    mem[floor32(arg1.length) + floor32(_3691) + _3689 + 160] = mem[floor32(arg1.length) + floor32(_3691) + _3689 + -(arg1.length % 32) + 192 len arg1.length % 32]
                    emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_3691) + _3689 + -mem[64] + 192]
        else:
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(stor1)
            staticcall stor1.0x24d7806c with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                _3800 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
                mem[mem[64] + _3800] = 0
                _5326 = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3800])
                mem[0] = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3800])
                stor[sha3(_5326)][] = Array(len=arg1.length, data=arg1[all])
                mem[mem[64]] = 32
                mem[mem[64] + 32] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _8694 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _8694 % 32:
                    emit 0x40e47162: 32, mem[mem[64] + 32 len _8694 + 32]
                    _9977 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _9979 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _9979 % 32:
                        mem[mem[64] + 32] = _9979 + 96
                        mem[_9979 + _9977 + 96] = arg1.length
                        mem[_9979 + _9977 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _9979 + _9977 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _9979 + _9977 + 128] = mem[floor32(arg1.length) + _9979 + _9977 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _9979 + _9977 + -mem[64] + 160]
                    else:
                        mem[floor32(_9979) + mem[64] + 96] = mem[floor32(_9979) + mem[64] + -(_9979 % 32) + 128 len _9979 % 32]
                        mem[mem[64] + 32] = floor32(_9979) + 128
                        mem[floor32(_9979) + _9977 + 128] = arg1.length
                        mem[floor32(_9979) + _9977 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_9979) + _9977 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_9979) + _9977 + 160] = mem[floor32(arg1.length) + floor32(_9979) + _9977 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_9979) + _9977 + -mem[64] + 192]
                else:
                    mem[floor32(_8694) + mem[64] + 64] = mem[floor32(_8694) + mem[64] + -(_8694 % 32) + 96 len _8694 % 32]
                    emit 0x40e47162: 32, mem[mem[64] + 32 len floor32(_8694) + 64]
                    _10049 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _10051 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _10051 % 32:
                        mem[mem[64] + 32] = _10051 + 96
                        mem[_10051 + _10049 + 96] = arg1.length
                        mem[_10051 + _10049 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _10051 + _10049 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _10051 + _10049 + 128] = mem[floor32(arg1.length) + _10051 + _10049 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _10051 + _10049 + -mem[64] + 160]
                    else:
                        mem[floor32(_10051) + mem[64] + 96] = mem[floor32(_10051) + mem[64] + -(_10051 % 32) + 128 len _10051 % 32]
                        mem[mem[64] + 32] = floor32(_10051) + 128
                        mem[floor32(_10051) + _10049 + 128] = arg1.length
                        mem[floor32(_10051) + _10049 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_10051) + _10049 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_10051) + _10049 + 160] = mem[floor32(arg1.length) + floor32(_10051) + _10049 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_10051) + _10049 + -mem[64] + 192]
            else:
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(stor1)
                staticcall stor1.0x4209fff1 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe796f7520646f206e6f7420686176652074686520726967687420746f20646f207468697320616374696f,
                                mem[mem[64] + 111 len 21]
                _3972 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
                mem[mem[64] + _3972] = 0
                _5332 = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3972])
                mem[0] = sha3(ext_call.return_data[0], mem[mem[64] + 32 len _3972])
                stor[sha3(_5332)][] = Array(len=arg1.length, data=arg1[all])
                mem[mem[64]] = 32
                mem[mem[64] + 32] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _8703 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _8703 % 32:
                    emit 0x40e47162: 32, mem[mem[64] + 32 len _8703 + 32]
                    _9989 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _9991 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _9991 % 32:
                        mem[mem[64] + 32] = _9991 + 96
                        mem[_9991 + _9989 + 96] = arg1.length
                        mem[_9991 + _9989 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _9991 + _9989 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _9991 + _9989 + 128] = mem[floor32(arg1.length) + _9991 + _9989 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _9991 + _9989 + -mem[64] + 160]
                    else:
                        mem[floor32(_9991) + mem[64] + 96] = mem[floor32(_9991) + mem[64] + -(_9991 % 32) + 128 len _9991 % 32]
                        mem[mem[64] + 32] = floor32(_9991) + 128
                        mem[floor32(_9991) + _9989 + 128] = arg1.length
                        mem[floor32(_9991) + _9989 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_9991) + _9989 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_9991) + _9989 + 160] = mem[floor32(arg1.length) + floor32(_9991) + _9989 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_9991) + _9989 + -mem[64] + 192]
                else:
                    mem[floor32(_8703) + mem[64] + 64] = mem[floor32(_8703) + mem[64] + -(_8703 % 32) + 96 len _8703 % 32]
                    emit 0x40e47162: 32, mem[mem[64] + 32 len floor32(_8703) + 64]
                    _10056 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    _10058 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _10058 % 32:
                        mem[mem[64] + 32] = _10058 + 96
                        mem[_10058 + _10056 + 96] = arg1.length
                        mem[_10058 + _10056 + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + _10058 + _10056 + -mem[64] + 128]
                        else:
                            mem[floor32(arg1.length) + _10058 + _10056 + 128] = mem[floor32(arg1.length) + _10058 + _10056 + -(arg1.length % 32) + 160 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + _10058 + _10056 + -mem[64] + 160]
                    else:
                        mem[floor32(_10058) + mem[64] + 96] = mem[floor32(_10058) + mem[64] + -(_10058 % 32) + 128 len _10058 % 32]
                        mem[mem[64] + 32] = floor32(_10058) + 128
                        mem[floor32(_10058) + _10056 + 128] = arg1.length
                        mem[floor32(_10058) + _10056 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            emit 0xa6d056a8: mem[mem[64] len arg1.length + floor32(_10058) + _10056 + -mem[64] + 160]
                        else:
                            mem[floor32(arg1.length) + floor32(_10058) + _10056 + 160] = mem[floor32(arg1.length) + floor32(_10058) + _10056 + -(arg1.length % 32) + 192 len arg1.length % 32]
                            emit 0xa6d056a8: mem[mem[64] len floor32(arg1.length) + floor32(_10058) + _10056 + -mem[64] + 192]
}



}
