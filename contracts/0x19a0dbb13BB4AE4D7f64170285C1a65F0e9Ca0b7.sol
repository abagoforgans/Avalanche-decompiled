contract main {




// =====================  Runtime code  =====================


address owner;
address sub_509e21b9Address;
array of struct stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;
mapping of uint8 stor6;
mapping of struct stor7;

function sub_226d3014(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function sub_509e21b9(?) payable {
    return sub_509e21b9Address
}

function owner() payable {
    return owner
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

function sub_0582b8e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_509e21b9Address = address(arg1)
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

function sub_311824b4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_509e21b9Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Contests Factory Contract can do this!'
    stor3[address(arg1)].field_0++
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = address(arg2)
    stor2.length++
    stor2[stor2.length].field_0 = address(arg2)
    stor6[address(arg2)] = 1
}

function sub_a140d699(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'Only Our Contests can do this!'
    if bool(stor6[address(arg2)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contest address was not generated by Contests Factory'
    stor5[address(arg1)].field_0++
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = address(arg2)
}

function sub_e969c286(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'Only Our Contests can do this!'
    if bool(stor6[address(arg2)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contest address was not generated by Contests Factory'
    stor4[address(arg1)].field_0++
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 = address(arg2)
}

function sub_a4ff26ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5[address(arg1)].field_0:
        mem[128] = stor5[address(arg1)].field_0
        if (32 * stor5[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor5[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor5[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor5[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor5[address(arg1)].field_0) + 160] = stor5[address(arg1)].field_0
    idx = 0
    s = (32 * stor5[address(arg1)].field_0) + 192
    t = 128
    while idx < stor5[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor5[address(arg1)].field_0) + 128
       len (96 * stor5[address(arg1)].field_0) + 64
}

function sub_f4a18698(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4[address(arg1)].field_0:
        mem[128] = stor4[address(arg1)].field_0
        if (32 * stor4[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor4[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor4[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor4[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
    idx = 0
    s = (32 * stor4[address(arg1)].field_0) + 192
    t = 128
    while idx < stor4[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor4[address(arg1)].field_0) + 128
       len (96 * stor4[address(arg1)].field_0) + 64
}

function sub_bc825e06(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = (32 * stor2.length) + 192
        t = 128
        while idx < stor2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
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

function sub_897d0cb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    if not stor3[address(arg1)].field_0:
        mem[(32 * stor3[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor3[address(arg1)].field_0) + 160] = stor3[address(arg1)].field_0
        idx = 0
        s = (32 * stor3[address(arg1)].field_0) + 192
        t = 128
        while idx < stor3[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3[address(arg1)].field_0) + 128
           len (96 * stor3[address(arg1)].field_0) + 64
    mem[128] = stor3[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor3[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor3[address(arg1)].field_0) + 160] = stor3[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor3[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3[address(arg1)].field_0) + -mem[64] + 192
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
