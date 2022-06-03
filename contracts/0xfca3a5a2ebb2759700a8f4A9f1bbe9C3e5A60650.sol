contract main {




// =====================  Runtime code  =====================


const sub_317fc677(?) = 0x42b3867400000000000000000000000000000000000000000000000000000000

const EIP1271_MAGIC_VALUE = 0x1626ba7e00000000000000000000000000000000000000000000000000000000


function _fallback() payable {
    revert
}

function isValidSignature(bytes32 arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[196] = arg3.length
    mem[228 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 100)] = isValidSignature(bytes32 arg1, bytes arg2), arg1, 64, mem[196 len floor32(ceil32(arg3.length) + 100) - 68]
    staticcall arg2 with:
         funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(arg3.length) + 100) - 4, -(8 * floor32(ceil32(arg3.length) + 100)) + 256, mem[196 len floor32(ceil32(arg3.length) + 100) - 68]) << (8 * floor32(ceil32(arg3.length) + 100)) - 256, mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 100) + 228 len ceil32(arg3.length) + -floor32(ceil32(arg3.length) + 100) + 100]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'EIP1271_SIGNATURE_ERROR'
        if ceil32(arg3.length) + 100 != 32:
            revert with 0, 'EIP1271_SIGNATURE_ERROR'
        mem[ceil32(arg3.length) + 228] = 0x42b3867400000000000000000000000000000000000000000000000000000000
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 260 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'EIP1271_SIGNATURE_ERROR'
    if return_data.size != 32:
        revert with 0, 'EIP1271_SIGNATURE_ERROR'
    if Mask(32, 224, mem[ceil32(arg3.length) + 260]) != 0x1626ba7e00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'EIP1271_SIGNATURE_ERROR'
    return 0x42b3867400000000000000000000000000000000000000000000000000000000
}



}
