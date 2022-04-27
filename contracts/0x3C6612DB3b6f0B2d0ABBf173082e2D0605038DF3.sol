contract main {




// =====================  Runtime code  =====================


#
#  - withdrawRewards(address arg1, string arg2)
#  - availableRewards(address arg1, string arg2)
#  - farmCut(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, string[] arg11)
#  - withdrawRewards(address arg1)
#  - withdrawRewards(address arg1, string[] arg2)
#  - farms()
#  - availableRewards(address arg1)
#
address stor1;
array of uint256 stor4;
array of uint256 stor6;
mapping of uint256 stor99;

function _fallback() payable {
    revert
}

function points(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg2.length)) + 97] = 5
    mem[ceil32(ceil32(arg2.length)) + 129] = 'farms'
    mem[ceil32(ceil32(arg2.length)) + 197] = 32
    mem[ceil32(ceil32(arg2.length)) + 229] = 5
    mem[ceil32(ceil32(arg2.length)) + 261] = 'farms'
    mem[ceil32(ceil32(arg2.length)) + 266] = 0
    mem[ceil32(ceil32(arg2.length)) + 161] = 100
    mem[ceil32(ceil32(arg2.length)) + 197 len 28] = 0
    mem[ceil32(ceil32(arg2.length)) + 193 len 4] = getId(string rg1)
    mem[ceil32(ceil32(arg2.length)) + 293 len 128] = getId(string rg1), 0, 0, 5, 'farms', 0, mem[ceil32(ceil32(arg2.length)) + 298 len 23]
    mem[ceil32(ceil32(arg2.length)) + 393] = 0
    staticcall this.address.mem[ceil32(ceil32(arg2.length)) + 293 len 4] with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(arg2.length)) + 297 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        return stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('add', 6, ('sha3', ('mem', ('range', 192, ('mem', ('range', 160, 32))))))))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 5) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]
    mem[ceil32(ceil32(arg2.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'getMappingId staticdelegate'
    return stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('add', 6, ('sha3', ('mem', ('range', ('add', 389, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('mem', ('range', ('add', 357, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))))))))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 5) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]
}

function repairFarm(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if stor1 != msg.sender:
        revert with 0, 'owner'
    mem[ceil32(ceil32(arg1.length)) + 97] = 5
    mem[ceil32(ceil32(arg1.length)) + 129] = 'farms'
    mem[ceil32(ceil32(arg1.length)) + 197] = 32
    mem[ceil32(ceil32(arg1.length)) + 229] = 5
    mem[ceil32(ceil32(arg1.length)) + 261] = 'farms'
    mem[ceil32(ceil32(arg1.length)) + 266] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 100
    mem[ceil32(ceil32(arg1.length)) + 197 len 28] = 0
    mem[ceil32(ceil32(arg1.length)) + 193 len 4] = getId(string rg1)
    mem[ceil32(ceil32(arg1.length)) + 293 len 128] = getId(string rg1), 0, 0, 5, 'farms', 0, mem[ceil32(ceil32(arg1.length)) + 298 len 23]
    mem[ceil32(ceil32(arg1.length)) + 393] = 0
    staticcall this.address.mem[ceil32(ceil32(arg1.length)) + 293 len 4] with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(arg1.length)) + 297 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 5))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, ('add', 5, ('sha3', ('mem', ('range', 192, ('mem', ('range', 160, 32))))))))] = 0
        stor6[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 5))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, ('add', 5, ('sha3', ('mem', ('range', 192, ('mem', ('range', 160, 32))))))))] = 0
    else:
        mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 5))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, ('add', 5, ('sha3', ('mem', ('range', ('add', 389, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mem', ('range', ('add', 357, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32))))))))] = 0
        stor6[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 5))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, ('add', 5, ('sha3', ('mem', ('range', ('add', 389, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), ('mem', ('range', ('add', 357, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32))))))))] = 0
}



}
