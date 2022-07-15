contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 sub_f8fa73a1;
mapping of uint256 stor2;
mapping of uint8 stor3;
mapping of uint256 sub_7e7166f3;
mapping of uint256 stor5;

function sub_7e7166f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7e7166f3[arg1]
}

function sub_a81e9f79(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor3[arg1][arg2])
}

function sub_f8fa73a1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f8fa73a1[arg1]
}

function _fallback() payable {
    revert
}

function sub_50743bb9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor5[arg1]
}

function sub_addf027c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not sub_7e7166f3[address(arg1)]:
        sub_7e7166f3[address(arg1)] = 1
    stor3[address(msg.sender)][address(arg1)] = uint8(bool(arg2))
    emit 0xc2e532a1: bool(arg2), msg.sender, address(arg1)
}

function sub_1d414cbd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_f8fa73a1[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    sub_f8fa73a1[address(msg.sender)]++
    stor2[chainid][this.address][msg.sender][stor1[address(msg.sender)] + 1] = sha3(address(arg1), msg.sender, address(arg2))
    emit 0xd48d52c7: address(arg2), address(arg1), msg.sender, sha3(chainid, this.address, msg.sender, sub_f8fa73a1[address(msg.sender)] + 1)
}

function sub_3c7fe5e3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if stor2[arg1] != sha3(address(arg2), address(arg3), msg.sender):
        revert with 0, 'Invalid withdrawal fulfillment'
    stor2[arg1] = 0
    emit 0xadb4840b: msg.sender, msg.value, address(arg2), address(arg3), arg1
    call address(arg3) with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed'
}

