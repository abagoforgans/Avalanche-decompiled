contract main {




// =====================  Runtime code  =====================


#
#  - sub_22778929(?)
#  - sub_4c798338(?)
#
mapping of struct stor0;
array of address stor1;
array of struct stor2;
mapping of address stor99;

function _fallback() payable {
    revert
}

function sub_e1a24fc7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = address(stor1[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_0ea4cbd1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = stor0[arg1[all]].field_0
    mem[ceil32(arg1.length) + 160] = stor0[arg1[all]].field_256
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           stor0[arg1[all]].field_512
}

function sub_3742b081(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if not arg1.length:
        revert with 0, 'NO_VALUE'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    if not stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 'NO_DOMAIN_DATA'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] != msg.sender:
        revert with 0, 'FORBIDDEN'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = address(arg2)
}

function sub_7f109dd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    if not arg1.length:
        revert with 0, 'NO_VALUE'
    if not arg1.length:
        revert with 0, 'NO_VALUE'
    mem[ceil32(arg1.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 384] = stor[mem[(2 * ceil32(arg1.length)) + 512 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]
    mem[ceil32(arg1.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 416] = address(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mem', ('range', ('add', 512, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))])
    mem[ceil32(arg1.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 448] = stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mem', ('range', ('add', 512, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))].field_0
    mem[ceil32(arg1.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 512] = 1
    mem[ceil32(arg1.length) + 480] = stor[mem[(2 * ceil32(arg1.length)) + 512 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]
    mem[ceil32(arg1.length) + 512] = mem[ceil32(arg1.length) + 396 len 20]
    mem[ceil32(arg1.length) + 544] = mem[ceil32(arg1.length) + 428 len 20]
    mem[ceil32(arg1.length) + 576] = mem[ceil32(arg1.length) + 460 len 20]
    mem[ceil32(arg1.length) + 608] = mem[ceil32(arg1.length) + 492 len 20]
    return memory
      from ceil32(arg1.length) + 512
       len 128
}

function sub_440df4f4(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                revert with 'NH{q', 34
            _20 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_1)) + 32
            mem[_20] = uint255(stor2[idx].field_1)
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor2[idx].field_1):
                    if 31 >= uint255(stor2[idx].field_1):
                        mem[_20 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                    else:
                        mem[0] = sha3(2) + idx
                        mem[_20 + 32] = uint256(stor2[idx].field_0)
                        t = _20 + 32
                        u = sha3(mem[0])
                        while _20 + uint255(stor2[idx].field_1) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_1 % 128:
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1 % 128:
                mem[_20 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_20 + 32] = uint256(stor2[idx].field_0)
            t = _20 + 32
            u = sha3(mem[0])
            while _20 + stor2[u].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
        mem[_22] = stor2[idx].field_1 % 128
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor2[idx].field_1):
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor2[idx].field_1):
                mem[_22 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_22 + 32] = uint256(stor2[idx].field_0)
            t = _22 + 32
            u = sha3(mem[0])
            while _22 + uint255(stor2[u].field_1) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _22
            t = t + 32
            u = u + 1
            continue 
        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2[idx].field_1 % 128:
            if 31 >= stor2[idx].field_1 % 128:
                mem[_22 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
            else:
                mem[0] = sha3(2) + idx
                mem[_22 + 32] = uint256(stor2[idx].field_0)
                t = _22 + 32
                u = sha3(mem[0])
                while _22 + stor2[idx].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _22
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _17:
        mem[t] = u + -_16 - 64
        _28 = mem[s]
        _29 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _29:
            mem[v + u + 32] = mem[v + _28 + 32]
            v = v + 32
            continue 
        if ceil32(_29) > _29:
            mem[u + _29 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_29) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_be9c46d8(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require calldata.size - 36 >= 96
    if not bool(ceil32(arg1.length) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require arg2 == address(arg2)
    mem[ceil32(arg1.length) + 128] = arg2
    require arg3 == address(arg3)
    mem[ceil32(arg1.length) + 160] = arg3
    require arg4 == address(arg4)
    if not arg1.length:
        revert with 0, 'NO_VALUE'
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 224] = 0
    if stor[mem[(2 * ceil32(arg1.length)) + 224 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]:
        mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + 224] = 0
        if stor[mem[(2 * ceil32(arg1.length)) + 224 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] != msg.sender:
            revert with 0, 'FORBIDDEN'
    else:
        stor2.length++
        if bool(stor2[stor2.length].field_0):
            if bool(stor2[stor2.length].field_0) == uint255(stor2[stor2.length].field_1) < 32:
                revert with 'NH{q', 34
            if arg1.length:
                uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
            else:
                uint256(stor2[stor2.length].field_0) = 0
                idx = 0
                while uint255(stor2[stor2.length].field_1) + 31 / 32 > idx:
                    uint256(stor2[stor2.length + idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
            else:
                uint256(stor2[stor2.length].field_0) = 0
                idx = 0
                while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor2[stor2.length + idx].field_0) = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 224] = 0
    stor[mem[(2 * ceil32(arg1.length)) + 224 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = address(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 224] = 0
    address(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mem', ('range', ('add', 224, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))]) = address(arg3)
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 224] = 0
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mem', ('range', ('add', 224, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))].field_0 = address(arg4)
}



}
