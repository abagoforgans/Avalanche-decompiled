contract main {




// =====================  Runtime code  =====================


#
#  - sub_136a31d9(?)
#  - setNickname(string arg1)
#  - sub_63ee1c92(?)
#  - sub_a48e1263(?)
#
address owner;
mapping of struct sub_0d386602;
mapping of struct sub_9c90ba49;
mapping of uint8 stor3;
address sub_2d3993c6Address;

function sub_0d386602(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0d386602[address(arg1)].field_0, sub_0d386602[address(arg1)].field_256, sub_0d386602[address(arg1)].field_40
}

function sub_2d3993c6(?) payable {
    return sub_2d3993c6Address
}

function sub_789895e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor3[arg1[all]])
}

function owner() payable {
    return owner
}

function sub_9c90ba49(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9c90ba49[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function sub_bca35404(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    sub_9c90ba49[msg.sender].field_0 = uint128(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_43dbefa5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2d3993c6Address = address(arg1)
}

function sub_2a0c8899(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 24 * 3600 > !sub_0d386602[address(arg1)].field_8:
        revert with 0, 17
    if sub_0d386602[address(arg1)].field_8 + (24 * 3600) > block.timestamp:
        return 0
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isRegistered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_0d386602[address(arg1)].field_0:
        return bool(sub_0d386602[address(arg1)].field_0)
    if sub_0d386602[address(arg1)].field_512:
        if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        return bool(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)
    if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
        revert with 0, 34
    return bool(sub_0d386602[address(arg1)].field_513)
}

function sub_6aa2afd5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_9c90ba49[msg.sender].field_256:
        if sub_9c90ba49[msg.sender].field_256 == uint255(sub_9c90ba49[msg.sender].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            sub_9c90ba49[msg.sender][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_9c90ba49[msg.sender].field_256 = 0
            idx = 0
            while (uint255(sub_9c90ba49[msg.sender].field_256) * 0.5) + 31 / 32 > idx:
                sub_9c90ba49[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_9c90ba49[msg.sender].field_256 == sub_9c90ba49[msg.sender].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            sub_9c90ba49[msg.sender][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_9c90ba49[msg.sender].field_256 = 0
            idx = 0
            while sub_9c90ba49[msg.sender].field_257 + 31 / 32 > idx:
                sub_9c90ba49[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_becedb08(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint128(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if sub_9c90ba49[address(msg.sender)].field_256:
        if sub_9c90ba49[address(msg.sender)].field_256 == uint255(sub_9c90ba49[address(msg.sender)].field_256) * 0.5 < 32:
            revert with 0, 34
    else:
        if sub_9c90ba49[address(msg.sender)].field_256 == sub_9c90ba49[address(msg.sender)].field_257 < 32:
            revert with 0, 34
    if sub_9c90ba49[address(msg.sender)].field_256:
        if sub_9c90ba49[address(msg.sender)].field_256 == uint255(sub_9c90ba49[address(msg.sender)].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_9c90ba49[address(msg.sender)].field_256):
            if 31 < uint255(sub_9c90ba49[address(msg.sender)].field_256) * 0.5:
                idx = ceil32(ceil32(arg2.length)) + 193
                s = 0
                while ceil32(ceil32(arg2.length)) + (uint255(sub_9c90ba49[address(msg.sender)].field_256) * 0.5) + 161 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(msg.sender)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_9c90ba49[address(msg.sender)].field_256 == sub_9c90ba49[address(msg.sender)].field_257 < 32:
            revert with 0, 34
        if sub_9c90ba49[address(msg.sender)].field_257:
            if 31 < sub_9c90ba49[address(msg.sender)].field_257:
                idx = ceil32(ceil32(arg2.length)) + 193
                s = 0
                while ceil32(ceil32(arg2.length)) + sub_9c90ba49[address(msg.sender)].field_257 + 161 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(msg.sender)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    sub_0d386602[address(msg.sender)].field_0 = 1
    sub_9c90ba49[address(msg.sender)].field_0 = uint128(arg1)
    if sub_9c90ba49[address(msg.sender)].field_256:
        if sub_9c90ba49[address(msg.sender)].field_256 == uint255(sub_9c90ba49[address(msg.sender)].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            sub_9c90ba49[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_9c90ba49[address(msg.sender)].field_256 = 0
            idx = 0
            while (uint255(sub_9c90ba49[address(msg.sender)].field_256) * 0.5) + 31 / 32 > idx:
                sub_9c90ba49[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_9c90ba49[address(msg.sender)].field_256 == sub_9c90ba49[address(msg.sender)].field_257 < 32:
            revert with 0, 34
        if arg2.length:
            sub_9c90ba49[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_9c90ba49[address(msg.sender)].field_256 = 0
            idx = 0
            while sub_9c90ba49[address(msg.sender)].field_257 + 31 / 32 > idx:
                sub_9c90ba49[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_15cc2d76(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9c90ba49[arg1].field_256:
        if sub_9c90ba49[arg1].field_256 == uint255(sub_9c90ba49[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if sub_9c90ba49[arg1].field_256:
            if sub_9c90ba49[arg1].field_256 == uint255(sub_9c90ba49[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_9c90ba49[arg1].field_256):
                if 31 >= uint255(sub_9c90ba49[arg1].field_256) * 0.5:
                    mem[128] = 256 * sub_9c90ba49[arg1].field_264
                else:
                    mem[128] = sub_9c90ba49[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_9c90ba49[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_9c90ba49[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_9c90ba49[arg1].field_256 == sub_9c90ba49[arg1].field_257 < 32:
                revert with 0, 34
            if sub_9c90ba49[arg1].field_257:
                if 31 >= sub_9c90ba49[arg1].field_257:
                    mem[128] = 256 * sub_9c90ba49[arg1].field_264
                else:
                    mem[128] = sub_9c90ba49[arg1][1].field_0
                    idx = 128
                    s = 0
                    while sub_9c90ba49[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = sub_9c90ba49[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_9c90ba49[arg1].field_0, 
               Array(len=2 * Mask(256, -1, sub_9c90ba49[arg1].field_256), data=mem[128 len ceil32(uint255(sub_9c90ba49[arg1].field_256) * 0.5)])
    if sub_9c90ba49[arg1].field_256 == sub_9c90ba49[arg1].field_257 < 32:
        revert with 0, 34
    if sub_9c90ba49[arg1].field_256:
        if sub_9c90ba49[arg1].field_256 == uint255(sub_9c90ba49[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_9c90ba49[arg1].field_256):
            if 31 >= uint255(sub_9c90ba49[arg1].field_256) * 0.5:
                mem[128] = 256 * sub_9c90ba49[arg1].field_264
            else:
                mem[128] = sub_9c90ba49[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(sub_9c90ba49[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_9c90ba49[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_9c90ba49[arg1].field_256 == sub_9c90ba49[arg1].field_257 < 32:
            revert with 0, 34
        if sub_9c90ba49[arg1].field_257:
            if 31 >= sub_9c90ba49[arg1].field_257:
                mem[128] = 256 * sub_9c90ba49[arg1].field_264
            else:
                mem[128] = sub_9c90ba49[arg1][1].field_0
                idx = 128
                s = 0
                while sub_9c90ba49[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = sub_9c90ba49[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_9c90ba49[arg1].field_0, 
           Array(len=sub_9c90ba49[arg1].field_256, data=mem[128 len ceil32(sub_9c90ba49[arg1].field_257)])
}

function profiles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_0d386602[arg1].field_512:
        if sub_0d386602[arg1].field_512 == uint255(sub_0d386602[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if sub_0d386602[arg1].field_512:
            if sub_0d386602[arg1].field_512 == uint255(sub_0d386602[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_0d386602[arg1].field_512):
                if 31 >= uint255(sub_0d386602[arg1].field_512) * 0.5:
                    mem[128] = 256 * sub_0d386602[arg1].field_520
                else:
                    mem[128] = sub_0d386602[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_0d386602[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_0d386602[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_0d386602[arg1].field_512 == sub_0d386602[arg1].field_513 < 32:
                revert with 0, 34
            if sub_0d386602[arg1].field_513:
                if 31 >= sub_0d386602[arg1].field_513:
                    mem[128] = 256 * sub_0d386602[arg1].field_520
                else:
                    mem[128] = sub_0d386602[arg1][2].field_0
                    idx = 128
                    s = 0
                    while sub_0d386602[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = sub_0d386602[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_0d386602[arg1].field_0, 
               sub_0d386602[arg1].field_0,
               sub_0d386602[arg1].field_0,
               sub_0d386602[arg1].field_256,
               Array(len=2 * Mask(256, -1, sub_0d386602[arg1].field_512), data=mem[128 len ceil32(uint255(sub_0d386602[arg1].field_512) * 0.5)])
    if sub_0d386602[arg1].field_512 == sub_0d386602[arg1].field_513 < 32:
        revert with 0, 34
    if sub_0d386602[arg1].field_512:
        if sub_0d386602[arg1].field_512 == uint255(sub_0d386602[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_0d386602[arg1].field_512):
            if 31 >= uint255(sub_0d386602[arg1].field_512) * 0.5:
                mem[128] = 256 * sub_0d386602[arg1].field_520
            else:
                mem[128] = sub_0d386602[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(sub_0d386602[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_0d386602[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_0d386602[arg1].field_512 == sub_0d386602[arg1].field_513 < 32:
            revert with 0, 34
        if sub_0d386602[arg1].field_513:
            if 31 >= sub_0d386602[arg1].field_513:
                mem[128] = 256 * sub_0d386602[arg1].field_520
            else:
                mem[128] = sub_0d386602[arg1][2].field_0
                idx = 128
                s = 0
                while sub_0d386602[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = sub_0d386602[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_0d386602[arg1].field_0, 
           sub_0d386602[arg1].field_0,
           sub_0d386602[arg1].field_0,
           sub_0d386602[arg1].field_256,
           Array(len=sub_0d386602[arg1].field_512, data=mem[128 len ceil32(sub_0d386602[arg1].field_513)])
}

function sub_e530dd03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9c90ba49[address(arg1)].field_256:
        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        if sub_9c90ba49[address(arg1)].field_256:
            if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                if 31 < uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                    mem[128] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256), data=mem[128 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]), 
                mem[128] = 256 * sub_9c90ba49[address(arg1)].field_264
        else:
            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                revert with 0, 34
            if sub_9c90ba49[address(arg1)].field_257:
                if 31 < sub_9c90ba49[address(arg1)].field_257:
                    mem[128] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while sub_9c90ba49[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256), data=mem[128 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]), 
                mem[128] = 256 * sub_9c90ba49[address(arg1)].field_264
        mem[ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 192 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
            mem[ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256), data=mem[128 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)) + 192 len 2 * ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]), 
    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
        revert with 0, 34
    if sub_9c90ba49[address(arg1)].field_256:
        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
            if 31 < uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                mem[128] = sub_9c90ba49[address(arg1)][1].field_0
                idx = 128
                s = 0
                while (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_9c90ba49[address(arg1)].field_256, data=mem[128 len ceil32(sub_9c90ba49[address(arg1)].field_257)])
            mem[128] = 256 * sub_9c90ba49[address(arg1)].field_264
    else:
        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
            revert with 0, 34
        if sub_9c90ba49[address(arg1)].field_257:
            if 31 < sub_9c90ba49[address(arg1)].field_257:
                mem[128] = sub_9c90ba49[address(arg1)][1].field_0
                idx = 128
                s = 0
                while sub_9c90ba49[address(arg1)].field_257 + 96 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_9c90ba49[address(arg1)].field_256, data=mem[128 len ceil32(sub_9c90ba49[address(arg1)].field_257)])
            mem[128] = 256 * sub_9c90ba49[address(arg1)].field_264
    mem[ceil32(sub_9c90ba49[address(arg1)].field_257) + 192 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[128 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
        mem[ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 192] = 0
    return Array(len=sub_9c90ba49[address(arg1)].field_256, data=mem[128 len ceil32(sub_9c90ba49[address(arg1)].field_257)], mem[(2 * ceil32(sub_9c90ba49[address(arg1)].field_257)) + 192 len 2 * ceil32(sub_9c90ba49[address(arg1)].field_257)]), 
}

function sub_ecd01595(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_0d386602[address(arg1)].field_512:
        if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if sub_0d386602[address(arg1)].field_512:
            if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_0d386602[address(arg1)].field_512):
                if 31 < uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                    mem[128] = sub_0d386602[address(arg1)][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512), data=mem[128 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)]), 
                mem[128] = 256 * sub_0d386602[address(arg1)].field_520
        else:
            if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
                revert with 0, 34
            if sub_0d386602[address(arg1)].field_513:
                if 31 < sub_0d386602[address(arg1)].field_513:
                    mem[128] = sub_0d386602[address(arg1)][2].field_0
                    idx = 128
                    s = 0
                    while sub_0d386602[address(arg1)].field_513 + 96 > idx:
                        mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512), data=mem[128 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)]), 
                mem[128] = 256 * sub_0d386602[address(arg1)].field_520
        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 192 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)] = mem[128 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)]
        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512), data=mem[128 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)], mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + 192 len 2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)]), 
    if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
        revert with 0, 34
    if sub_0d386602[address(arg1)].field_512:
        if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_0d386602[address(arg1)].field_512):
            if 31 < uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                mem[128] = sub_0d386602[address(arg1)][2].field_0
                idx = 128
                s = 0
                while (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_0d386602[address(arg1)].field_512, data=mem[128 len ceil32(sub_0d386602[address(arg1)].field_513)])
            mem[128] = 256 * sub_0d386602[address(arg1)].field_520
    else:
        if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
            revert with 0, 34
        if sub_0d386602[address(arg1)].field_513:
            if 31 < sub_0d386602[address(arg1)].field_513:
                mem[128] = sub_0d386602[address(arg1)][2].field_0
                idx = 128
                s = 0
                while sub_0d386602[address(arg1)].field_513 + 96 > idx:
                    mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_0d386602[address(arg1)].field_512, data=mem[128 len ceil32(sub_0d386602[address(arg1)].field_513)])
            mem[128] = 256 * sub_0d386602[address(arg1)].field_520
    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 192 len ceil32(sub_0d386602[address(arg1)].field_513)] = mem[128 len ceil32(sub_0d386602[address(arg1)].field_513)]
    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
        mem[ceil32(sub_0d386602[address(arg1)].field_513) + sub_0d386602[address(arg1)].field_513 + 192] = 0
    return Array(len=sub_0d386602[address(arg1)].field_512, data=mem[128 len ceil32(sub_0d386602[address(arg1)].field_513)], mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + 192 len 2 * ceil32(sub_0d386602[address(arg1)].field_513)]), 
}

function sub_576bf27c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        if not sub_0d386602[address(msg.sender)].field_512:
            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                revert with 0, 34
            if sub_0d386602[address(msg.sender)].field_512:
                if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                else:
                    if 31 >= uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                        mem[ceil32(return_data.size) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    else:
                        mem[ceil32(return_data.size) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = ceil32(return_data.size) + 288
                        s = 0
                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
            else:
                if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                    revert with 0, 34
                if not sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                else:
                    if 31 >= sub_0d386602[address(msg.sender)].field_513:
                        mem[ceil32(return_data.size) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    else:
                        mem[ceil32(return_data.size) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = ceil32(return_data.size) + 288
                        s = 0
                        while ceil32(return_data.size) + sub_0d386602[address(msg.sender)].field_513 + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
            sub_0d386602[address(msg.sender)].field_40 = address(arg1)
            sub_0d386602[address(msg.sender)].field_256 = arg2
            if sub_0d386602[address(msg.sender)].field_512:
                if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)][2][].field_0 = Array(len=sub_0d386602[address(msg.sender)].field_513, data=mem[ceil32(return_data.size) + 288 len sub_0d386602[address(msg.sender)].field_513])
                else:
                    sub_0d386602[address(msg.sender)].field_512 = 0
                    idx = 0
                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                    revert with 0, 34
                if sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)][2][].field_0 = Array(len=sub_0d386602[address(msg.sender)].field_513, data=mem[ceil32(return_data.size) + 288 len sub_0d386602[address(msg.sender)].field_513])
                else:
                    sub_0d386602[address(msg.sender)].field_512 = 0
                    idx = 0
                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                revert with 0, 34
            if sub_0d386602[address(msg.sender)].field_512:
                if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                    sub_0d386602[address(msg.sender)].field_256 = arg2
                    if sub_0d386602[address(msg.sender)].field_512:
                        if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 288
                                    while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 288
                                    while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                        mem[ceil32(return_data.size) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[ceil32(return_data.size) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = ceil32(return_data.size) + 288
                        s = 0
                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                    revert with 0, 34
                if not sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                    sub_0d386602[address(msg.sender)].field_256 = arg2
                    if sub_0d386602[address(msg.sender)].field_512:
                        if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 288
                                    while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 288
                                    while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= sub_0d386602[address(msg.sender)].field_513:
                        mem[ceil32(return_data.size) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[ceil32(return_data.size) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = ceil32(return_data.size) + 288
                        s = 0
                        while ceil32(return_data.size) + sub_0d386602[address(msg.sender)].field_513 + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 288
                                        while ceil32(return_data.size) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[ceil32(return_data.size) + 288 len 31]
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
    else:
        require ext_code.size(sub_2d3993c6Address)
        staticcall sub_2d3993c6Address.0xd9eec881 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg1) != ext_call.return_data[12 len 20]:
            revert with 0, 'NFT token does not belong to user'
        mem[(2 * ceil32(return_data.size)) + 100] = arg2
        require ext_code.size(sub_2d3993c6Address)
        staticcall sub_2d3993c6Address.0x9915fc80 with:
                gas gas_remaining wei
               args arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'NFT token does not belong to user'
        if not sub_0d386602[address(msg.sender)].field_512:
            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                revert with 0, 34
            if sub_0d386602[address(msg.sender)].field_512:
                if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                else:
                    if 31 >= uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                        mem[(4 * ceil32(return_data.size)) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    else:
                        mem[(4 * ceil32(return_data.size)) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = (4 * ceil32(return_data.size)) + 288
                        s = 0
                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
            else:
                if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                    revert with 0, 34
                if not sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                else:
                    if 31 >= sub_0d386602[address(msg.sender)].field_513:
                        mem[(4 * ceil32(return_data.size)) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    else:
                        mem[(4 * ceil32(return_data.size)) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = (4 * ceil32(return_data.size)) + 288
                        s = 0
                        while (4 * ceil32(return_data.size)) + sub_0d386602[address(msg.sender)].field_513 + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
            sub_0d386602[address(msg.sender)].field_40 = address(arg1)
            sub_0d386602[address(msg.sender)].field_256 = arg2
            if sub_0d386602[address(msg.sender)].field_512:
                if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)][2][].field_0 = Array(len=sub_0d386602[address(msg.sender)].field_513, data=mem[(4 * ceil32(return_data.size)) + 288 len sub_0d386602[address(msg.sender)].field_513])
                else:
                    sub_0d386602[address(msg.sender)].field_512 = 0
                    idx = 0
                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                    revert with 0, 34
                if sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)][2][].field_0 = Array(len=sub_0d386602[address(msg.sender)].field_513, data=mem[(4 * ceil32(return_data.size)) + 288 len sub_0d386602[address(msg.sender)].field_513])
                else:
                    sub_0d386602[address(msg.sender)].field_512 = 0
                    idx = 0
                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                revert with 0, 34
            if sub_0d386602[address(msg.sender)].field_512:
                if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                    sub_0d386602[address(msg.sender)].field_256 = arg2
                    if sub_0d386602[address(msg.sender)].field_512:
                        if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 288
                                    while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 288
                                    while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                        mem[(4 * ceil32(return_data.size)) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[(4 * ceil32(return_data.size)) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = (4 * ceil32(return_data.size)) + 288
                        s = 0
                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                    revert with 0, 34
                if not sub_0d386602[address(msg.sender)].field_513:
                    sub_0d386602[address(msg.sender)].field_0 = 2
                    sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                    sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                    sub_0d386602[address(msg.sender)].field_256 = arg2
                    if sub_0d386602[address(msg.sender)].field_512:
                        if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 288
                                    while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                            revert with 0, 34
                        if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                            sub_0d386602[address(msg.sender)].field_512 = 0
                            idx = 0
                            while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 288
                                    while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                        sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= sub_0d386602[address(msg.sender)].field_513:
                        mem[(4 * ceil32(return_data.size)) + 288] = 256 * sub_0d386602[address(msg.sender)].field_520
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_8
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = sub_0d386602[address(msg.sender)].field_520
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[(4 * ceil32(return_data.size)) + 288] = sub_0d386602[address(msg.sender)][2].field_0
                        idx = (4 * ceil32(return_data.size)) + 288
                        s = 0
                        while (4 * ceil32(return_data.size)) + sub_0d386602[address(msg.sender)].field_513 + 256 > idx:
                            mem[idx + 32] = sub_0d386602[address(msg.sender)][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        sub_0d386602[address(msg.sender)].field_0 = 2
                        sub_0d386602[address(msg.sender)].field_8 = sub_0d386602[address(msg.sender)].field_0
                        sub_0d386602[address(msg.sender)].field_40 = address(arg1)
                        sub_0d386602[address(msg.sender)].field_256 = arg2
                        if sub_0d386602[address(msg.sender)].field_512:
                            if sub_0d386602[address(msg.sender)].field_512 == uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                    idx = 0
                                    while (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if sub_0d386602[address(msg.sender)].field_512 == sub_0d386602[address(msg.sender)].field_513 < 32:
                                revert with 0, 34
                            if not uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                sub_0d386602[address(msg.sender)].field_512 = 0
                                idx = 0
                                while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                    sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5:
                                    sub_0d386602[address(msg.sender)].field_512 = Mask(254, 1, sub_0d386602[address(msg.sender)].field_512) + 1
                                    if not Mask(256, -1, sub_0d386602[address(msg.sender)].field_512):
                                        idx = 0
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 288
                                        while (4 * ceil32(return_data.size)) + (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 288 > idx:
                                            sub_0d386602[address(msg.sender)][s + 2].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(sub_0d386602[address(msg.sender)].field_512) * 0.5) + 31) >> 5
                                        while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                            sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    sub_0d386602[address(msg.sender)].field_512 = 0
                                    sub_0d386602[address(msg.sender)].field_513 = sub_0d386602[address(msg.sender)].field_513
                                    sub_0d386602[address(msg.sender)].field_520 = mem[(4 * ceil32(return_data.size)) + 288 len 31]
                                    idx = 0
                                    while sub_0d386602[address(msg.sender)].field_513 + 31 / 32 > idx:
                                        sub_0d386602[address(msg.sender)][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
}

function sub_424b25e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_0d386602[address(arg1)].field_512:
        if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if sub_0d386602[address(arg1)].field_512:
            if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_0d386602[address(arg1)].field_512):
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    return 64, 
                           ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                           mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                           mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                    s = 0
                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= sub_9c90ba49[address(arg1)].field_257:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                    s = 0
                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
            else:
                if 31 >= uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                    mem[512] = 256 * sub_0d386602[address(arg1)].field_520
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if sub_9c90ba49[address(arg1)].field_256:
                            if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        else:
                            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                                revert with 0, 34
                            if not sub_9c90ba49[address(arg1)].field_257:
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                else:
                    mem[512] = sub_0d386602[address(arg1)][2].field_0
                    idx = 512
                    s = 0
                    while (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 480 > idx:
                        mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if sub_9c90ba49[address(arg1)].field_256:
                            if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            else:
                                if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                else:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        else:
                            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                                revert with 0, 34
                            if not sub_9c90ba49[address(arg1)].field_257:
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            else:
                                if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                else:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        else:
                            if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        else:
                            if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
        else:
            if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
                revert with 0, 34
            if not sub_0d386602[address(arg1)].field_513:
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    return 64, 
                           ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                           mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                           mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                    s = 0
                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= sub_9c90ba49[address(arg1)].field_257:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                    s = 0
                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
            else:
                if 31 >= sub_0d386602[address(arg1)].field_513:
                    mem[512] = 256 * sub_0d386602[address(arg1)].field_520
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if sub_9c90ba49[address(arg1)].field_256:
                            if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        else:
                            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                                revert with 0, 34
                            if not sub_9c90ba49[address(arg1)].field_257:
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                                return 64, 
                                       ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_0,
                                       sub_0d386602[address(arg1)].field_256,
                                       160,
                                       2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                       mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                       sub_9c90ba49[address(arg1)].field_0,
                                       64,
                                       uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                       mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                            s = 0
                            while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                            return 64, 
                                   ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                                   mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   sub_9c90ba49[address(arg1)].field_257,
                                   mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                        s = 0
                        while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                        mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                else:
                    mem[512] = sub_0d386602[address(arg1)][2].field_0
                    idx = 512
                    s = 0
                    while sub_0d386602[address(arg1)].field_513 + 480 > idx:
                        mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if sub_9c90ba49[address(arg1)].field_256:
                            if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            else:
                                if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                else:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        else:
                            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                                revert with 0, 34
                            if not sub_9c90ba49[address(arg1)].field_257:
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            else:
                                if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                                else:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                    idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                    s = 0
                                    while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                    mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                    mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
                               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        else:
                            if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        else:
                            if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608
                                s = 0
                                while ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) > uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                                mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + ceil32(sub_9c90ba49[address(arg1)].field_257) + (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 864] = 0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                            mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                                mem[(2 * ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
        return 64, 
               ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 256,
               sub_0d386602[address(arg1)].field_0,
               sub_0d386602[address(arg1)].field_0,
               sub_0d386602[address(arg1)].field_0,
               sub_0d386602[address(arg1)].field_256,
               160,
               2 * Mask(256, -1, sub_0d386602[address(arg1)].field_512),
               mem[512 len ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5)],
               sub_9c90ba49[address(arg1)].field_0,
               64,
               sub_9c90ba49[address(arg1)].field_256,
               mem[ceil32(uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
    if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
        revert with 0, 34
    if sub_0d386602[address(arg1)].field_512:
        if sub_0d386602[address(arg1)].field_512 == uint255(sub_0d386602[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, sub_0d386602[address(arg1)].field_512):
            if sub_9c90ba49[address(arg1)].field_256:
                if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if 31 >= sub_9c90ba49[address(arg1)].field_257:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                return 64, 
                       ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                       sub_0d386602[address(arg1)].field_0,
                       sub_0d386602[address(arg1)].field_0,
                       sub_0d386602[address(arg1)].field_0,
                       sub_0d386602[address(arg1)].field_256,
                       160,
                       sub_0d386602[address(arg1)].field_512,
                       mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                       sub_9c90ba49[address(arg1)].field_0,
                       64,
                       2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                       mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                revert with 0, 34
            if sub_9c90ba49[address(arg1)].field_256:
                if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                s = 0
                while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if not sub_9c90ba49[address(arg1)].field_257:
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if 31 >= sub_9c90ba49[address(arg1)].field_257:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                s = 0
                while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
        else:
            if 31 >= uint255(sub_0d386602[address(arg1)].field_512) * 0.5:
                mem[512] = 256 * sub_0d386602[address(arg1)].field_520
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                        s = 0
                        while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                        s = 0
                        while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= sub_9c90ba49[address(arg1)].field_257:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
            else:
                mem[512] = sub_0d386602[address(arg1)][2].field_0
                idx = 512
                s = 0
                while (uint255(sub_0d386602[address(arg1)].field_512) * 0.5) + 480 > idx:
                    mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        else:
                            if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                                s = 0
                                while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        else:
                            if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                                s = 0
                                while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    else:
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        else:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                            s = 0
                            while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    else:
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        else:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                            s = 0
                            while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
    else:
        if sub_0d386602[address(arg1)].field_512 == sub_0d386602[address(arg1)].field_513 < 32:
            revert with 0, 34
        if not sub_0d386602[address(arg1)].field_513:
            if sub_9c90ba49[address(arg1)].field_256:
                if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if 31 >= sub_9c90ba49[address(arg1)].field_257:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                return 64, 
                       ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                       sub_0d386602[address(arg1)].field_0,
                       sub_0d386602[address(arg1)].field_0,
                       sub_0d386602[address(arg1)].field_0,
                       sub_0d386602[address(arg1)].field_256,
                       160,
                       sub_0d386602[address(arg1)].field_512,
                       mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                       sub_9c90ba49[address(arg1)].field_0,
                       64,
                       2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                       mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
            if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                revert with 0, 34
            if sub_9c90ba49[address(arg1)].field_256:
                if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                s = 0
                while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if not sub_9c90ba49[address(arg1)].field_257:
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if 31 >= sub_9c90ba49[address(arg1)].field_257:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           sub_9c90ba49[address(arg1)].field_257,
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                s = 0
                while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
            if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
        else:
            if 31 >= sub_0d386602[address(arg1)].field_513:
                mem[512] = 256 * sub_0d386602[address(arg1)].field_520
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                        s = 0
                        while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                            return 64, 
                                   ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_0,
                                   sub_0d386602[address(arg1)].field_256,
                                   160,
                                   sub_0d386602[address(arg1)].field_512,
                                   mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                                   sub_9c90ba49[address(arg1)].field_0,
                                   64,
                                   uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5,
                                   mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                        idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                        s = 0
                        while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                            mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    if 31 >= sub_9c90ba49[address(arg1)].field_257:
                        mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                        return 64, 
                               ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_0,
                               sub_0d386602[address(arg1)].field_256,
                               160,
                               sub_0d386602[address(arg1)].field_512,
                               mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                               sub_9c90ba49[address(arg1)].field_0,
                               64,
                               sub_9c90ba49[address(arg1)].field_257,
                               mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                    idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                    s = 0
                    while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                        mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                    mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                    mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
            else:
                mem[512] = sub_0d386602[address(arg1)][2].field_0
                idx = 512
                s = 0
                while sub_0d386602[address(arg1)].field_513 + 480 > idx:
                    mem[idx + 32] = sub_0d386602[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_9c90ba49[address(arg1)].field_256:
                        if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        else:
                            if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                                s = 0
                                while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    else:
                        if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                            revert with 0, 34
                        if not sub_9c90ba49[address(arg1)].field_257:
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                        else:
                            if 31 >= sub_9c90ba49[address(arg1)].field_257:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                            else:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                                idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                                s = 0
                                while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                    mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                                mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 864] = sub_9c90ba49[address(arg1)].field_0
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 896] = 64
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 928] = uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                            if ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) > uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                                mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 960] = 0
                    return 64, 
                           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_0,
                           sub_0d386602[address(arg1)].field_256,
                           160,
                           sub_0d386602[address(arg1)].field_512,
                           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
                           sub_9c90ba49[address(arg1)].field_0,
                           64,
                           2 * Mask(256, -1, sub_9c90ba49[address(arg1)].field_256),
                           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5)]
                if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if sub_9c90ba49[address(arg1)].field_256:
                    if sub_9c90ba49[address(arg1)].field_256 == uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_9c90ba49[address(arg1)].field_256):
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    else:
                        if 31 >= uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        else:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                            s = 0
                            while ceil32(sub_0d386602[address(arg1)].field_513) + (uint255(sub_9c90ba49[address(arg1)].field_256) * 0.5) + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                else:
                    if sub_9c90ba49[address(arg1)].field_256 == sub_9c90ba49[address(arg1)].field_257 < 32:
                        revert with 0, 34
                    if not sub_9c90ba49[address(arg1)].field_257:
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
                    else:
                        if 31 >= sub_9c90ba49[address(arg1)].field_257:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = 256 * sub_9c90ba49[address(arg1)].field_264
                        else:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608] = sub_9c90ba49[address(arg1)][1].field_0
                            idx = ceil32(sub_0d386602[address(arg1)].field_513) + 608
                            s = 0
                            while ceil32(sub_0d386602[address(arg1)].field_513) + sub_9c90ba49[address(arg1)].field_257 + 576 > idx:
                                mem[idx + 32] = sub_9c90ba49[address(arg1)][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_0d386602[address(arg1)].field_513) > sub_0d386602[address(arg1)].field_513:
                            mem[ceil32(sub_0d386602[address(arg1)].field_513) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_0d386602[address(arg1)].field_513 + 864] = 0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 864] = sub_9c90ba49[address(arg1)].field_0
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 896] = 64
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 928] = sub_9c90ba49[address(arg1)].field_257
                        mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + 960 len ceil32(sub_9c90ba49[address(arg1)].field_257)] = mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
                        if ceil32(sub_9c90ba49[address(arg1)].field_257) > sub_9c90ba49[address(arg1)].field_257:
                            mem[(2 * ceil32(sub_0d386602[address(arg1)].field_513)) + ceil32(sub_9c90ba49[address(arg1)].field_257) + sub_9c90ba49[address(arg1)].field_257 + 960] = 0
    return 64, 
           ceil32(sub_0d386602[address(arg1)].field_513) + 256,
           sub_0d386602[address(arg1)].field_0,
           sub_0d386602[address(arg1)].field_0,
           sub_0d386602[address(arg1)].field_0,
           sub_0d386602[address(arg1)].field_256,
           160,
           sub_0d386602[address(arg1)].field_512,
           mem[512 len ceil32(sub_0d386602[address(arg1)].field_513)],
           sub_9c90ba49[address(arg1)].field_0,
           64,
           sub_9c90ba49[address(arg1)].field_256,
           mem[ceil32(sub_0d386602[address(arg1)].field_513) + 608 len ceil32(sub_9c90ba49[address(arg1)].field_257)]
}



}
