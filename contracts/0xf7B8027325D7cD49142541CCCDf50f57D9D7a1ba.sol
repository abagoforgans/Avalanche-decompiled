contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9219fd5eAddress;
array of struct sub_187e8055;
array of struct sub_9de31651;
array of struct sub_860d93e8;
array of struct sub_c5ef0dbc;
mapping of uint8 stor6;
mapping of struct stor7;

function sub_187e8055(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_187e8055.length
    return sub_187e8055[arg1].field_0
}

function sub_5db7f50f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_860d93e8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_860d93e8[arg1].field_0
    return sub_860d93e8[arg1][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_9219fd5e(?) payable {
    return sub_9219fd5eAddress
}

function sub_9de31651(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_9de31651[arg1].field_0
    return sub_9de31651[arg1][arg2].field_0
}

function sub_c5ef0dbc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_c5ef0dbc[arg1].field_0
    return sub_c5ef0dbc[arg1][arg2].field_0
}

function sub_f1cfc070(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_536fb920(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9219fd5eAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a140d699(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'Only Our Battles can do this!'
    if bool(stor6[address(arg2)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Battle address was not generated by Battles Factory'
    sub_c5ef0dbc[address(arg1)].field_0++
    sub_c5ef0dbc[address(arg1)][sub_c5ef0dbc[address(arg1)].field_0].field_0 = address(arg2)
}

function sub_e969c286(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'Only Our Battles can do this!'
    if bool(stor6[address(arg2)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Battle address was not generated by Battles Factory'
    sub_860d93e8[address(arg1)].field_0++
    sub_860d93e8[address(arg1)][sub_860d93e8[address(arg1)].field_0].field_0 = address(arg2)
}

function sub_af91da44(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if sub_9219fd5eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Battles Factory Contract can do this!'
    sub_9de31651[address(arg1)].field_0++
    sub_9de31651[address(arg1)][sub_9de31651[address(arg1)].field_0].field_0 = address(arg4)
    sub_860d93e8[address(arg2)].field_0++
    sub_860d93e8[address(arg2)][sub_860d93e8[address(arg2)].field_0].field_0 = address(arg4)
    sub_860d93e8[address(arg3)].field_0++
    sub_860d93e8[address(arg3)][sub_860d93e8[address(arg3)].field_0].field_0 = address(arg4)
    sub_187e8055.length++
    sub_187e8055[sub_187e8055.length].field_0 = address(arg4)
    stor6[address(arg4)] = 1
}

function sub_2b60a2e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9de31651[address(arg1)].field_0:
        mem[128] = sub_9de31651[address(arg1)].field_0
        if (32 * sub_9de31651[address(arg1)].field_0) + 32 > 64:
            mem[160] = sub_9de31651[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * sub_9de31651[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_9de31651[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_9de31651[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_9de31651[address(arg1)].field_0) + 160] = sub_9de31651[address(arg1)].field_0
    idx = 0
    s = (32 * sub_9de31651[address(arg1)].field_0) + 192
    t = 128
    while idx < sub_9de31651[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * sub_9de31651[address(arg1)].field_0) + 128
       len (96 * sub_9de31651[address(arg1)].field_0) + 64
}

function sub_526707d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_860d93e8[address(arg1)].field_0:
        mem[128] = sub_860d93e8[address(arg1)].field_0
        if (32 * sub_860d93e8[address(arg1)].field_0) + 32 > 64:
            mem[160] = sub_860d93e8[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * sub_860d93e8[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_860d93e8[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_860d93e8[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_860d93e8[address(arg1)].field_0) + 160] = sub_860d93e8[address(arg1)].field_0
    idx = 0
    s = (32 * sub_860d93e8[address(arg1)].field_0) + 192
    t = 128
    while idx < sub_860d93e8[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * sub_860d93e8[address(arg1)].field_0) + 128
       len (96 * sub_860d93e8[address(arg1)].field_0) + 64
}

function sub_8578219d(?) payable {
    mem[64] = (32 * sub_187e8055.length) + 128
    mem[96] = sub_187e8055.length
    if not sub_187e8055.length:
        mem[(32 * sub_187e8055.length) + 128] = 32
        mem[(32 * sub_187e8055.length) + 160] = sub_187e8055.length
        idx = 0
        s = (32 * sub_187e8055.length) + 192
        t = 128
        while idx < sub_187e8055.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_187e8055.length) + 128
           len (96 * sub_187e8055.length) + 64
    mem[128] = address(sub_187e8055.field_0)
    idx = 128
    s = 0
    while (32 * sub_187e8055.length) + 96 > idx:
        mem[idx + 32] = sub_187e8055[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_187e8055.length) + 128] = 32
    mem[(32 * sub_187e8055.length) + 160] = sub_187e8055.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_187e8055.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_187e8055.length) + -mem[64] + 192
}

function sub_bc34ceef(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[arg1].field_0 = 0
            idx = 0
            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor7[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[arg1].field_0 = 0
            idx = 0
            while stor7[arg1].field_1 + 31 / 32 > idx:
                stor7[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_130f3715(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * sub_c5ef0dbc[address(arg1)].field_0) + 128
    mem[96] = sub_c5ef0dbc[address(arg1)].field_0
    if not sub_c5ef0dbc[address(arg1)].field_0:
        mem[(32 * sub_c5ef0dbc[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_c5ef0dbc[address(arg1)].field_0) + 160] = sub_c5ef0dbc[address(arg1)].field_0
        idx = 0
        s = (32 * sub_c5ef0dbc[address(arg1)].field_0) + 192
        t = 128
        while idx < sub_c5ef0dbc[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_c5ef0dbc[address(arg1)].field_0) + 128
           len (96 * sub_c5ef0dbc[address(arg1)].field_0) + 64
    mem[128] = sub_c5ef0dbc[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_c5ef0dbc[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_c5ef0dbc[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_c5ef0dbc[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_c5ef0dbc[address(arg1)].field_0) + 160] = sub_c5ef0dbc[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_c5ef0dbc[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_c5ef0dbc[address(arg1)].field_0) + -mem[64] + 192
}

function sub_ca420b59(?) payable {
    require calldata.size - 4 >= 32
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1].field_0:
            if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_0):
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor7[arg1].field_8
        else:
            if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                revert with 0, 34
            if stor7[arg1].field_1:
                if 31 < stor7[arg1].field_1:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor7[arg1].field_8
        mem[ceil32(uint255(stor7[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor7[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor7[arg1].field_0) * 0.5) > uint255(stor7[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor7[arg1].field_0) * 0.5) + (uint255(stor7[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor7[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor7[arg1].field_0) * 0.5)]), 
    if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
        revert with 0, 34
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if 31 < uint255(stor7[arg1].field_0) * 0.5:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)])
            mem[128] = 256 * stor7[arg1].field_8
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 0, 34
        if stor7[arg1].field_1:
            if 31 < stor7[arg1].field_1:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)])
            mem[128] = 256 * stor7[arg1].field_8
    mem[ceil32(stor7[arg1].field_1) + 192 len ceil32(stor7[arg1].field_1)] = mem[128 len ceil32(stor7[arg1].field_1)]
    if ceil32(stor7[arg1].field_1) > stor7[arg1].field_1:
        mem[ceil32(stor7[arg1].field_1) + stor7[arg1].field_1 + 192] = 0
    return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)], mem[(2 * ceil32(stor7[arg1].field_1)) + 192 len 2 * ceil32(stor7[arg1].field_1)]), 
}



}
