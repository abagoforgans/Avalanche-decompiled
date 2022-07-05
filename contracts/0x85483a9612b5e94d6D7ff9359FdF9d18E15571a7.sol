contract main {




// =====================  Runtime code  =====================


address sub_8ecb72d1Address;

function sub_8ecb72d1(?) payable {
    return sub_8ecb72d1Address
}

function _fallback() payable {
    revert
}

function sub_6342993e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 352
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ('cd', 36)[7] == uint8(('cd', 36)[7])
    require ('cd', 36)[8] == uint8(('cd', 36)[8])
    require ('cd', 36)[9] <= test266151307()
    require cd[36] + ('cd', 36)[9] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[9] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 449 < 448 or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 449 > test266151307():
        revert with 0, 65
    mem[448] = cd[(cd[36] + ('cd', 36)[9] + 4)]
    require cd[36] + ('cd', 36)[9] + cd[(cd[36] + ('cd', 36)[9] + 4)] + 36 <= calldata.size
    mem[480 len cd[(cd[36] + ('cd', 36)[9] + 4)]] = call.data[cd[36] + ('cd', 36)[9] + 36 len cd[(cd[36] + ('cd', 36)[9] + 4)]]
    if address(('cd', 36).length) != address(cd[4]):
        revert with 0, '!msg_sender'
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 481] = address(cd[4])
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 501] = Mask(160, 96, sub_8ecb72d1Address)
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 521] = address(('cd', 36)[0])
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 541] = ('cd', 36)[2]
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[9] + 4)])) + 449] = 274
    if 65 == cd[(cd[36] + ('cd', 36)[9] + 4)]:
        if mem[512] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if cd[(cd[36] + ('cd', 36)[9] + 4)] != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[512]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[512]) >> 255) + 27) != 27:
        if uint8((bool(mem[512]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(cd[4]), sub_8ecb72d1Address, address(('cd', 36)[0]), ('cd', 36)[2], address(('cd', 36)[1]), ('cd', 36)[3], ('cd', 36)[4], uint8(('cd', 36)[7]), uint8(('cd', 36)[8]), ('cd', 36)[5], ('cd', 36)[6], chainid)), (bool(mem[512]) >> 255) + 27 << 248, mem[480], uint255(mem[512])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return address(signer), chainid
}



}
