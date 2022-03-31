contract main {




// =====================  Runtime code  =====================


const sub_4a6760b8(?) = 1

const sub_923e4f01(?) = 2

const getOrder = 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001


function _fallback() payable {
    revert
}

function sub_6495d679(?) {
    bn_add = bn256Add(arg1, arg2, arg3, arg4) 
    require bn256Add.result
    return bn_add, Mask(256, -256, bn_add) << 256
}

function sub_f8fd2e83(?) {
    bn_scalar_mul = bn256ScalarMul(1, 2, arg1) 
    require bn256ScalarMul.result
    return bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256
}

function sub_2dfb77cc(?) {
    bn_scalar_mul = bn256ScalarMul(arg1, arg2, arg3) 
    require bn256ScalarMul.result
    return bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256
}

function ecadd(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    bn_add = bn256Add(arg1, arg2, arg3, arg4) 
    require bn256Add.result
    return bn_add, Mask(256, -256, bn_add) << 256
}

function ecmul(uint256 arg1, uint256 arg2, uint256 arg3) {
    bn_scalar_mul = bn256ScalarMul(arg1, arg2, arg3) 
    require bn256ScalarMul.result
    return bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256
}

function sub_fb3941b4(?) {
    hash = sha256hash(arg1, arg2, arg3) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash
}

function sub_182f875c(?) {
    hash = sha256hash(arg6, arg4, arg5) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    bn_scalar_mul = bn256ScalarMul(1, 2, arg1) 
    require bn256ScalarMul.result
    bn_scalar_mul = bn256ScalarMul(arg2, arg3, hash % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001) 
    bn_add = bn256Add(arg4, arg5, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
    require bn256Add.result
    if bn_scalar_mul != bn_add:
        return (bn_scalar_mul == bn_add)
    return (Mask(256, -256, bn_scalar_mul) << 256 == Mask(256, -256, bn_add) << 256)
}



}
