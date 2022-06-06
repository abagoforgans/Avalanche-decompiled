contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 stor1;
array of struct stor2;
array of address stor3;
mapping of uint8 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    revert
}

function follow(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    uint256(stor3[address(msg.sender)])++
    address(stor3[address(msg.sender)][uint256(stor3[address(msg.sender)])]) = arg1
}

function tweet(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if bool(stor4[address(msg.sender)][address(msg.sender)]) != 1:
        revert with 0, 'Operator not authorized'
    stor0[stor5].field_0 = stor5
    stor0[stor5].field_256 = msg.sender
    stor0[stor5][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor5].field_768 = block.timestamp
    stor1[address(msg.sender)]++
    stor1[address(msg.sender)][stor1[address(msg.sender)]] = stor5
    emit 0x8d6b17b3: stor5, Array(len=arg1.length, data=arg1[all]), block.timestamp, msg.sender
    stor5++
}

function sub_c6bc463c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if bool(stor4[address(arg1)][address(msg.sender)]) != 1:
        revert with 0, 'Operator not authorized'
    stor0[stor5].field_0 = stor5
    stor0[stor5].field_256 = address(arg1)
    stor0[stor5][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[stor5].field_768 = block.timestamp
    stor1[address(arg1)]++
    stor1[address(arg1)][stor1[address(arg1)]] = stor5
    emit 0x8d6b17b3: stor5, Array(len=arg2.length, data=arg2[all]), block.timestamp, address(arg1)
    stor5++
}

