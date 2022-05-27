contract main {




// =====================  Runtime code  =====================


#
#  - sub_f6a7fc36(?)
#
address owner;
uint256 sub_c38b72f2;
array of struct stor2;
array of struct stor3;
array of struct stor4;
mapping of uint256 sub_c48098e2;
mapping of struct sub_e28f3429;
array of uint256 sub_ab923e7d;
mapping of uint256 sub_06a090cb;
mapping of uint256 sub_ef0fbd4c;

function sub_06a090cb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_06a090cb[arg1]
}

function getOwner() {
    return owner
}

function sub_ab923e7d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_ab923e7d[arg1]
    return sub_ab923e7d[arg1][arg2]
}

function sub_c38b72f2(?) {
    return sub_c38b72f2
}

function sub_c48098e2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c48098e2[arg1]
}

function sub_e28f3429(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e28f3429[arg1].field_0, 
           sub_e28f3429[arg1].field_256,
           sub_e28f3429[arg1].field_512,
           sub_e28f3429[arg1].field_768,
           sub_e28f3429[arg1].field_1024
}

function sub_ef0fbd4c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ef0fbd4c[arg1]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_be558e26(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if sub_e28f3429[arg1].field_512 != msg.sender:
        revert with 0, 'changeKey: unauthorized'
    if not sub_e28f3429[arg1].field_768:
        revert with 0, 'verify: Set key first'
    if arg2.length <= 0:
        revert with 0, 'verify: Key required'
    if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sub_e28f3429[arg1].field_768:
        revert with 0, 'verify: Key incorrect'
    if sha3(None) == sha3(None):
        revert with 0, 'changeKey: provide a new key'
    sub_e28f3429[arg1].field_256 = sub_e28f3429[arg1].field_256
    sub_e28f3429[arg1].field_512 = sub_e28f3429[arg1].field_512
    sub_e28f3429[arg1].field_768 = arg3
    emit 0xf79285d3: sub_e28f3429[arg1].field_0, sub_e28f3429[arg1].field_256, sub_e28f3429[arg1].field_512, arg3, sub_e28f3429[arg1].field_1024
    return sub_e28f3429[arg1].field_0, 
           sub_e28f3429[arg1].field_256,
           sub_e28f3429[arg1].field_512,
           arg3,
           sub_e28f3429[arg1].field_1024
}

function sub_bf9ecff8(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not sub_e28f3429[arg1].field_768:
        revert with 0, 'verify: Set key first'
    if arg2.length <= 0:
        revert with 0, 'verify: Key required'
    if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sub_e28f3429[arg1].field_768:
        revert with 0, 'verify: Key incorrect'
    if sub_e28f3429[arg1].field_512 != msg.sender:
        revert with 0, 'withdrawAll: unauthorized'
    if sub_e28f3429[arg1].field_1024 <= 0:
        revert with 0, 'withdrawAll: nothing to withdraw'
    if not sub_e28f3429[arg1].field_256:
        call sub_e28f3429[arg1].field_512 with:
           value sub_e28f3429[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_e28f3429[arg1].field_256)
        call sub_e28f3429[arg1].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_e28f3429[arg1].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_c48098e2[stor6[arg1].field_256] < sub_e28f3429[arg1].field_1024:
        revert with 'NH{q', 17
    sub_c48098e2[stor6[arg1].field_256] -= sub_e28f3429[arg1].field_1024
    sub_e28f3429[arg1].field_256 = sub_e28f3429[arg1].field_256
    sub_e28f3429[arg1].field_512 = sub_e28f3429[arg1].field_512
    sub_e28f3429[arg1].field_1024 = 0
    if not sub_ef0fbd4c[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_ef0fbd4c[address(msg.sender)]--
    emit 0xd65a71b5: sub_e28f3429[arg1].field_0, sub_e28f3429[arg1].field_256, sub_e28f3429[arg1].field_512, sub_e28f3429[arg1].field_768, 0
}

function sub_7b98afcd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if not address(arg2):
        if msg.value <= 0:
            revert with 0, 'deposit: value required'
        if sub_c48098e2[address(arg2)] > -msg.value - 1:
            revert with 'NH{q', 17
        sub_c48098e2[address(arg2)] += msg.value
        if msg.value <= 0:
            revert with 0, 'deposit: can't deposit 0'
        if sub_c38b72f2 > -2:
            revert with 'NH{q', 17
        sub_c38b72f2++
        sub_e28f3429[stor1 + 1].field_0 = sub_c38b72f2 + 1
        sub_e28f3429[stor1 + 1].field_256 = address(arg2)
        sub_e28f3429[stor1 + 1].field_512 = msg.sender
        sub_e28f3429[stor1 + 1].field_768 = arg3
        sub_e28f3429[stor1 + 1].field_1024 = msg.value
        sub_ab923e7d[address(msg.sender)]++
        sub_ab923e7d[address(msg.sender)][sub_ab923e7d[address(msg.sender)]] = sub_c38b72f2 + 1
        if sub_06a090cb[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        sub_06a090cb[address(msg.sender)]++
        if sub_ef0fbd4c[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        sub_ef0fbd4c[address(msg.sender)]++
        emit 0xd3abbe47: sub_c38b72f2 + 1, address(arg2), msg.sender, arg3, msg.value
    else:
        if arg1 <= 0:
            revert with 0, 'deposit: value required'
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'deposit: value exceeds balance'
        require ext_code.size(address(arg2))
        call address(arg2).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_c48098e2[address(arg2)] > -arg1 - 1:
            revert with 'NH{q', 17
        sub_c48098e2[address(arg2)] += arg1
        if arg1 <= 0:
            revert with 0, 'deposit: can't deposit 0'
        if sub_c38b72f2 > -2:
            revert with 'NH{q', 17
        sub_c38b72f2++
        sub_e28f3429[stor1 + 1].field_0 = sub_c38b72f2 + 1
        sub_e28f3429[stor1 + 1].field_256 = address(arg2)
        sub_e28f3429[stor1 + 1].field_512 = msg.sender
        sub_e28f3429[stor1 + 1].field_768 = arg3
        sub_e28f3429[stor1 + 1].field_1024 = arg1
        sub_ab923e7d[address(msg.sender)]++
        sub_ab923e7d[address(msg.sender)][sub_ab923e7d[address(msg.sender)]] = sub_c38b72f2 + 1
        if sub_06a090cb[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        sub_06a090cb[address(msg.sender)]++
        if sub_ef0fbd4c[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        sub_ef0fbd4c[address(msg.sender)]++
        emit 0xd3abbe47: sub_c38b72f2 + 1, address(arg2), msg.sender, arg3, arg1
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function version() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}



}
