contract main {




// =====================  Runtime code  =====================


const getProxyId = Mask(32, 224, sha3(0xfe53746174696343616c6c28616464726573732c62797465732c62797465733332))


function _fallback() payable {
    revert
}

function transferFrom(bytes arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if 4 > arg1.length:
        revert with 0, 'FROM_LESS_THAN_TO_REQUIRED'
    if arg1.length > arg1.length:
        revert with 0, 'TO_LESS_THAN_LENGTH_REQUIRED'
    mem[100] = arg1.length - 4
    require arg1.length - 4 >= 96
    _8 = mem[132]
    require mem[164] <= 4294967296
    require mem[164] + 68 <= arg1.length + 32
    require arg1.length + 32 >= mem[mem[164] + 132] + mem[164] + 68 and mem[mem[164] + 132] <= 4294967296
    _11 = mem[196]
    _13 = mem[mem[164] + 132]
    mem[ceil32(arg1.length) + 128 len floor32(mem[mem[164] + 132])] = mem[mem[164] + 164 len floor32(mem[mem[164] + 132])]
    mem[ceil32(arg1.length) + floor32(mem[mem[164] + 132]) + -(mem[mem[164] + 132] % 32) + 160 len mem[mem[164] + 132] % 32] = mem[mem[164] + -(mem[mem[164] + 132] % 32) + floor32(mem[mem[164] + 132]) + 196 len mem[mem[164] + 132] % 32]
    staticcall address(_8) with:
         funct Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256
            gas gas_remaining wei
           args mem[ceil32(arg1.length) + 132 len _13 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len Mask(32, 224, arg1.length) >> 224, Mask(224, 32, arg1.length - 4) >> 32
        if sha3(mem[128 len Mask(32, 224, arg1.length) >> 224, Mask(224, 32, arg1.length - 4) >> 32]) != _11:
            revert with 0, 'UNEXPECTED_STATIC_CALL_RESULT'
    else:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sha3(ext_call.return_data[0 len return_data.size]) != _11:
            revert with 0, 'UNEXPECTED_STATIC_CALL_RESULT'
}



}