function sub_c48d6d5e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if bool(stor4[address(msg.sender)][address(msg.sender)]) != 1:
        revert with 0, 'Operator not authorized'
    stor2[msg.sender + address(arg2)].field_0++
    stor2[msg.sender + address(arg2)][stor2[msg.sender + address(arg2)].field_0].field_0 = stor6
    stor[sha3((5 * stor2[msg.sender + address(arg2)].field_0) + ('map', ('add', 'msg.sender', ('mask_shl', 160, 0, 0, ('param', 'arg2'))), ('name', 'stor2', 2)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[msg.sender + address(arg2)][stor2[msg.sender + address(arg2)].field_0].field_512 = msg.sender
    stor2[msg.sender + address(arg2)][stor2[msg.sender + address(arg2)].field_0].field_768 = address(arg2)
    stor2[msg.sender + address(arg2)][stor2[msg.sender + address(arg2)].field_0].field_1024 = block.timestamp
    emit 0x53227a5b: stor6, Array(len=arg1.length, data=arg1[all]), block.timestamp, msg.sender, address(arg2)
    stor6++
}

function sub_179a21e8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if bool(stor4[address(arg2)][address(msg.sender)]) != 1:
        revert with 0, 'Operator not authorized'
    stor2[address(arg2) + address(arg3)].field_0++
    stor2[address(arg2) + address(arg3)][stor2[address(arg2) + address(arg3)].field_0].field_0 = stor6
    stor[sha3((5 * stor2[address(arg2) + address(arg3)].field_0) + ('map', ('add', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg3'))), ('name', 'stor2', 2)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[address(arg2) + address(arg3)][stor2[address(arg2) + address(arg3)].field_0].field_512 = address(arg2)
    stor2[address(arg2) + address(arg3)][stor2[address(arg2) + address(arg3)].field_0].field_768 = address(arg3)
    stor2[address(arg2) + address(arg3)][stor2[address(arg2) + address(arg3)].field_0].field_1024 = block.timestamp
    emit 0x53227a5b: stor6, Array(len=arg1.length, data=arg1[all]), block.timestamp, address(arg2), address(arg3)
    stor6++
}

function sub_4dc0a687(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too few or too many tweets to return'
    if arg1 > stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too few or too many tweets to return'
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        idx = stor5 - arg1
        while idx < stor5:
            mem[0] = idx
            mem[32] = 0
            _44 = mem[64]
            mem[64] = mem[64] + 128
            mem[_44] = stor0[idx].field_0
            mem[_44 + 32] = stor0[idx].field_256
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[idx][2].length) + 32
            mem[_45] = stor0[idx][2].length
            mem[0] = sha3(idx, 0) + 2
            mem[_45 + 32] = stor0[idx][2].field_0
            s = _45 + 32
            t = sha3(mem[0])
            while _45 + stor0[s][2].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_44 + 64] = _45
            mem[_44 + 96] = stor0[s].field_768
            require _45 + floor32(stor0[s][2].length - 1) + 32 < mem[96]
            mem[(32 * _45 + floor32(stor0[s][2].length - 1) + 32) + 128] = _44
            s = _45 + floor32(stor0[s][2].length - 1) + 33
            continue 
        _47 = mem[64]
        mem[mem[64]] = 32
        _51 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _51:
            mem[u] = t + -_47 - 64
            _81 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_81 + 44 len 20]
            _95 = mem[_81 + 64]
            mem[t + 64] = 128
            _96 = mem[_95]
            mem[t + 128] = mem[_95]
            v = 0
            while v < _96:
                mem[t + v + 160] = mem[_95 + v + 32]
                v = v + 32
                continue 
            if ceil32(_96) > _96:
                mem[t + _96 + 160] = 0
            mem[t + 96] = mem[_81 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_96) + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1) + 256
        mem[(32 * arg1) + 128] = 0
        mem[(32 * arg1) + 160] = 0
        mem[(32 * arg1) + 192] = 96
        mem[(32 * arg1) + 224] = 0
        mem[var20001] = (32 * arg1) + 128
        s = var20001
        idx = var20002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * arg1) + 128] = 0
            mem[(32 * arg1) + 160] = 0
            mem[(32 * arg1) + 192] = 96
            mem[(32 * arg1) + 224] = 0
            mem[s + 32] = (32 * arg1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = stor5 - arg1
        while idx < stor5:
            mem[0] = idx
            mem[32] = 0
            _111 = mem[64]
            mem[64] = mem[64] + 128
            mem[_111] = stor0[idx].field_0
            mem[_111 + 32] = stor0[idx].field_256
            _112 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[idx][2].length) + 32
            mem[_112] = stor0[idx][2].length
            mem[0] = sha3(idx, 0) + 2
            mem[_112 + 32] = stor0[idx][2].field_0
            s = _112 + 32
            t = sha3(mem[0])
            while _112 + stor0[s][2].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_111 + 64] = _112
            mem[_111 + 96] = stor0[s].field_768
            require _112 + floor32(stor0[s][2].length - 1) + 32 < mem[96]
            mem[(32 * _112 + floor32(stor0[s][2].length - 1) + 32) + 128] = _111
            s = _112 + floor32(stor0[s][2].length - 1) + 33
            continue 
        _113 = mem[64]
        mem[mem[64]] = 32
        _117 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _117:
            mem[u] = t + -_113 - 64
            _130 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_130 + 44 len 20]
            _135 = mem[_130 + 64]
            mem[t + 64] = 128
            _136 = mem[_135]
            mem[t + 128] = mem[_135]
            v = 0
            while v < _136:
                mem[t + v + 160] = mem[_135 + v + 32]
                v = v + 32
                continue 
            if ceil32(_136) > _136:
                mem[t + _136 + 160] = 0
            mem[t + 96] = mem[_130 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_136) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_5b4d4214(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[0] = address(arg1)
    mem[32] = 1
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too few or too many tweets to return'
    if arg2 > stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too few or too many tweets to return'
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        idx = stor1[address(arg1)] - arg2
        while idx < stor1[address(arg1)]:
            mem[0] = stor1[address(arg1)][idx]
            mem[32] = 0
            _50 = mem[64]
            mem[64] = mem[64] + 128
            mem[_50] = stor0[stor1[address(arg1)][idx]].field_0
            mem[_50 + 32] = stor0[stor1[address(arg1)][idx]].field_256
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[stor1[address(arg1)][idx]][2].length) + 32
            mem[_51] = stor0[stor1[address(arg1)][idx]][2].length
            mem[0] = sha3(stor1[address(arg1)][idx], 0) + 2
            mem[_51 + 32] = stor0[stor1[address(arg1)][idx]][2].field_0
            s = _51 + 32
            t = sha3(mem[0])
            while _51 + stor0[stor1[address(arg1)][s]][2].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_50 + 64] = _51
            mem[_50 + 96] = stor0[stor1[address(arg1)][s]].field_768
            require _51 + floor32(stor0[stor1[address(arg1)][s]][2].length - 1) + 32 < mem[96]
            mem[(32 * _51 + floor32(stor0[stor1[address(arg1)][s]][2].length - 1) + 32) + 128] = _50
            s = _51 + floor32(stor0[stor1[address(arg1)][s]][2].length - 1) + 33
            continue 
        _47 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _54:
            mem[u] = t + -_47 - 64
            _86 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_86 + 44 len 20]
            _101 = mem[_86 + 64]
            mem[t + 64] = 128
            _102 = mem[_101]
            mem[t + 128] = mem[_101]
            v = 0
            while v < _102:
                mem[t + v + 160] = mem[_101 + v + 32]
                v = v + 32
                continue 
            if ceil32(_102) > _102:
                mem[t + _102 + 160] = 0
            mem[t + 96] = mem[_86 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_102) + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg2) + 256
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[(32 * arg2) + 192] = 96
        mem[(32 * arg2) + 224] = 0
        mem[var29001] = (32 * arg2) + 128
        s = var29001
        idx = var29002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 96
            mem[(32 * arg2) + 224] = 0
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = stor1[address(arg1)] - arg2
        while idx < stor1[address(arg1)]:
            mem[0] = stor1[address(arg1)][idx]
            mem[32] = 0
            _119 = mem[64]
            mem[64] = mem[64] + 128
            mem[_119] = stor0[stor1[address(arg1)][idx]].field_0
            mem[_119 + 32] = stor0[stor1[address(arg1)][idx]].field_256
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[stor1[address(arg1)][idx]][2].length) + 32
            mem[_120] = stor0[stor1[address(arg1)][idx]][2].length
            mem[0] = sha3(stor1[address(arg1)][idx], 0) + 2
            mem[_120 + 32] = stor0[stor1[address(arg1)][idx]][2].field_0
            s = _120 + 32
            t = sha3(mem[0])
            while _120 + stor0[stor1[address(arg1)][s]][2].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_119 + 64] = _120
            mem[_119 + 96] = stor0[stor1[address(arg1)][s]].field_768
            require _120 + floor32(stor0[stor1[address(arg1)][s]][2].length - 1) + 32 < mem[96]
            mem[(32 * _120 + floor32(stor0[stor1[address(arg1)][s]][2].length - 1) + 32) + 128] = _119
            s = _120 + floor32(stor0[stor1[address(arg1)][s]][2].length - 1) + 33
            continue 
        _116 = mem[64]
        mem[mem[64]] = 32
        _123 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _123:
            mem[u] = t + -_116 - 64
            _137 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_137 + 44 len 20]
            _142 = mem[_137 + 64]
            mem[t + 64] = 128
            _143 = mem[_142]
            mem[t + 128] = mem[_142]
            v = 0
            while v < _143:
                mem[t + v + 160] = mem[_142 + v + 32]
                v = v + 32
                continue 
            if ceil32(_143) > _143:
                mem[t + _143 + 160] = 0
            mem[t + 96] = mem[_137 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_143) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
