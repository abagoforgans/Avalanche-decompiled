contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_3f43df1e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return sha3(address(arg1), address(arg2), arg3[all], arg4)
}

function sub_d9d650f0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = address(arg1)
    mem[ceil32(arg5.length) + 180] = address(arg2)
    mem[ceil32(arg5.length) + 200 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg5.length) + 200] = arg4
    mem[ceil32(arg5.length) + 128] = arg3.length + 72
    if not -arg5.length + 65:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if -arg5.length + 64:
        revert with 0, 'ECDSA: invalid signature length'
    if 27 > !(bool(mem[160]) >> 255):
        revert with 0, 17
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return address(signer)
}

function sub_8e6db307(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    require cd[36] == address(cd[36])
    require ('cd', 4).length == address(('cd', 4).length)
    if address(('cd', 4).length) != address(cd[36]):
        revert with 0, 'VS::invalid-to'
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if address(('cd', 4)[0]) != msg.sender:
        revert with 0, 'VS::invalid-for'
    staticcall msg.sender.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 4)[2] != ext_call.return_data[0]:
        revert with 0, 'VS::invalid-nonce'
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[1] + 4)]
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[ceil32(return_data.size) + 128 len cd[(cd[4] + ('cd', 4)[3] + 4)]] = call.data[cd[4] + ('cd', 4)[3] + 36 len cd[(cd[4] + ('cd', 4)[3] + 4)]]
    mem[ceil32(return_data.size) + cd[(cd[4] + ('cd', 4)[3] + 4)] + 128] = 0
    mem[ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 160] = address(('cd', 4).length)
    mem[ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 180] = address(('cd', 4)[0])
    mem[ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 200 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 200] = ('cd', 4)[2]
    mem[ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[1] + 4)] + 72
    _15 = sha3(mem[ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 160 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + cd[(cd[4] + ('cd', 4)[3] + 4)] + 32, 0, 0), mem[ceil32(return_data.size) + cd[(cd[4] + ('cd', 4)[3] + 4)] + 160 len -cd[(cd[4] + ('cd', 4)[3] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)])]])
    if not -cd[(cd[4] + ('cd', 4)[3] + 4)] + 65:
        if mem[ceil32(return_data.size) + 160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if -cd[(cd[4] + ('cd', 4)[3] + 4)] + 64:
        revert with 0, 'ECDSA: invalid signature length'
    if 27 > !(bool(mem[ceil32(return_data.size) + 160]) >> 255):
        revert with 0, 17
    if uint255(mem[ceil32(return_data.size) + 160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[ceil32(return_data.size) + 160]) >> 255) + 27) != 27:
        if uint8((bool(mem[ceil32(return_data.size) + 160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 388] = uint8((bool(mem[ceil32(return_data.size) + 160]) >> 255) + 27)
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 420] = mem[ceil32(return_data.size) + 128]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 452] = uint255(mem[ceil32(return_data.size) + 160])
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _15), (bool(mem[ceil32(return_data.size) + 160]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + 128], uint255(mem[ceil32(return_data.size) + 160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    staticcall msg.sender.0xa1ebf35d with:
            gas gas_remaining wei
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(return_data.size) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 356] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (2 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 360] = ext_call.return_data[0]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (2 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 392] = address(signer)
    staticcall msg.sender.0x91d14854 with:
            gas gas_remaining wei
           args mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (2 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 360 len ceil32(return_data.size) + 64]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (2 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 356] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (4 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (4 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 360] = 32
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (4 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 392] = 18
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + (4 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 424] = 0x56533a3a696e76616c69642d7369676e65720000000000000000000000000000
    revert with memory
      from cd[(cd[4] + ('cd', 4)[1] + 4)] + (4 * ceil32(return_data.size)) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 356
       len (5 * ceil32(return_data.size)) + 100
}



}
