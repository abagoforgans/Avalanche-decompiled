contract main {




// =====================  Runtime code  =====================


#
#  - sub_90c3bc3f(?)
#  - sub_d2df0733(?)
#  - decodeOrdersFromFillData(bytes arg1)
#
uint256 EIP712_COORDINATOR_DOMAIN_HASH;
uint256 EIP712_EXCHANGE_DOMAIN_HASH;

function EIP712_EXCHANGE_DOMAIN_HASH() payable {
    return EIP712_EXCHANGE_DOMAIN_HASH
}

function EIP712_COORDINATOR_DOMAIN_HASH() payable {
    return EIP712_COORDINATOR_DOMAIN_HASH
}

function _fallback() payable {
    revert
}

function getSignerAddress(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if arg2.length <= 0:
        revert with 0, 'LENGTH_GREATER_THAN_0_REQUIRED'
    if arg2.length <= 0:
        revert with 0, 'GREATER_THAN_ZERO_LENGTH_REQUIRED'
    require arg2.length - 1 < arg2.length
    revert with 0, 'SIGNATURE_ILLEGAL'
}

function sub_23872f55(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 96
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 224 >= 192 and ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 224 <= test266151307()
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 224] = 0x213c6f636f3ea94e701c0adf9b2624aa45a6c694f9a292c094f9a81c24b5df4c
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 256] = ('cd', 4).length
    return 0, 
           Mask(240, 0, sha3(0, EIP712_EXCHANGE_DOMAIN_HASH, sha3(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 256 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])], ('cd', 4).length, address(('cd', 4)[0]), sha3(call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]))))
}

function sub_48a321d6(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 256 >= 224 and ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 256 <= test266151307()
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 256] = 0x2fbcdbaa76bc7589916958ae919dfbef04d23f6bbf26de6ff317b32c6cc01e05
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 288] = ('cd', 4).length
    return 0, 
           Mask(240, 0, sha3(0, EIP712_COORDINATOR_DOMAIN_HASH, sha3(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 288 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])], ('cd', 4).length, ('cd', 4)[0], sha3(call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]), ('cd', 4)[2])))
}



}