function sub_52e41f99(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == Mask(32, 224, arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if sha3(address(arg2), msg.sender, address(arg3), uint32(arg4)) != stor5[arg1]:
        revert with 0, 'Invalid request fulfillment'
    stor5[arg1] = 0
    emit 0xc7143b22: Array(len=arg5.length, data=arg5[all]), address(arg2), arg1
}

function sub_acbe1800(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == Mask(32, 224, arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if not stor0[arg1].field_0:
        revert with 0, 'Template does not exist'
    if address(arg4) == this.address:
        revert with 0, 'Fulfill address AirnodeRrp'
    if not stor3[address(arg2)][address(msg.sender)]:
        revert with 0, 'Requester not sponsored'
    stor5[chainid][this.address][msg.sender][stor4[address(msg.sender)]][arg1][address(arg2)][address(arg3)][address(arg4)][uint32(arg5)][arg6[all]] = sha3(stor0[arg1].field_0, address(arg3), address(arg4), uint32(arg5))
    if sub_7e7166f3[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    sub_7e7166f3[address(msg.sender)]++
    emit 0xeb39930c: sub_7e7166f3[address(msg.sender)], chainid, msg.sender, arg1, address(arg2), address(arg3), address(arg4), Mask(32, 224, arg5), Array(len=arg6.length, data=arg6[all]), stor0[arg1].field_0, sha3(chainid, this.address, msg.sender, sub_7e7166f3[address(msg.sender)], arg1, address(arg2), address(arg3), address(arg4), uint32(arg5), arg6[all])
    return sha3(chainid, this.address, msg.sender, sub_7e7166f3[address(msg.sender)], arg1, address(arg2), address(arg3), address(arg4), uint32(arg5), arg6[all])
}

function sub_8a33be01(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = cd[100]
        mem[mem[64] + 100] = address(cd[132])
        mem[mem[64] + 132] = address(cd[164])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x5d51dbdc with:
                gas gas_remaining wei
               args cd[68], address(cd[36]), cd[100], address(cd[132]), address(cd[164])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if mem[_13]:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_6e6be03f(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == Mask(32, 224, arg6)
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if not address(arg1):
        revert with 0, 'Airnode address zero'
    if address(arg5) == this.address:
        revert with 0, 'Fulfill address AirnodeRrp'
    if not stor3[address(arg3)][address(msg.sender)]:
        revert with 0, 'Requester not sponsored'
    stor5[chainid][this.address][msg.sender][stor4[address(msg.sender)]][address(arg1)][arg2][address(arg3)][address(arg4)][address(arg5)][uint32(arg6)][arg7[all]] = sha3(address(arg1), address(arg4), address(arg5), uint32(arg6))
    if sub_7e7166f3[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    sub_7e7166f3[address(msg.sender)]++
    emit 0x3a52c462: sub_7e7166f3[address(msg.sender)], chainid, msg.sender, arg2, address(arg3), address(arg4), address(arg5), Mask(32, 224, arg6), Array(len=arg7.length, data=arg7[all]), address(arg1), sha3(chainid, this.address, msg.sender, sub_7e7166f3[address(msg.sender)], address(arg1), arg2, address(arg3), address(arg4), address(arg5), uint32(arg6), arg7[all])
    return sha3(chainid, this.address, msg.sender, sub_7e7166f3[address(msg.sender)], address(arg1), arg2, address(arg3), address(arg4), address(arg5), uint32(arg6), arg7[all])
}

function sub_32393f2b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not address(arg1):
        revert with 0, 'Airnode address zero'
    stor0[address(arg1)][arg2][arg3[all]].field_0 = address(arg1)
    stor0[address(arg1)][arg2][arg3[all]].field_256 = arg2
    if stor0[address(arg1)][arg2][arg3[all]].field_512:
        if stor0[address(arg1)][arg2][arg3[all]].field_512 == stor0[address(arg1)][arg2][arg3[all]].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor0[address(arg1)][arg2][arg3[all]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor0[address(arg1)][arg2][arg3[all]].field_512 = 0
            idx = 0
            while stor0[address(arg1)][arg2][arg3[all]].field_513 + 31 / 32 > idx:
                stor0[address(arg1)][arg2][arg3[all]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[address(arg1)][arg2][arg3[all]].field_512 == stor0[address(arg1)][arg2][arg3[all]].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor0[address(arg1)][arg2][arg3[all]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor0[address(arg1)][arg2][arg3[all]].field_512 = 0
            idx = 0
            while stor0[address(arg1)][arg2][arg3[all]].field_513 + 31 / 32 > idx:
                stor0[address(arg1)][arg2][arg3[all]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xba204bad: address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), sha3(address(arg1), arg2, arg3[all])
    return sha3(address(arg1), arg2, arg3[all])
}

function sub_0a631576(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor0[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor0[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor0[arg1].field_513), data=mem[128 len ceil32(stor0[arg1].field_513)])
    if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor0[arg1][2].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor0[arg1][2].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1].field_512, data=mem[128 len ceil32(stor0[arg1].field_513)])
}

function sub_1decbf18(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == Mask(32, 224, arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if sha3(address(arg2), msg.sender, address(arg3), uint32(arg4)) != stor5[arg1]:
        revert with 0, 'Invalid request fulfillment'
    mem[224 len arg6.length] = arg6[all]
    mem[arg6.length + 224] = 0
    mem[ceil32(arg6.length) + 256] = arg1
    mem[ceil32(arg6.length) + 288 len arg5.length] = arg5[all]
    mem[ceil32(arg6.length) + arg5.length + 288] = 0
    mem[ceil32(arg6.length) + 224] = arg5.length + 32
    if arg6.length == 65:
        if mem[256] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg6.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[256]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[256]) >> 255) + 27) != 27:
        if uint8((bool(mem[256]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg6.length) + 256 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 256 len -arg6.length + ceil32(arg6.length)]])), (bool(mem[256]) >> 255) + 27 << 248, mem[224], uint255(mem[256])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(arg2):
        revert with 0, 'Invalid signature'
    stor5[arg1] = 0
    mem[ceil32(arg6.length) + arg5.length + 544 len arg5.length] = arg5[all]
    mem[ceil32(arg6.length) + (2 * arg5.length) + 544] = 0
    mem[ceil32(arg6.length) + arg5.length + ceil32(arg5.length) + 544 len floor32(ceil32(arg5.length) + 131)] = uint32(arg4), arg1, 64, arg5.length, arg5[all], mem[ceil32(arg6.length) + (2 * arg5.length) + 544 len floor32(ceil32(arg5.length) + 131) + -arg5.length - 100]
    if floor32(ceil32(arg5.length) + 131) > ceil32(arg5.length) + 100:
        mem[ceil32(arg6.length) + arg5.length + (2 * ceil32(arg5.length)) + 644] = 0
    call address(arg3).mem[ceil32(arg6.length) + arg5.length + ceil32(arg5.length) + 544 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg6.length) + arg5.length + ceil32(arg5.length) + 548 len (2 * ceil32(arg5.length)) + 96]
    if not ext_call.success:
        emit 0xc7143b22: Array(len=31, data='Fulfillment failed unexpectedly'), address(arg2), arg1
    else:
        emit 0xc0977dab: Array(len=arg5.length, data=arg5[all]), address(arg2), arg1
    if not return_data.size:
        return bool(ext_call.success), 64, 64, address(arg2), msg.sender, address(arg3), uint32(arg4)
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_ca31d586(?) {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
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
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'Unequal parameter lengths'
    if ('cd', 68).length != ('cd', 132).length:
        revert with 0, 'Unequal parameter lengths'
    if ('cd', 68).length != ('cd', 164).length:
        revert with 0, 'Unequal parameter lengths'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            if idx >= ('cd', 164).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[164] + 36)] == address(cd[((32 * idx) + cd[164] + 36)])
            s = 0
            while s < ('cd', 4).length:
                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 36] = address(cd[36])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[100] + 36)]
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 132] = address(cd[((32 * idx) + cd[164] + 36)])
                require ext_code.size(address(cd[((32 * s) + cd[4] + 36)]))
                staticcall address(cd[((32 * s) + cd[4] + 36)]).0x5d51dbdc with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[68] + 36)], address(cd[36]), cd[((32 * idx) + cd[100] + 36)], address(cd[((32 * idx) + cd[132] + 36)]), address(cd[((32 * idx) + cd[164] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_58] == bool(mem[_58])
                if not mem[_58]:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _28 + (32 * _30) + -mem[64] + 64
    mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        if idx >= ('cd', 164).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[164] + 36)] == address(cd[((32 * idx) + cd[164] + 36)])
        s = 0
        while s < ('cd', 4).length:
            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64] + 36] = address(cd[36])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[100] + 36)]
            mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[mem[64] + 132] = address(cd[((32 * idx) + cd[164] + 36)])
            require ext_code.size(address(cd[((32 * s) + cd[4] + 36)]))
            staticcall address(cd[((32 * s) + cd[4] + 36)]).0x5d51dbdc with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[68] + 36)], address(cd[36]), cd[((32 * idx) + cd[100] + 36)], address(cd[((32 * idx) + cd[132] + 36)]), address(cd[((32 * idx) + cd[164] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_59] == bool(mem[_59])
            if not mem[_59]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _29 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _29 + (32 * _31) + -mem[64] + 64
}

function sub_76428c9b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[64] = (98 * ('cd', 4).length) + 192
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _292 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_292] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_292 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_292 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _292 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _292 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_292 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_292 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _292 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _292 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _292
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _300 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_300] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_300 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_300 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _300 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _300 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_300 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_300 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _300 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _300 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _300
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _256 = mem[64]
                mem[mem[64]] = 96
                _272 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _272:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_256 + 32] = (32 * _272) + 128
                _540 = mem[(32 * ('cd', 4).length) + 128]
                mem[_256 + (32 * _272) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_256 + (32 * _272) + 160 len 32 * _540] = mem[(32 * ('cd', 4).length) + 160 len 32 * _540]
                mem[_256 + 64] = (32 * _272) + (32 * _540) + 160
                _700 = mem[(64 * ('cd', 4).length) + 160]
                mem[_256 + (32 * _272) + (32 * _540) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _256 + (32 * _272) + (32 * _540) + (32 * _700) + 192
                u = _256 + (32 * _272) + (32 * _540) + 192
                while idx < _700:
                    mem[u] = t + -_256 + -(32 * _272) + -(32 * _540) - 192
                    _748 = mem[s]
                    _760 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _760:
                        mem[t + v + 32] = mem[_748 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_760) > _760:
                        mem[t + _760 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_760) + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * ('cd', 4).length) + 192] = 96
                s = (64 * ('cd', 4).length) + 192
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _548 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_548] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_548 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_548 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _548 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _548 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_548 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_548 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _548 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _548 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _548
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _552 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_552] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_552 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_552 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _552 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _552 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_552 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_552 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _552 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _552 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _552
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _512 = mem[64]
                mem[mem[64]] = 96
                _544 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _544:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _544) + 128
                _701 = mem[(32 * ('cd', 4).length) + 128]
                mem[_512 + (32 * _544) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_512 + (32 * _544) + 160 len 32 * _701] = mem[(32 * ('cd', 4).length) + 160 len 32 * _701]
                mem[_512 + 64] = (32 * _544) + (32 * _701) + 160
                _761 = mem[(64 * ('cd', 4).length) + 160]
                mem[_512 + (32 * _544) + (32 * _701) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _512 + (32 * _544) + (32 * _701) + (32 * _761) + 192
                u = _512 + (32 * _544) + (32 * _701) + 192
                while idx < _761:
                    mem[u] = t + -_512 + -(32 * _544) + -(32 * _701) - 192
                    _789 = mem[s]
                    _800 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _800:
                        mem[t + v + 32] = mem[_789 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_800) > _800:
                        mem[t + _800 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_800) + 32
                    u = u + 32
                    continue 
        else:
            mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[64] = (98 * ('cd', 4).length) + 192
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _294 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_294] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_294 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_294 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _294 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _294 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_294 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_294 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _294 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _294 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _294
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _301 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_301] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_301 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_301 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _301 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _301 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_301 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_301 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _301 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _301 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _301
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _259 = mem[64]
                mem[mem[64]] = 96
                _276 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _276:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_259 + 32] = (32 * _276) + 128
                _541 = mem[(32 * ('cd', 4).length) + 128]
                mem[_259 + (32 * _276) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_259 + (32 * _276) + 160 len 32 * _541] = mem[(32 * ('cd', 4).length) + 160 len 32 * _541]
                mem[_259 + 64] = (32 * _276) + (32 * _541) + 160
                _702 = mem[(64 * ('cd', 4).length) + 160]
                mem[_259 + (32 * _276) + (32 * _541) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _259 + (32 * _276) + (32 * _541) + (32 * _702) + 192
                u = _259 + (32 * _276) + (32 * _541) + 192
                while idx < _702:
                    mem[u] = t + -_259 + -(32 * _276) + -(32 * _541) - 192
                    _750 = mem[s]
                    _762 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _762:
                        mem[t + v + 32] = mem[_750 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_762) > _762:
                        mem[t + _762 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_762) + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * ('cd', 4).length) + 192] = 96
                s = (64 * ('cd', 4).length) + 192
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _549 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_549] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_549 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_549 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _549 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _549 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_549 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_549 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _549 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _549 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _549
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _553 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_553] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_553 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_553 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _553 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _553 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_553 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_553 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _553 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _553 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _553
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _519 = mem[64]
                mem[mem[64]] = 96
                _545 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _545:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_519 + 32] = (32 * _545) + 128
                _703 = mem[(32 * ('cd', 4).length) + 128]
                mem[_519 + (32 * _545) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_519 + (32 * _545) + 160 len 32 * _703] = mem[(32 * ('cd', 4).length) + 160 len 32 * _703]
                mem[_519 + 64] = (32 * _545) + (32 * _703) + 160
                _763 = mem[(64 * ('cd', 4).length) + 160]
                mem[_519 + (32 * _545) + (32 * _703) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _519 + (32 * _545) + (32 * _703) + (32 * _763) + 192
                u = _519 + (32 * _545) + (32 * _703) + 192
                while idx < _763:
                    mem[u] = t + -_519 + -(32 * _545) + -(32 * _703) - 192
                    _791 = mem[s]
                    _801 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _801:
                        mem[t + v + 32] = mem[_791 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_801) > _801:
                        mem[t + _801 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_801) + 32
                    u = u + 32
                    continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[64] = (98 * ('cd', 4).length) + 192
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _296 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_296] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_296 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_296 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _296 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _296 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_296 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_296 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _296 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _296 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _296
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _302 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_302] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_302 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_302 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _302 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _302 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_302 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_302 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _302 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _302 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _302
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _262 = mem[64]
                mem[mem[64]] = 96
                _280 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _280:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_262 + 32] = (32 * _280) + 128
                _542 = mem[(32 * ('cd', 4).length) + 128]
                mem[_262 + (32 * _280) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_262 + (32 * _280) + 160 len 32 * _542] = mem[(32 * ('cd', 4).length) + 160 len 32 * _542]
                mem[_262 + 64] = (32 * _280) + (32 * _542) + 160
                _704 = mem[(64 * ('cd', 4).length) + 160]
                mem[_262 + (32 * _280) + (32 * _542) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _262 + (32 * _280) + (32 * _542) + (32 * _704) + 192
                u = _262 + (32 * _280) + (32 * _542) + 192
                while idx < _704:
                    mem[u] = t + -_262 + -(32 * _280) + -(32 * _542) - 192
                    _752 = mem[s]
                    _764 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _764:
                        mem[t + v + 32] = mem[_752 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_764) > _764:
                        mem[t + _764 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_764) + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * ('cd', 4).length) + 192] = 96
                s = (64 * ('cd', 4).length) + 192
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _550 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_550] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_550 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_550 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _550 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _550 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_550 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_550 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _550 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _550 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _550
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _554 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_554] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_554 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_554 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _554 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _554 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_554 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_554 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _554 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _554 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _554
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _526 = mem[64]
                mem[mem[64]] = 96
                _546 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _546:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _546) + 128
                _705 = mem[(32 * ('cd', 4).length) + 128]
                mem[_526 + (32 * _546) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_526 + (32 * _546) + 160 len 32 * _705] = mem[(32 * ('cd', 4).length) + 160 len 32 * _705]
                mem[_526 + 64] = (32 * _546) + (32 * _705) + 160
                _765 = mem[(64 * ('cd', 4).length) + 160]
                mem[_526 + (32 * _546) + (32 * _705) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _526 + (32 * _546) + (32 * _705) + (32 * _765) + 192
                u = _526 + (32 * _546) + (32 * _705) + 192
                while idx < _765:
                    mem[u] = t + -_526 + -(32 * _546) + -(32 * _705) - 192
                    _793 = mem[s]
                    _802 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _802:
                        mem[t + v + 32] = mem[_793 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_802) > _802:
                        mem[t + _802 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_802) + 32
                    u = u + 32
                    continue 
        else:
            mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[64] = (98 * ('cd', 4).length) + 192
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _298 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_298] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_298 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_298 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _298 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _298 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_298 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_298 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _298 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _298 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _298
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _303 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_303] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_303 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_303 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _303 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _303 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_303 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_303 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _303 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _303 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _303
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _265 = mem[64]
                mem[mem[64]] = 96
                _284 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _284:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_265 + 32] = (32 * _284) + 128
                _543 = mem[(32 * ('cd', 4).length) + 128]
                mem[_265 + (32 * _284) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_265 + (32 * _284) + 160 len 32 * _543] = mem[(32 * ('cd', 4).length) + 160 len 32 * _543]
                mem[_265 + 64] = (32 * _284) + (32 * _543) + 160
                _706 = mem[(64 * ('cd', 4).length) + 160]
                mem[_265 + (32 * _284) + (32 * _543) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _265 + (32 * _284) + (32 * _543) + (32 * _706) + 192
                u = _265 + (32 * _284) + (32 * _543) + 192
                while idx < _706:
                    mem[u] = t + -_265 + -(32 * _284) + -(32 * _543) - 192
                    _754 = mem[s]
                    _766 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _766:
                        mem[t + v + 32] = mem[_754 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_766) > _766:
                        mem[t + _766 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_766) + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * ('cd', 4).length) + 192] = 96
                s = (64 * ('cd', 4).length) + 192
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_256
                    if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _551 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_551] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_551 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_551 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _551 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _551 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_551 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_551 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _551 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _551 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _551
                    else:
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                            revert with 'NH{q', 34
                        _555 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[cd[((32 * idx) + cd[4] + 36)]].field_513) + 32
                        mem[_555] = stor0[cd[((32 * idx) + cd[4] + 36)]].field_513
                        if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_555 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_555 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _555 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _555 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_512 == stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                if 31 >= stor0[cd[((32 * idx) + cd[4] + 36)]].field_513:
                                    mem[_555 + 32] = 256 * stor0[cd[((32 * idx) + cd[4] + 36)]].field_520
                                else:
                                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2
                                    mem[_555 + 32] = stor0[cd[((32 * idx) + cd[4] + 36)]][2].field_0
                                    s = _555 + 32
                                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 0) + 2)
                                    while _555 + stor0[cd[((32 * idx) + cd[4] + 36)]].field_513 > s:
                                        mem[s + 32] = sub_f8fa73a1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _555
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _533 = mem[64]
                mem[mem[64]] = 96
                _547 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 128
                while s < _547:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_533 + 32] = (32 * _547) + 128
                _707 = mem[(32 * ('cd', 4).length) + 128]
                mem[_533 + (32 * _547) + 128] = mem[(32 * ('cd', 4).length) + 128]
                mem[_533 + (32 * _547) + 160 len 32 * _707] = mem[(32 * ('cd', 4).length) + 160 len 32 * _707]
                mem[_533 + 64] = (32 * _547) + (32 * _707) + 160
                _767 = mem[(64 * ('cd', 4).length) + 160]
                mem[_533 + (32 * _547) + (32 * _707) + 160] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _533 + (32 * _547) + (32 * _707) + (32 * _767) + 192
                u = _533 + (32 * _547) + (32 * _707) + 192
                while idx < _767:
                    mem[u] = t + -_533 + -(32 * _547) + -(32 * _707) - 192
                    _795 = mem[s]
                    _803 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _803:
                        mem[t + v + 32] = mem[_795 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_803) > _803:
                        mem[t + _803 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_803) + 32
                    u = u + 32
                    continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
